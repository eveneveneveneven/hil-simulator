#include "actuatormodel.h"

void ActuatorModel::initializeActuatorModel(double _K, double _T_alpha, double _T_beta, double _T_n, double _l_x_1, double _l_x_2, double _l_y_1, double _l_y_2, double _dt, double _n_max, double _n_min, double _alpha_max){
	K = _K;
	T_alpha = _T_alpha;
	T_beta = _T_beta;
	T_n = _T_n;
	l_x_1 = _l_x_1;
	l_x_2 = _l_x_2;
	l_y_1 = _l_y_1;
	l_y_2 = _l_y_2;
	alpha_1 = 0;
	alpha_2 = 0;
	dt = _dt;
	n_min = _n_min;
	n_max = _n_max;
	alpha_max = _alpha_max;
}

ActuatorModel::ActuatorModel(){
	tau_control << 0,0,0,0,0,0;
}

ActuatorModel::~ActuatorModel(){

}

void ActuatorModel::receiveForcesAndMoments(const geometry_msgs::Twist::ConstPtr &thrust_msg){
	tau_control << thrust_msg->linear.x, thrust_msg->linear.y, thrust_msg->linear.z, thrust_msg->angular.x, thrust_msg->angular.y, thrust_msg->angular.z;
}

void ActuatorModel::receiveActuatorInfo(const simulator_prototype::ActuatorMessage::ConstPtr &actuator_msg){
	time_since_last_message = 0;
	
	n_1_ref = n_min+((n_max-n_min)/100)*actuator_msg->rightRPM;
	n_2_ref = n_min+((n_max-n_min)/100)*actuator_msg->leftRPM;
	alpha_1_ref = (-alpha_max*M_PI/180)*actuator_msg->rightNozzle/100;
	alpha_2_ref = (-alpha_max*M_PI/180)*actuator_msg->leftNozzle/100;
	beta_1_ref = actuator_msg->rightDeflector/100;
	beta_2_ref = actuator_msg->leftDeflector/100;

	A << 	cos(alpha_1)*beta_1,					cos(alpha_2)*beta_2,
			sin(alpha_1)*beta_1, 					sin(alpha_2)*beta_2,
			l_x_1*sin(alpha_1)-l_y_1*cos(alpha_1),	l_x_2*sin(alpha_2)-l_y_2*cos(alpha_2);
	
	B << 	K, 	0,
			0,	K;
	
	N << 	std::abs(n_1)*n_1, 	std::abs(n_2)*n_2;

	Vector3d tau_3DOF = A*B*N;
	tau_control << tau_3DOF(0), tau_3DOF(1), 0, 0, 0, tau_3DOF(2);
}

void ActuatorModel::updateRPM(){
	n_1 = n_1+dt*((-1/T_n)*(n_1-n_1_ref));
	n_2 = n_2+dt*((-1/T_n)*(n_2-n_2_ref));
}

void ActuatorModel::updateNozzleAngle(){
	alpha_1 = alpha_1+dt*((-1/T_alpha)*(alpha_1-alpha_1_ref));
	alpha_2 = alpha_2+dt*((-1/T_alpha)*(alpha_2-alpha_2_ref));
}

void ActuatorModel::updateReverseDeflector(){
	beta_1 = beta_1+dt*((-1/T_beta)*(beta_1-beta_1_ref));
	beta_2 = beta_2+dt*((-1/T_beta)*(beta_2-beta_2_ref));
}

void ActuatorModel::getForcesAndMoments(Vector6d &_tau_control){
	updateRPM();
	updateNozzleAngle();
	updateReverseDeflector();
	time_since_last_message += dt;
	publishActuatorLog();	
	if(time_since_last_message<1){
		_tau_control = tau_control;
	}else{
		_tau_control << 0, 0, 0, 0, 0, 0;
	}
	
}

// Used for logging of actuator-data. Necessary as Matlab prefers the standard ROS-messages, custom messages is more tricky.
void ActuatorModel::publishActuatorLog(){
	geometry_msgs::Twist thrust_msg;
	thrust_msg.linear.x = n_1;
	thrust_msg.linear.y = alpha_1;
	thrust_msg.linear.z = beta_1;
	thrust_msg.angular.x = n_1_ref;
	thrust_msg.angular.y = alpha_1_ref;
	thrust_msg.angular.z = beta_1_ref;
	thruster_publisher.publish(thrust_msg);
}