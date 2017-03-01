#include "sensor.h"

void Sensor::publishData(Vector6d nu_dot, Vector6d nu,
                         ros::Publisher sensor_pub) {
  if(step == steps_per_data_output){
    step=0;
    geometry_msgs::Twist imuMessage;
    imuMessage.linear.x = nu_dot(0);
    imuMessage.linear.y = nu_dot(1);
    imuMessage.linear.z = nu_dot(2);
    imuMessage.angular.x = nu(3);
    imuMessage.angular.y = nu(4);
    imuMessage.angular.z = nu(5);
    sensor_pub.publish(imuMessage);
  }
  step++; 
}

void Sensor::publishData(Vector6d v_n, ros::Publisher sensor_pub) {
  if(step == steps_per_data_output){
    step=0;
    geometry_msgs::Twist gpsMessage;
    gpsMessage.linear.x = v_n(0)*(180/M_PI);
    gpsMessage.linear.y = v_n(1)*(180/M_PI);
    gpsMessage.linear.z = v_n(2);
    sensor_pub.publish(gpsMessage);
  }
  step++;
}

void Sensor::publishData(Vector6d nu, Vector6d eta,
                         ros::Publisher sensor_velocity_pub,
                         ros::Publisher sensor_position_pub) {

  if(step == steps_per_data_output){
    step = 0;
    geometry_msgs::Twist mruVelocityMessage;
    geometry_msgs::Twist mruPositionMessage;
    mruPositionMessage.linear.x = eta(0);
    mruPositionMessage.linear.y = eta(1);
    mruPositionMessage.linear.z = eta(2);
    mruPositionMessage.angular.x = eta(3);
    mruPositionMessage.angular.y = eta(4);
    mruPositionMessage.angular.z = eta(5);

    mruVelocityMessage.linear.x = nu(0);
    mruVelocityMessage.linear.y = nu(1);
    mruVelocityMessage.linear.z = nu(2);
    mruVelocityMessage.angular.x = nu(3);
    mruVelocityMessage.angular.y = nu(4);
    mruVelocityMessage.angular.z = nu(5);

    sensor_position_pub.publish(mruPositionMessage);
    sensor_velocity_pub.publish(mruVelocityMessage);
  }
  step++;  
}

void Sensor::setFrequency(double _frequency){
  frequency = _frequency;
  if(frequency>int(1/dt)){
    ROS_INFO("Illegal combination of stepsize and sensor output frequency found, lowering sensor output frequency.");
    steps_per_data_output = 1;
  }else{
    steps_per_data_output = int((1/dt)/frequency);
  }
  step=1;
}

void Sensor::setStepSize(double stepsize) { dt = stepsize; }