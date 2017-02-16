#include "imu.h"

IMU::IMU(){
	
}
IMU::~IMU(){
	
}
void IMU::publishData(Vector6d nu_dot, Vector6d nu){
	geometry_msgs::Twist imuMessage;
	imuMessage.linear.x = nu_dot(0);
	imuMessage.linear.y = nu_dot(1);
	imuMessage.linear.z = nu_dot(2);
	imuMessage.angular.x = nu(3);
	imuMessage.angular.y = nu(4);
	imuMessage.angular.z = nu(5);
	imu_pub.publish(imuMessage);
}
