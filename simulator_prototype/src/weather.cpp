#include "weather.h"

Weather::Weather() {}

Weather::~Weather() {}

Weather::SetMeanWindSpeedAtHeight(double U_10, double z) {
  wind_mean_speed = U_10 * (5 / 2) * sqrt(kappa) *
                    std::log(z / (10 * pow(e, -2 / (5 * sqrt(kappa)))));
}
void Weather::SetData(double speed_in, direction_in){
	direction = direction_in;
	speed = speed_in;
}

Weather::UpdateWindSpeed() { wind_speed }