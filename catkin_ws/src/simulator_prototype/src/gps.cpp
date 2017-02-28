#include "gps.h"

GPS::GPS() {}

GPS::~GPS() {}

void GPS::receiveStartCoordinates(double latitude_in, double longitude_in) {
  latitude_start = latitude_in;
  longitude_start = longitude_in;
}

void GPS::updateCurvatures() {
  r_mer =
      (r_e * (1 - e * e)) / pow(1 - e * e * sin(latitude) * sin(latitude), 1.5);
  r_prime = r_e / pow(1 - e * e * sin(latitude) * sin(latitude), 0.5);
}

void GPS::publishGpsData(Vector3d v_n) {
  // Side 32 i Kalman-boka
  updateCurvatures();
  Vector3d WgsVelocity;
  Matrix3d A;
  A << 1 / (r_mer + height), 0, 0, 0, 1 / ((r_prime + height) * cos(latitude)),
      0, 0, 0, -1;
  WgsVelocity = A * v_n;
  latitude += WgsVelocity(0) * dt;
  longitude += WgsVelocity(1) * dt;
  height += WgsVelocity(2) * dt;
  Vector3d gpsData;
  gpsData << latitude *(180 / PI), longitude * (180 / PI), height;
  publishData(gpsData, gps_pub);
}