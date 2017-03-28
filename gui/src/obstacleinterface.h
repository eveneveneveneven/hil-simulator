#ifndef OBSTACLEINTERFACE_H
#define OBSTACLEINTERFACE_H

#include <QGroupBox>
#include <QPushButton>
#include <QObject>
#include "/opt/ros/kinetic/include/ros/ros.h"
#include "environment/obstacleCmd.h"
#include <string>
#include <thread>
#include <QThread>

#include "satelliteview.h"

#include "/opt/ros/kinetic/include/ros/ros.h"
#include "std_msgs/String.h"
#include "std_msgs/Float64.h"
#include "environment/obstacleUpdate.h"


class watchDog: public QThread
{
Q_OBJECT
public:
    explicit watchDog(QThread *parent = 0):
    QThread(parent)
    {};
    void test();

public slots:
    void processgps() {
    	static int i = 0;
        qDebug() << "processgps() nr" << i++ << QThread::currentThreadId();
    };

private:
    void run();
};

class updateHandler : public QObject
{
    Q_OBJECT
public:
	updateHandler(const updateHandler& other);
	updateHandler(ros::NodeHandle n, satelliteView *Sv);
	void waitForUpdates();
    void startNewWatchDog();
private:
	map<string, watchDog*> obstWDs;
	satelliteView *sv;
	ros::NodeHandle nh;
	ros::Subscriber sub;
	void msgParser(const environment::obstacleUpdate::ConstPtr& posMsg);
    watchDog *worker;
    watchDog worker2;
};




class obstacleWatchDog : public QObject
{
	Q_OBJECT

public:
	obstacleWatchDog( ros::NodeHandle n, string obstID );

private slots:
	void sendDeleteRequest();

private:
	QTimer timer;
	string ownerID;
	ros::NodeHandle nh;
	ros::Publisher pub;
};



class obstacleInterface : public QObject
{
	Q_OBJECT
public:
	obstacleInterface(){};
	obstacleInterface(ros::NodeHandle nh, QGroupBox *interfaceWindow, satelliteView *Sv);
	void requestNewObstacle(double x, double y, double psi);

private slots:
	void handleSpawnButton();

private:
	updateHandler *myUpdateHandler;
	satelliteView *sv;
	ros::Publisher cmdPub;
	QPushButton *spawnObstacleButton;
	//std::thread updateListener;
};


#endif // OBSTACLEINTERFACE_H

