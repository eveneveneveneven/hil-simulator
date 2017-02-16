#ifndef IMU_H
#define IMU_H

#include "ros/ros.h"
#include <Eigen/Dense>
#include "geometry_msgs/Twist.h"

using namespace Eigen;
typedef Matrix<double, 6, 1 > Vector6d;

class IMU{

	public:
		IMU();
		~IMU();

		// Publishes the IMU-data to a sensor-topic
		void publishData(Vector6d nu_dot, Vector6d nu);

		// Not used yet. Should be used to implement more realistic measurements, including noise. For now, there is no noise. 
		void setNoise();
	private:
		ros::NodeHandle imu_handle;
  		ros::Publisher imu_pub = imu_handle.advertise<geometry_msgs::Twist>("hil_sim/sensors/imu", 0);

};


#endif