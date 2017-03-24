#ifndef ACTUATORMODEL_H
#define ACTUATORMODEL_H

#include "ros/ros.h"
#include <Eigen/Dense>
#include "geometry_msgs/Twist.h"
#include "simulator_prototype/ActuatorMessage.h"
#include <math.h>

using namespace Eigen;
typedef Matrix<double, 6, 1> Vector6d;
typedef Matrix<double, 3, 2> Matrix32;

class ActuatorModel{
public:
	ActuatorModel();
	~ActuatorModel();
	void initializeActuatorModel(double _K, double _T_alpha, double _T_beta, double _T_n, double _l_x_1, double _l_x_2, double _l_y_1, double _l_y_2, double _dt, double _n_max, double _n_min, double _alpha_max);
	void getForcesAndMoments(Vector6d &_tau_control);

private:
	// Thruster states
	double alpha_1, alpha_2, beta_1, beta_2, n_1, n_2;

	// Desired thruster states
	double n_1_ref, n_2_ref, alpha_1_ref, alpha_2_ref, beta_1_ref, beta_2_ref;

	// Thruster properties, including time constants and position
	double K, T_alpha, T_beta, T_n, l_x_1, l_x_2, l_y_1, l_y_2, n_min, n_max, alpha_max;

	// Step-time for solving the diff. equations, timer to ensure that when thrust_messages stop, the thrust is set to zero
	double dt, time_since_last_message;

	Vector6d tau_control;
	Matrix32 A;
	Matrix2d B;
	Vector2d N;

	void receiveForcesAndMoments(const geometry_msgs::Twist::ConstPtr &thrust_msg);

	void receiveActuatorInfo(const simulator_prototype::ActuatorMessage::ConstPtr &actuator_msg);

	void updateRPM();

	void updateNozzleAngle();

	void updateReverseDeflector();

	void publishActuatorLog();

	ros::NodeHandle actuator_handle;

	// Used to receive info about the desired actuator states, update the simulated states, and get the corresponding forces and moments
	ros::Subscriber actuator_message_rec = actuator_handle.subscribe<simulator_prototype::ActuatorMessage>(
	  "input/actuators", 0, &ActuatorModel::receiveActuatorInfo, this);

	// Used to receive forces and moments directly, bypassing the actuator-model.
	ros::Subscriber force_rec = actuator_handle.subscribe<geometry_msgs::Twist>(
	  "input/thrust", 0, &ActuatorModel::receiveForcesAndMoments, this);

	// Used for logging of actuator-data. Necessary as Matlab prefers the standard ROS-messages, custom messages is more tricky.
	ros::Publisher thruster_publisher = actuator_handle.advertise<geometry_msgs::Twist>("log/actuatorData", 0);
};

#endif