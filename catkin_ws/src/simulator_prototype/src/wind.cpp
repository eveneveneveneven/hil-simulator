#include "wind.h"

Wind::Wind(){	
	beta = 0;
	V = 0;
	mu_speed = 0.001;
	mu_direction = 0.001;
}
Wind::~Wind(){

}
double Wind::calculateWindSpeedAtHeight(double U_10, double z) {
	double e = 2.718281;
	double kappa = 0.0025;
  	return (U_10 * (5 / 2) * sqrt(kappa) *
                    std::log(z / (10 * pow(e, -2 / (5 * sqrt(kappa))))));
}

void Wind::getData(double &speed_in, double &direction_in){
	updateSpeed();
	updateDirection();
	speed = mean_speed+V;
	direction = mean_direction+beta;
	speed_in = calculateWindSpeedAtHeight(speed, 1);
	direction_in = direction;
	geometry_msgs::Twist wind_msg;
	wind_msg.linear.x = speed;
	wind_msg.angular.z = direction;

	wind_pub.publish(wind_msg);
}