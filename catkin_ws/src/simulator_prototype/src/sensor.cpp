#include "sensor.h"

void Sensor::publishData(Vector6d nu_dot, Vector6d nu,
                         ros::Publisher imu_pub) {
  if(step == steps_per_data_output){
    step=0;
    geometry_msgs::Twist imuMessage;
    imuMessage.linear.x = nu_dot(0);
    imuMessage.linear.y = nu_dot(1);
    imuMessage.linear.z = nu_dot(2);
    imuMessage.angular.x = nu(3);
    imuMessage.angular.y = nu(4);
    imuMessage.angular.z = nu(5);
    imu_pub.publish(imuMessage);
  }
  step++; 
}

void Sensor::publishData(double u, double v, ros::Publisher speed_sensor_pub){
  if(step == steps_per_data_output){
    step=0;
    geometry_msgs::Twist speedSensorMessage;
    speedSensorMessage.linear.x = u;
    speedSensorMessage.linear.y = v;
    speed_sensor_pub.publish(speedSensorMessage);
  }
  step++;
}

void Sensor::publishData(Vector6d gps_position, Vector3d gps_info, ros::Publisher gps_pub) {
  if(step == steps_per_data_output){
    step=0;
    simulator_prototype::Gps gpsMessage;
    gpsMessage.header.stamp = ros::Time::now();
    gpsMessage.header.frame_id = "/gps";
    gpsMessage.latitude = gps_position(0)*(180/M_PI);
    gpsMessage.longitude = gps_position(1)*(180/M_PI);
    gpsMessage.altitude = gps_position(2);
    gpsMessage.track = gps_info(1);
    gpsMessage.speed = gps_info(0);
    gpsMessage.heading = gps_position(5);
    gpsMessage.headingRate = gps_info(2);
    gps_pub.publish(gpsMessage);
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