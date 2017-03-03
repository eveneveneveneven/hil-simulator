#ifndef SENSOR_H
#define SENSOR_H

#include <cmath>
#include <Eigen/Dense>
#include "ros/ros.h"
#include "geometry_msgs/Twist.h"
#include "simulator_prototype/Gps.h"

using namespace Eigen;

typedef Matrix<double, 6, 1> Vector6d;

class Sensor {
public:
  void publishData(Vector6d v_n, Vector3d gps_info, ros::Publisher gps_pub);

  void publishData(double u, double v, ros::Publisher speed_sensor_pub);

  void publishData(Vector6d nu_dot, Vector6d nu, ros::Publisher imu_pub);

  void publishData(Vector6d nu, Vector6d eta,
                   ros::Publisher sensor_velocity_pub,
                   ros::Publisher sensor_position_pub);

  void setStepSize(double stepsize);

  void setFrequency(double _frequency);

  void setNoise();

  ros::NodeHandle sensor_handle;

  double dt, frequency, steps_per_data_output, step;
};

#endif