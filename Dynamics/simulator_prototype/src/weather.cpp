#include "weather.h"

Weather::Weather() {}

Weather::~Weather() {}


void Weather::setData(double speed_in, double direction_in, double _dt){
	mean_direction = direction_in;
	mean_speed = speed_in;
	dt = _dt;
}

double Weather::generateRandomSpeed(){
	std::random_device rd;
	std::mt19937 gen(rd());
	double mean, stdDev;
	mean = 0;
	stdDev = 1;
	static std::normal_distribution<> d(mean, stdDev);
	double res = d(gen);
	return res;
}

double Weather::generateRandomAngle(){
	std::random_device rd;
	std::mt19937 gen(rd());
	double mean, stdDev;
	mean = 0;
	stdDev = 1;
	static std::normal_distribution<> d(mean, stdDev);
	double res = d(gen);
	return res;
}

void Weather::updateSpeed(){
	double w = generateRandomSpeed();
	double V_dot = w-mu_speed*V;
	V = V+dt*V_dot;
}

void Weather::updateDirection(){
	double w = generateRandomAngle();
	double beta_dot = w-mu_direction*beta;
	beta = beta+dt*beta_dot;
}