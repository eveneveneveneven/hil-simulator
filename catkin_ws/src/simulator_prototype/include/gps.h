#ifndef GPS_H
#define GPS_H

#include <cmath>
#include "sensor.h"
#include <Eigen/Dense>
#include "ros/ros.h"
#include "solver.h"

using namespace Eigen;

typedef Matrix<double, 6, 6> Matrix6d;

class GPS : public Sensor {
public:
  GPS();
  ~GPS();
  // Receives the start position for the vessel.
  void receiveStartCoordinates(double latitute_start, double longitude_start);

  void publishGpsData(Vector6d v_n);

private:
  // Latitude and longitude used for GPS position.
  long double latitude, longitude, height;
  // Prime and meridian curvatures of earth
  long double r_mer, r_prime;
  // WGS-84 parameters needed for transformation
  long double r_e = 6378137;
  long double e = 0.0818;

  ros::Publisher gps_pub =
      sensor_handle.advertise<geometry_msgs::Twist>("sensors/gps", 0);

  NumericalSolver solver;

  Matrix6d A;

  void updateCurvatures();

  void calculateNextPosition();

  void initializeSolver();

  Vector6d positionFunction(Vector6d position_in);

  Vector6d gps_position, v_n;


  // Uses the NED velocity received to calculate the change in GPS coordinates,
  // and integrates to get the new GPS coordinates.
};

#endif