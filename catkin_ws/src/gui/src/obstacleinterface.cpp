#include <QDebug>
#include <QVBoxLayout>
#include <QTimer>
#include <QObject>
#include "obstacleinterface.h"

using namespace std;

environment::obstacleCmd makeObstacleCommand(string CmdSpecifier, string ID, double x = 0, double y = 0, double psi = 0)
{
	environment::obstacleCmd newCommand;
	newCommand.cmdSpecifier = CmdSpecifier;
	newCommand.receiverID = ID;
	newCommand.x = x;
	newCommand.y = y;
	newCommand.psi = psi;
	return newCommand;
}

//----------------------------------------------------------------------------------------
//---------------------------------updateHandler&WD---------------------------------------
//----------------------------------------------------------------------------------------

void watchDog::run()
{
	qDebug() << "Running watchdog...";
	ros::Rate loop_rate(1);
	int i = 0;
	while(1)
	{
		loop_rate.sleep();
		qDebug() << "Hello nr " << i++;
	} 
}

updateHandler::updateHandler(ros::NodeHandle n, satelliteView *Sv)
{
	nh = n;
	sub = nh.subscribe("posUpdateTopic", 1000, &updateHandler::msgParser, this);
	startNewWatchDog();
}

updateHandler::updateHandler(const updateHandler& other)
{
	sv = other.sv;
	sub = other.sub;
}

void updateHandler::waitForUpdates()
{
	ros::spin();
}


void updateHandler::startNewWatchDog() {
    QTimer *timer = new QTimer(this);
    QThread *thread = new QThread(this);
    this->worker = new watchDog();
    this->worker->moveToThread(thread);
    connect(timer, SIGNAL(timeout()), this->worker, SLOT(processgps()) );
    connect(thread, SIGNAL(finished()), this->worker, SLOT(deleteLater()) );
    thread->start();
    timer->start(1000);
	ros::Rate loop_rate(1);
	int i = 0;
	while(i++ < 5)
	{
		loop_rate.sleep();
		qDebug() << thread->isRunning();
	}
}

void updateHandler::msgParser(const environment::obstacleUpdate::ConstPtr& posMsg)
{	
	string ID = posMsg->obstacleID;

	if(posMsg->msgType == "position_update")
	{
		// map<string,watchDog*>::iterator it = obstWDs.find(ID);
		// if( it == obstWDs.end() ) //Could not find obstacle
		// {
		// 	obstWDs[ID] = new watchDog(nh, ID);
		// }

		double x = posMsg->x;
		double y = posMsg->y;
		double psi = posMsg->psi;
		qDebug() << "Set position of " << ID.c_str() << " to [" << x << ", " << y << ", " << psi << "].";
		sv->setPosition(ID, x, y, psi);
	}
}

//----------------------------------------------------------------------------------------
//---------------------------------obstacleWatchDog---------------------------------------
//----------------------------------------------------------------------------------------

obstacleWatchDog::obstacleWatchDog(ros::NodeHandle n, string obstID)
{
	nh = n;
	pub = nh.advertise<environment::obstacleCmd>("obstacleCommandTopic", 1000);
	ownerID = obstID;
	connect(&timer, SIGNAL(timeout()), this, SLOT(sendDeleteRequest()));
	timer.start(5000);
	qDebug() << "Watchdog created for" << ownerID.c_str();
}

void obstacleWatchDog::sendDeleteRequest()
{
	environment::obstacleCmd deleteRequest = makeObstacleCommand("delete",  ownerID);
	pub.publish(deleteRequest);
	qDebug() << "Request to delete" << ownerID.c_str();
}


//----------------------------------------------------------------------------------------
//-------------------------------obstacleUpdateHandler------------------------------------
//----------------------------------------------------------------------------------------


class obstacleUpdateHandler
{
public:
	obstacleUpdateHandler(const obstacleUpdateHandler& other);
	obstacleUpdateHandler(ros::NodeHandle n, satelliteView *Sv);
	void waitForUpdates();
private:
	map<string, obstacleWatchDog*> obstWDs;
	satelliteView *sv;
	ros::NodeHandle nh;
	ros::Subscriber sub;
	void msgParser(const environment::obstacleUpdate::ConstPtr& posMsg);
};

obstacleUpdateHandler::obstacleUpdateHandler(const obstacleUpdateHandler& other)
{
	sv = other.sv;
	sub = other.sub;
}

obstacleUpdateHandler::obstacleUpdateHandler(ros::NodeHandle n, satelliteView *Sv) : sv(Sv)
{
	nh = n;
	sub = nh.subscribe("posUpdateTopic", 1000, &obstacleUpdateHandler::msgParser, this);
}

void obstacleUpdateHandler::msgParser(const environment::obstacleUpdate::ConstPtr& posMsg)
{	
	string ID = posMsg->obstacleID;

	if(posMsg->msgType == "position_update")
	{
		map<string,obstacleWatchDog*>::iterator it = obstWDs.find(ID);
		if( it == obstWDs.end() ) //Could not find obstacle
		{
			obstWDs[ID] = new obstacleWatchDog(nh, ID);
		}

		double x = posMsg->x;
		double y = posMsg->y;
		double psi = posMsg->psi;
		qDebug() << "Set position of " << ID.c_str() << " to [" << x << ", " << y << ", " << psi << "].";
		sv->setPosition(ID, x, y, psi);
	}
}

void obstacleUpdateHandler::waitForUpdates()
{
	ros::spin();
}

void handleObstacleUpdates(ros::NodeHandle nh, satelliteView *sv)
{
	obstacleUpdateHandler obstUpdateHandler = obstacleUpdateHandler(nh, sv);
	obstUpdateHandler.waitForUpdates();
	qDebug() << "handleObstacleUpdates() finished...";
}






//----------------------------------------------------------------------------------------
//---------------------------------obstacleInterface--------------------------------------
//----------------------------------------------------------------------------------------



obstacleInterface::obstacleInterface(ros::NodeHandle nh, QGroupBox *interfaceWindow, satelliteView *Sv) 
	: sv(Sv)
{
	cmdPub = nh.advertise<environment::obstacleCmd>("obstacleCommandTopic", 1000);

	//updateListener = std::thread( handleObstacleUpdates, nh, sv );

	myUpdateHandler = new updateHandler(nh, sv);


	spawnObstacleButton = new QPushButton("Schmock!");
	QVBoxLayout *vbox = new QVBoxLayout;
	vbox->addWidget(spawnObstacleButton);
	interfaceWindow->setLayout(vbox);
	connect(spawnObstacleButton, SIGNAL (released()), this, SLOT (handleSpawnButton()));
}

void obstacleInterface::requestNewObstacle(double x, double y, double psi)
{
	environment::obstacleCmd newCommand;
	newCommand.cmdSpecifier = "spawn";
	newCommand.receiverID = "Whatever";
	newCommand.x = x;
	newCommand.y = y;
	newCommand.psi = psi;
	cmdPub.publish(newCommand);
	qDebug() << newCommand.cmdSpecifier.c_str() << newCommand.receiverID.c_str();
}

void obstacleInterface::handleSpawnButton()
{
	requestNewObstacle(0,0,0);
}



