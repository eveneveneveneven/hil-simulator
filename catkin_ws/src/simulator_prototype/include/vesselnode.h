#ifndef VESSELNODE_H
#define VESSELNODE_H

#include "simulator_prototype/Environment.h"
#include <tf/transform_broadcaster.h>
#include "geometry_msgs/PoseStamped.h"
#include "geometry_msgs/Twist.h"
#include "vessel.h"

class VesselNode{
public:
	VesselNode();
	~VesselNode();
	Vessel vessel;
	bool paused = false;
	void step();
	double getDT();
private:
	Vector6d eta, nu, tau_control;

	void receiveThrust(const geometry_msgs::Twist::ConstPtr &thrust_msg);

	void receiveEnvironmentMessage(const simulator_prototype::Environment::ConstPtr &environment_msg);

	void logInfo();

	void publishState();

	tf::TransformBroadcaster tf = tf::TransformBroadcaster();
  	std::string tf_name = "hil_sim";
  	ros::NodeHandle log_handle;
	ros::Publisher vel_pub =
	  log_handle.advertise<geometry_msgs::Twist>("log/velocity", 0);
	ros::Publisher state_pub =
	  log_handle.advertise<geometry_msgs::Twist>("log/state", 0);
	ros::Publisher thrust_pub =
	  log_handle.advertise<geometry_msgs::Twist>("log/thrust", 0);

	ros::NodeHandle environment_comm_handle;
	ros::Subscriber environment_msg_rec = environment_comm_handle.subscribe<simulator_prototype::Environment>("input/environment_communication", 0, &VesselNode::receiveEnvironmentMessage, this);
};


#endif