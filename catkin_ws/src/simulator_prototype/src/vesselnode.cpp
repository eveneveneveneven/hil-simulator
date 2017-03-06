#include "vesselnode.h"


VesselNode::VesselNode(){

}
VesselNode::~VesselNode(){
	
}
void VesselNode::step(){
	vessel.setThrust(tau_control);
	vessel.step();
	vessel.getState(eta, nu);
	logInfo();
	publishState();
}

double VesselNode::getDT(){
	return vessel.getDT();
}

void VesselNode::publishState(){
	tf::Transform transform;
    transform.setOrigin(tf::Vector3(eta[0],-eta[1],-eta[2]));
    tf::Quaternion q;
    q.setRPY(-eta[3],-eta[4],-eta[5]);
    transform.setRotation(q);
    tf.sendTransform(tf::StampedTransform(transform, ros::Time::now(), "map", tf_name));
}

void VesselNode::receiveThrust(const geometry_msgs::Twist::ConstPtr& thrust_msg){
	tau_control << thrust_msg->linear.x, thrust_msg->linear.y, thrust_msg->linear.z, thrust_msg->angular.x, thrust_msg->angular.y, thrust_msg->angular.z;
}

void VesselNode::logInfo(){
	geometry_msgs::Twist velocity;
	geometry_msgs::Twist state;
	geometry_msgs::Twist thrust;

	velocity.linear.x = nu(0);
	velocity.linear.y = nu(1);
	velocity.linear.z = nu(2);
	velocity.angular.x = nu(3);
	velocity.angular.y = nu(4);
	velocity.angular.z = nu(5);

	vel_pub.publish(velocity);

	state.linear.x = eta(0);
	state.linear.y = eta(1);
	state.linear.z = eta(2);
	state.angular.x = eta(3);
	state.angular.y = eta(4);
	state.angular.z = eta(5);

	state_pub.publish(state);

	thrust.linear.x = tau_control(0);
	thrust.linear.y = tau_control(1);
	thrust.linear.z = tau_control(2);
	thrust.angular.x = tau_control(3);
	thrust.angular.y = tau_control(4);
	thrust.angular.z = tau_control(5);

	thrust_pub.publish(thrust);
}
