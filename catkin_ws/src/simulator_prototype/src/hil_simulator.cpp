#include "vessel.h"

int main(int argc, char* argv[])
{

  ros::init(argc, argv, "hil_simulator_node");
  ros::start();
  ROS_INFO("Started HIL Simulator node, waiting for RViz to get ready");
  ros::Duration(5).sleep(); // Wait for RViz to start
  ROS_INFO("Starting simulation");
  Vessel simulatedVessel;
  ros::Rate loopRate(1/simulatedVessel.getDT());

  while(ros::ok()){
  	simulatedVessel.step();
  	ros::spinOnce();
  	loopRate.sleep();
  }

  ROS_INFO("Exiting HIL Simulator node");
  ros::shutdown();
  return 0;
}
