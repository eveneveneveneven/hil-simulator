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

  void SetData(double speed_in, direction_in);

private:
  double direction, speed;
  
  void SetMeanWindSpeedAtHeight(double U_10, double z);

  void UpdateWindSpeed();
}