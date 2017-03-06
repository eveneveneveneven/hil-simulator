#include "speedsensor.h"

SpeedSensor::SpeedSensor(){}

SpeedSensor::~SpeedSensor(){}

void SpeedSensor::publishSpeedSensorData(double u, double v){
	publishData(u, v);
}
