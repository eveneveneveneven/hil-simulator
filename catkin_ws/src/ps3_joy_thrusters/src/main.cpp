#include "ros/ros.h"
#include "geometry_msgs/Twist.h"
#include "sensor_msgs/Joy.h"
#include "ps3.h"
#include <math.h>


class JoystickPublisher
{
public:
  JoystickPublisher();

private:
  void joyCallback(const sensor_msgs::Joy::ConstPtr& joy);

  ros::NodeHandle nh_;

  double left_thr, right_thr;
  ros::Publisher vel_pub_;
  ros::Subscriber joy_sub_;

}; 


JoystickPublisher::JoystickPublisher():
  left_thr(PS3_AXIS_STICK_LEFT_UPWARDS),
  right_thr(PS3_AXIS_STICK_RIGHT_UPWARDS)
{
  vel_pub_ = nh_.advertise<geometry_msgs::Twist>("input/thrust", 0);
  joy_sub_ = nh_.subscribe<sensor_msgs::Joy>("joy", 0, &JoystickPublisher::joyCallback, this);

}

void JoystickPublisher::joyCallback(const sensor_msgs::Joy::ConstPtr& joy)
{
  double left_scale, right_scale, max_thrust_pr_thruster, moment, right_force, left_force, thruster_position;
  max_thrust_pr_thruster = 125;
  left_scale = 1*(joy->axes[left_thr]);
  right_scale = 1*(joy->axes[right_thr]);
  thruster_position = 0.1505;
  right_force = max_thrust_pr_thruster*right_scale;
  left_force = max_thrust_pr_thruster*left_scale;
  moment = left_force*thruster_position - right_force*thruster_position;

  geometry_msgs::Twist twist;
  twist.linear.x = right_force+left_force;
  twist.linear.y = 0;
  twist.angular.z = moment;
  vel_pub_.publish(twist);
}

int main(int argc, char* argv[])
{
	ros::init(argc, argv, "ps3_joy_thrusters");
	ROS_INFO("Started PS3 Jolner Controller node");
	JoystickPublisher joystick_publisher;
	

	ros::spin();
}
