#ifndef SPEED_H
#define SPEED_H

#include "sensor.h"
#include "ros/ros.h"

class SpeedSensor: public Sensor{
	public:
		SpeedSensor();
		~SpeedSensor();
		void publishSpeedSensorData(double u, double v);
	private:
		ros::Publisher speed_sensor_pub =
      sensor_handle.advertise<geometry_msgs::Twist>("sensors/speedSensor", 0);
};

#endif