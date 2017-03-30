#ifndef SATELLITEVIEW_H
#define SATELLITEVIEW_H

#include "../qcustomplot.h"
#include <QTimer>
#include <QObject>
#include <mutex>
#include <string>
#include <map>

using namespace std;


class target;
class targetUSV;
class obstacle;

struct position {
	double x;
	double y;
	double psi;
};

class satelliteView : public QObject
{
	Q_OBJECT
public:
	satelliteView( QCustomPlot *satelliteViewWidget );
	void addObstacle(string obstacleID, double x, double y, double psi);
	void setPosition( string obstacleID, double x, double y, double psi = 0);

private slots:
	void updatePlot();

private:
	targetUSV *mainTarget;
	map<string, obstacle*> obstacles;
	QCustomPlot *svWidget;
	QTimer plotTimer;
};


//--------------------------------------------------------


class target
{
public:
	target(string targetID);
	void 			setNewPosition(position Pos);
	void 			updateTrajectory();
	string 			getID(){return ID;};
	bool 			isPlottable(){ return readyToPlot; };
	virtual void 	makePlottable(QCustomPlot *satelliteViewWidget) = 0;

protected:
	void trajectoryInit(QCustomPlot *satelliteViewWidget);
	bool readyToPlot = false;
	mutex positionMutex;
	string ID;
	position pos;
	QPixmap *targetIcon;
	QCPCurve *trajectory;
	QCPCurve *trajectoryHead;
};

class targetUSV : public target
{
public:
	targetUSV(string targetID = "NO_ID", double X = 0, double Y = 0, double Psi = 0);
	void makePlottable(QCustomPlot *satelliteViewWidget);
};

class obstacle : public target
{
public:
	obstacle(string obstID = "NO_ID", double X = 0, double Y = 0, double Psi = 0);
	void makePlottable(QCustomPlot *satelliteViewWidget);
};

#endif // SATELLITEVIEW_H
