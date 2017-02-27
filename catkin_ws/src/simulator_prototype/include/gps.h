#ifndef GPS_H
#define GPS_H

#include <cmath>
#include <Eigen/Dense>
#include "ros/ros.h"
#include "geometry_msgs/Twist.h"

#define PI 3.14159265

using namespace Eigen;

class GPS{
	public:
		GPS();
		~GPS();
		// Receives the start position for the vessel.
		void receiveStartCoordinates(double latitute_start, double longitude_start);

		void publishData(Vector3d v_n);

		void setStepSize(double stepsize);
	private:
		// Latitude and longitude used for GPS position.
		double latitude, longitude, height, latitude_start, longitude_start;
		// Prime and meridian curvatures of earth
		double r_mer, r_prime;
		// WGS-84 parameters needed for transformation
		double r_e = 6378137;
		double e = 0.0818;
		double dt;
		// Cartesian coordinates, received from simulation of the vessel.
		double x_pos, y_pos;

		ros::NodeHandle gps_handle;
  		ros::Publisher gps_pub = gps_handle.advertise<geometry_msgs::Twist>("hil_sim/sensors/gps", 0);
		
		void updateCurvatures();

		// Uses the NED velocity received to calculate the change in GPS coordinates, and integrates to get the new GPS coordinates.
		void calculateGpsCoordinates(Vector3d v_n);
		

};

#endif