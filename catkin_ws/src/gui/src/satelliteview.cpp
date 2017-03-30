#include "satelliteview.h"
//#include <QtMath>
#include <QDebug>
#include <QPixmap>
#include <QFile>
#include <iostream>       // std::cout
#include <unistd.h>


satelliteView::satelliteView(QCustomPlot *satelliteViewWidget)
{
	mainTarget = new targetUSV("USV_Odin", 1, 0);
	mainTarget->makePlottable(satelliteViewWidget);
	// testObstacle = new obstacle("testObstacle", 1, 1);
	// testObstacle->makePlottable(satelliteViewWidget);
	// obstacles["testObstacle2"] = new obstacle("SomeID", -1, 1);
	// obstacles["testObstacle2"]->makePlottable(satelliteViewWidget);
	svWidget = satelliteViewWidget;

	svWidget->setBackground(Qt::lightGray);
	svWidget->axisRect()->setBackground(Qt::white);

	svWidget->axisRect()->setupFullAxesBox();
	svWidget->xAxis->setRange(-2, 2);
	svWidget->yAxis->setRange(-2, 2);

	// make left and bottom axes transfer their ranges to right and top axes:
	connect(svWidget->xAxis, SIGNAL(rangeChanged(QCPRange)), svWidget->xAxis2, SLOT(setRange(QCPRange)));
	connect(svWidget->yAxis, SIGNAL(rangeChanged(QCPRange)), svWidget->yAxis2, SLOT(setRange(QCPRange)));

	connect(&plotTimer, SIGNAL(timeout()), this, SLOT(updatePlot()));
	plotTimer.start(30); // Interval 0 means to refresh as fast as possible
	
}

void satelliteView::updatePlot()
{
	double zoom = 3;
	svWidget->replot();

	mainTarget->updateTrajectory();

	for( auto const& obst : obstacles )
	{
		if(!obst.second->isPlottable())
		{
			obst.second->makePlottable(svWidget);	
		}
		obst.second->updateTrajectory();
	}

	//svWidget->xAxis->setRange(x - zoom, x + zoom);
	//svWidget->yAxis->setRange(y - zoom, y + zoom);
	//svWidget->rescaleAxes();
}

void satelliteView::addObstacle( string obstacleID, double x, double y, double psi )
{
	obstacles[obstacleID] = new obstacle(obstacleID.c_str(), x, y, psi);
}

void satelliteView::setPosition( string obstacleID, double x, double y, double psi )
{
	position newPos = {x, y, psi};
	map<string,obstacle*>::iterator it = obstacles.find(obstacleID);
	if( it != obstacles.end() )
	{
		obstacles[obstacleID]->setNewPosition(newPos);
	}else
	{
		addObstacle(obstacleID, x, y, psi);
	}
}

target::target(std::string targetID){
	ID = targetID;
}

void target::trajectoryInit(QCustomPlot *satelliteViewWidget)
{
	trajectory = new QCPCurve(satelliteViewWidget->xAxis, satelliteViewWidget->yAxis);
	trajectory->setPen(QPen(Qt::blue));

	//*targetIcon = targetIcon->scaledToWidth(15, Qt::FastTransformation);
	trajectoryHead = new QCPCurve(satelliteViewWidget->xAxis, satelliteViewWidget->yAxis);
}

void target::setNewPosition(position Pos)
{
	std::lock_guard<std::mutex> lock(positionMutex);
	pos = Pos;
}

void target::updateTrajectory(){
	std::lock_guard<std::mutex> lock(positionMutex);
	trajectory->addData(pos.x, pos.y);

	QMatrix rm;
	rm.rotate(pos.psi);
	QPixmap rotatedTargetIcon = targetIcon->transformed(rm);

	trajectoryHead->data()->clear();
	trajectoryHead->setScatterStyle(QCPScatterStyle(rotatedTargetIcon));
	trajectoryHead->addData(pos.x, pos.y);
}

targetUSV::targetUSV(std::string targetID, double X, double Y, double Psi) : target(targetID){
	position Pos = {X, Y, Psi};
	this->setNewPosition(Pos);
}

void targetUSV::makePlottable(QCustomPlot *satelliteViewWidget)
{
	if( readyToPlot ) return;
	trajectoryInit(satelliteViewWidget);
	targetIcon = new QPixmap(":/pics/testBoat.png");
	readyToPlot = true;
}

obstacle::obstacle(std::string obstID, double X, double Y, double Psi) : target(obstID){
	position Pos = {X, Y, Psi};
	this->setNewPosition(Pos);
}

void obstacle::makePlottable(QCustomPlot *satelliteViewWidget)
{
	if( readyToPlot ) return;
	trajectoryInit(satelliteViewWidget);
	targetIcon = new QPixmap(20, 20);
	targetIcon->fill(Qt::green);
	this->trajectory->setVisible(false);
	readyToPlot = true;
}


