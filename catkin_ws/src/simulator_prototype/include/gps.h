#ifndef GPS_H
#define GPS_H

#include <cmath>
#include "sensor.h"
#include <Eigen/Dense>
#include "ros/ros.h"

using namespace Eigen;

class GPS : public Sensor {
public:
  GPS();
  ~GPS();
  // Receives the start position for the vessel.
  void receiveStartCoordinates(double latitute_start, double longitude_start);

  void publishGpsData(Vector3d v_n);

private:
  // Latitude and longitude used for GPS position.
  double latitude, longitude, height, latitude_start, longitude_start;
  // Prime and meridian curvatures of earth
  double r_mer, r_prime;
  // WGS-84 parameters needed for transformation
  double r_e = 6378137;
  double e = 0.0818;
  // Cartesian coordinates, received from simulation of the vessel.
  double x_pos, y_pos;

  ros::Publisher gps_pub =
      sensor_handle.advertise<geometry_msgs::Twist>("sensors/gps", 0);

  void updateCurvatures();

  // Uses the NED velocity received to calculate the change in GPS coordinates,
  // and integrates to get the new GPS coordinates.
};

#endif