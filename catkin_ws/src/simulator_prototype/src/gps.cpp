#include "gps.h"

GPS::GPS() {}

GPS::~GPS() {}

void GPS::setCoordinates(double latitude_in, double longitude_in) {
  latitude = latitude_in*(M_PI/180);
  longitude = longitude_in*(M_PI/180);
  gps_position << latitude, longitude, 0, 0, 0, 0;
  solver.initializeSolver(dt);
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

Vector3d GPS::getSpeedAndTrack(Vector6d eta){
  Vector3d gpsData;
  double speed = sqrt(v_n(0)*v_n(0)+v_n(1)*v_n(1)+v_n(2)*v_n(2));
  double bearing = (180/M_PI)*atan2(v_n(1), v_n(0));
  if(bearing<0)
    bearing+=360;
  gpsData << speed, bearing, v_n(5)*180/M_PI;
  return gpsData;
}

void GPS::getHeading(Vector6d eta){
  double temp_heading = eta(5)*180/M_PI;
  while(temp_heading<0 || temp_heading > 360){
    if(temp_heading<0)
      temp_heading+=360;
    if(temp_heading>360){
      temp_heading-=360;
    }
  }
  heading=temp_heading;
}

void GPS::publishGpsData(Vector6d nu_n, Vector6d eta) {
  // Side 32 i Kalman-boka
  v_n=nu_n;
  getHeading(eta);
  Vector3d gps_data = getSpeedAndTrack(eta);
  updateCurvatures();
  calculateNextPosition();  
  gps_position(5)=heading;
  if(step == steps_per_data_output){
    step=0;
    simulator_prototype::Gps gpsMessage;
    gpsMessage.header.stamp = ros::Time::now();
    gpsMessage.header.frame_id = "/gps";
    gpsMessage.latitude = gps_position(0)*(180/M_PI);
    gpsMessage.longitude = gps_position(1)*(180/M_PI);
    gpsMessage.altitude = gps_position(2);
    gpsMessage.track = gps_data(1);
    gpsMessage.speed = gps_data(0);
    gpsMessage.heading = gps_position(5);
    gpsMessage.headingRate = gps_data(2);
    gps_pub.publish(gpsMessage);
  }
  step++;
}
