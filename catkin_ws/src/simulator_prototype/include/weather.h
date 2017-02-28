#ifndef WEATHER_H
#define WEATHER_H

#include <Eigen/Dense>

typedef Matrix<double, 6, 1> Vector6d;

// This module contains models for wind and current. The module outputs a
// current and wind speed and angle at any given time, and it is left up to the
// vessel module to convert this to forces for the given vessel.
// Setting new wind speed should be done by inputting the desired wind speed at
// 10 metres above the surface, U_10
class Weather {
public:
  // Speed and angle for environmental forces. Angle defined as 0=going to
  // north.
  double wind_angle, current_angle, wind_speed, current_speed, wind_mean_speed,
      wind_mean_angle, current_mean_speed, current_mean_angle, wind_std_dev,
      current_std_dev;

  void SetWindData(double mean_wind_speed_in, double mean_wind_angle_in,
                   double height);

  void SetCurrentData(double mean_current_speed_in,
                      double mean_current_angle_in);

private:
  void SetMeanWindSpeedAtHeight(double U_10, double z);

  void UpdateWindSpeed();
}