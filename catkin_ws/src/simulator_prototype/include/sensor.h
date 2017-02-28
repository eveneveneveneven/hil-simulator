#ifndef SENSOR_H
#define SENSOR_H

#include <cmath>
#include <Eigen/Dense>
#include "ros/ros.h"
#include "geometry_msgs/Twist.h"

using namespace Eigen;

#define PI 3.14159265

typedef Matrix<double, 6, 1> Vector6d;

class Sensor {
public:
  void publishData(Vector3d v_n, ros::Publisher sensor_pub);

  void publishData(Vector6d nu_dot, Vector6d nu, ros::Publisher sensor_pub);

  void publishData(Vector6d nu, Vector6d eta,
                   ros::Publisher sensor_velocity_pub,
                   ros::Publisher sensor_position_pub);

  void setStepSize(double stepsize);

  void setNoise();

  ros::NodeHandle sensor_handle;

  double dt;
};

#endif