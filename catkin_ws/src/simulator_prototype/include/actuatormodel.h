#ifndef ACTUATORMODEL_H
#define ACTUATORMODEL_H

#include "ros/ros.h"
#include <Eigen/Dense>
#include "geometry_msgs/Twist.h"
#include "simulator_prototype/JolnerActuators.h"
#include "simulator_prototype/OdinActuators.h"
#include <math.h>

using namespace Eigen;
typedef Matrix<double, 6, 1> Vector6d;
typedef Matrix<double, 3, 2> Matrix32;

class ActuatorModel{
public:
	ActuatorModel();
	~ActuatorModel();
	void initializeActuatorModel(double _K, double _T_alpha, double _T_beta, double _T_n, double _l_x_1, double _l_x_2, double _l_y_1, double _l_y_2, double _dt);
	void getThrust(Vector6d &_tau_control);

private:
	// Thruster states
	double alpha_1, alpha_2, beta_1, beta_2, n_1, n_2;
	// Thruster properties, including time constants and position
	double K, T_alpha, T_beta, T_n, l_x_1, l_x_2, l_y_1, l_y_2;
	// Step-time for solving the diff. equations
	double dt;
	Vector6d tau_control;
	Matrix32 A;
	Matrix2d B;
	Vector2d N;
	void receiveActuatorInfoForce(const geometry_msgs::Twist::ConstPtr &thrust_msg);

	void receiveActuatorInfoJolner(const simulator_prototype::JolnerActuators::ConstPtr &actuator_msg);

	void receiveActuatorInfoOdin(const simulator_prototype::OdinActuators::ConstPtr &actuator_msg);

	void updateRPM(double n_1_ref, double n_2_ref);

	void updateNozzleAngle(double alpha_1_ref, double alpha_2_ref);

	void updateReverseDeflector(double beta_1_ref, double beta_2_ref);

	ros::NodeHandle actuator_handle;
	ros::Subscriber jolner_thrust_rec = actuator_handle.subscribe<simulator_prototype::JolnerActuators>(
	  "input/jolner/actuators", 0, &ActuatorModel::receiveActuatorInfoJolner, this);

	ros::Subscriber odin_thrust_rec = actuator_handle.subscribe<simulator_prototype::OdinActuators>(
	  "input/odin/actuators", 0, &ActuatorModel::receiveActuatorInfoOdin, this);

	ros::Subscriber force_rec = actuator_handle.subscribe<geometry_msgs::Twist>(
	  "input/thrust", 0, &ActuatorModel::receiveActuatorInfoForce, this);
};

#endif