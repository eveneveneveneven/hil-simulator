#include "ros/ros.h"
#include "geometry_msgs/Twist.h"
#include "sensor_msgs/Joy.h"
#include "ps3.h"
#include <math.h>


class TeleopTurtle
{
public:
  TeleopTurtle();

private:
  void joyCallback(const sensor_msgs::Joy::ConstPtr& joy);

  ros::NodeHandle nh_;

  double yaw, surge_fw, surge_bw;
  ros::Publisher vel_pub_;
  ros::Subscriber joy_sub_;

};


TeleopTurtle::TeleopTurtle():
  yaw(PS3_AXIS_STICK_LEFT_LEFTWARDS),
  surge_fw(PS3_BUTTON_REAR_RIGHT_2),
  surge_bw(PS3_BUTTON_REAR_LEFT_2)

{

  nh_.param("axis_yaw", yaw, yaw);
  nh_.param("axis_surge", surge_fw, surge_fw);
  nh_.param("axis_surge", surge_bw, surge_bw);


  vel_pub_ = nh_.advertise<geometry_msgs::Twist>("hil_sim/thrust", 0);


  joy_sub_ = nh_.subscribe<sensor_msgs::Joy>("joy", 0, &TeleopTurtle::joyCallback, this);

}

void TeleopTurtle::joyCallback(const sensor_msgs::Joy::ConstPtr& joy)
{
  geometry_msgs::Twist twist;
  twist.linear.x = -6000*(joy->axes[surge_fw]-1)+5000*(joy->axes[surge_bw]-1);
  twist.angular.z = 15000*(joy->axes[yaw]);
  vel_pub_.publish(twist);
}

int main(int argc, char* argv[])
{
	ros::init(argc, argv, "ps3_thrust_input");
	ROS_INFO("Started PS3 Controller node");
	TeleopTurtle teleop_turtle;
	

	ros::spin();
}
