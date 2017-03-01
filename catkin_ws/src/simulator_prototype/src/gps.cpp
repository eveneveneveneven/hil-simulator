#include "gps.h"

GPS::GPS() {}

GPS::~GPS() {}

void GPS::receiveStartCoordinates(double latitude_in, double longitude_in) {
  latitude = latitude_in*(M_PI/180);
  longitude = longitude_in*(M_PI/180);
  gps_position << latitude, longitude, 0, 0, 0, 0;
  initializeSolver();
}

void GPS::updateCurvatures() {
  r_mer = (r_e * (1 - e * e)) / pow(1 - e * e * sin(latitude) * sin(latitude), 1.5);
  r_prime = r_e / pow(1 - e * e * sin(latitude) * sin(latitude), 0.5);
}

void GPS::calculateNextPosition(){
  A << 1 / (r_mer + height), 0, 0,0,0,0,
   0, 1 / ((r_prime + height) * cos(latitude)),0,0,0,0,
   0, 0, -1, 0,0,0,
   0,0,0,0,0,0,
   0,0,0,0,0,0,
   0,0,0,0,0,0;
  solver.k1v = solver.h*positionFunction(gps_position);
  solver.k2v = solver.h*positionFunction(gps_position + solver.a21*solver.k1v);
  solver.k3v = solver.h*positionFunction(gps_position + solver.a31*solver.k1v + solver.a32*solver.k2v);
  solver.k4v = solver.h*positionFunction(gps_position + solver.a41*solver.k1v + solver.a42*solver.k2v + solver.a43*solver.k3v);
  solver.k5v = solver.h*positionFunction(gps_position + solver.a51*solver.k1v + solver.a52*solver.k2v + solver.a53*solver.k3v + solver.a54*solver.k4v);
  solver.k6v = solver.h*positionFunction(gps_position + solver.a61*solver.k1v + solver.a62*solver.k2v + solver.a63*solver.k3v + solver.a64*solver.k4v + solver.a65*solver.k5v);
  solver.k7v = solver.h*positionFunction(gps_position + solver.a71*solver.k1v + solver.a73*solver.k3v + solver.a74*solver.k4v + solver.a75*solver.k5v + solver.a76*solver.k6v);
  gps_position = gps_position + solver.b11*solver.k1v + solver.b12*solver.k2v + solver.b13*solver.k3v + solver.b14*solver.k4v + solver.b15*solver.k5v + solver.b16*solver.k6v + solver.b17*solver.k7v;
}

Vector6d GPS::positionFunction(Vector6d gps_position_in){
  Vector6d gps_position_dot = A*v_n;
  return gps_position_dot;
}

void GPS::publishGpsData(Vector6d v_n_in) {
  // Side 32 i Kalman-boka
  v_n=v_n_in;
  updateCurvatures();
  calculateNextPosition();  
  publishData(gps_position, gps_pub);
}

void GPS::initializeSolver(){
  // For now this initializes an Ode45 solver, could be arranged to read solver from some Solver.yaml configuration file.
  solver.t = 0L;
  solver.h = dt;
  solver.a21 = 1.0L / 5L;
  solver.a31 = 3.0L / 40;
  solver.a32 = 9.0L / 40;
  solver.a41 = 44.0L / 45;
  solver.a42 = -56.0L / 15;
  solver.a43 = 32.0L / 9;
  solver.a51 = 19372.0L / 6561;
  solver.a52 = -25360.0L / 2187;
  solver.a53 = 64448.0L / 6561;
  solver.a54 = -212.0L / 729;
  solver.a61 = 9017.0L / 3168;
  solver.a62 = -355.0L / 33;
  solver.a63 = 46732.0L / 5247;
  solver.a64 = 49.0L / 176;
  solver.a65 = -5103.0L / 18656;
  solver.a71 = 35.0L / 384;
  solver.a72 = 0;
  solver.a73 = 500.0L / 1113;
  solver.a74 = 125.0L / 192;
  solver.a75 = -2187.0L / 6784;
  solver.a76 = 11.0L / 84;
  solver.c2 = 1.0L / 5;
  solver.c3 = 3.0L / 10;
  solver.c4 = 4.0L / 5;
  solver.c5 = 8.0L / 9;
  solver.c6 = 1.0L;
  solver.c7 = 1.0L;
  solver.b11 = 35.0L / 384;
  solver.b12 = 0.0L;
  solver.b13 = 500.0L / 1113;
  solver.b14 = 125.0L / 192;
  solver.b15 = -2187.0L / 6784;
  solver.b16 = 11.0L / 84;
  solver.b17 = 0.0L;
  solver.b21 = 5179.0L / 57600;
  solver.b22 = 0.0L;
  solver.b23 = 7571.0L / 16695;
  solver.b24 = 393.0L / 640;
  solver.b25 = -92097.0L / 339200;
  solver.b26 = 187.0L / 2100;
  solver.b27 = 1.0L / 40;
}