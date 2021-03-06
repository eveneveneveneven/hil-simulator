#include "obstacleControl.h"




void obstacleControl(int argc, char *argv[])
{
	ros::init(argc, argv, "obstacleControl");
	ros::NodeHandle n;
	
	obstacle testObstacle(n, "Mario", 1, 2, 3);
	ros::Rate loop_rate(2);
	while(1)
	{
		loop_rate.sleep();
	}
}

obstacleHandler::obstacleHandler(ros::NodeHandle nh)
{
	n = nh;
	cmdSub = nh.subscribe("obstacleCommandTopic", 1000, &obstacleHandler::cmdParser, this);
}


void obstacleHandler::cmdParser(const environment::obstacleCmd::ConstPtr& cmd)
{
	static int obstIterator = 0;
	if(cmd->cmdSpecifier == "spawn")
	{
		string ID = "fixedObstacle_" + to_string(obstIterator++);
		double x = cmd->x;
		double y = cmd->y;
		double psi = cmd->psi;
		ROS_INFO("%s %s", cmd->cmdSpecifier.c_str(), cmd->receiverID.c_str());
		agents.push_back( thread(&obstacle::run, obstacle(n, ID, x, y, psi)) );
	}
}

void obstacleHandler::run()
{
	ros::spin();
}

obstacle::obstacle( const obstacle& other )
{
	n = other.n;
	cmdSub = n.subscribe("obstacleCommandTopic", 1000, &obstacle::cmdParser, this);
	posUpdatePub = n.advertise<environment::obstacleUpdate>("posUpdateTopic", 1000);

	ID = other.ID;
	x = other.x;
	y = other.y;
	psi = other.psi;
}

obstacle::obstacle(ros::NodeHandle nh, string obstID, double X, double Y, double Psi)
{
	n = nh;
	cmdSub = n.subscribe("obstacleCommandTopic", 1000, &obstacle::cmdParser, this);
	posUpdatePub = n.advertise<environment::obstacleUpdate>("posUpdateTopic", 1000);

	ID = obstID;
	x = X;
	y = Y;
	psi = Psi;
}

environment::obstacleUpdate obstacle::getUpdateMsg()
{
	lock_guard<mutex> lock(m);

	environment::obstacleUpdate obstUpdate;
	obstUpdate.msgType = "position_update";
	obstUpdate.obstacleID = ID;
	obstUpdate.x = x;
	obstUpdate.y = y;
	obstUpdate.psi = psi;
	return obstUpdate;
}

void obstacle::run()
{
	ros::Rate loop_rate(2);
	int count = 0;
	while(count++ < 10){
		sendUpdateMsg();

		loop_rate.sleep();

		lock_guard<mutex> lock(m);
		if(stop == true)
		{
			return;
		}
	}

	ROS_INFO("Will terminate obstacle %s", ID.c_str());
}

void obstacle::sendUpdateMsg()
{
		environment::obstacleUpdate posUpdate = getUpdateMsg();
		ROS_INFO("Sending update from %s", posUpdate.obstacleID.c_str());
		posUpdatePub.publish(posUpdate);
		ros::spinOnce();
}

void obstacle::cmdParser(const environment::obstacleCmd::ConstPtr& cmd)
{
	ROS_INFO("%s received a new command!", ID.c_str());
}

