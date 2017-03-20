#include "actuatormodel.h"

void ActuatorModel::initializeActuatorModel(double _K, double _T_alpha, double _T_beta, double _T_n, double _l_x_1, double _l_x_2, double _l_y_1, double _l_y_2, double _dt){
	K = _K;
	T_alpha = _T_alpha;
	T_beta = _T_beta;
	T_n = _T_n;
	l_x_1 = _l_x_1;
	l_x_2 = _l_x_2;
	l_y_1 = _l_y_1;
	l_y_2 = _l_y_2;
	dt = _dt;
}

ActuatorModel::ActuatorModel(){
	tau_control << 0,0,0,0,0,0;
}

ActuatorModel::~ActuatorModel(){

}

void ActuatorModel::receiveActuatorInfoForce(const geometry_msgs::Twist::ConstPtr &thrust_msg){
	tau_control << thrust_msg->linear.x, thrust_msg->linear.y, thrust_msg->linear.z, thrust_msg->angular.x, thrust_msg->angular.y, thrust_msg->angular.z;
}

void ActuatorModel::receiveActuatorInfoJolner(const simulator_prototype::JolnerActuators::ConstPtr &actuator_msg){
	double n_1_ref, n_2_ref;
	n_1_ref = actuator_msg->rightRPM;
	n_2_ref = actuator_msg->leftRPM;
	updateRPM(n_1_ref, n_2_ref);
	A << 	1,	1,
			0,	0,
			-l_y_1, -l_y_2;
	B << 	K,	0,
			0, 	K;
	N << std::abs(n_1)*n_1, std::abs(n_2)*n_2;
	Vector3d tau_3DOF = A*B*N;
	tau_control << tau_3DOF(0), tau_3DOF(1), 0, 0, 0, tau_3DOF(2);
}

void ActuatorModel::receiveActuatorInfoOdin(const simulator_prototype::OdinActuators::ConstPtr &actuator_msg){
	double n_1_ref, n_2_ref, alpha_1_ref, alpha_2_ref, beta_1_ref, beta_2_ref;
	n_1_ref = actuator_msg->rightRPM;
	n_2_ref = actuator_msg->leftRPM;
	alpha_1_ref = actuator_msg->rightNozzle;
	alpha_2_ref = actuator_msg->leftNozzle;
	beta_1_ref = actuator_msg->rightDeflector/100;
	beta_2_ref = actuator_msg->leftDeflector/100;
	updateRPM(n_1_ref, n_2_ref);
	updateNozzleAngle(alpha_1_ref, alpha_2_ref);
	updateReverseDeflector(beta_1_ref, beta_2_ref);
	
	A << 	cos(alpha_1),	cos(alpha_2),
			sin(alpha_1), 	sin(alpha_2),
			l_x_1*sin(alpha_1)-l_y_1*cos(alpha_1),	l_x_2*sin(alpha_2)-l_y_2*cos(alpha_2);
	
	B << 	K, 	0,
			0,	K;
	
	N << 	beta_1*std::abs(n_1)*n_1, 	beta_2*std::abs(n_2)*n_2;

	Vector3d tau_3DOF = A*B*N;
	tau_control << tau_3DOF(0), tau_3DOF(1), 0, 0, 0, tau_3DOF(2);
}

void ActuatorModel::updateRPM(double n_1_ref, double n_2_ref){
	n_1 = n_1+dt*((-1/T_n)*(n_1-n_1_ref));
	n_2 = n_2+dt*((-1/T_n)*(n_2-n_2_ref));
}

void ActuatorModel::updateNozzleAngle(double alpha_1_ref, double alpha_2_ref){
	alpha_1 = alpha_1+dt*((-1/T_alpha)*(alpha_1-alpha_1_ref));
	alpha_2 = alpha_2+dt*((-1/T_alpha)*(alpha_2-alpha_2_ref));
}

void ActuatorModel::updateReverseDeflector(double beta_1_ref, double beta_2_ref){
	beta_1 = beta_1+dt*((-1/T_beta)*(beta_1-beta_1_ref));
	beta_2 = beta_2+dt*((-1/T_beta)*(beta_2-beta_2_ref));
}

void ActuatorModel::getThrust(Vector6d &_tau_control){
	_tau_control = tau_control;
}
