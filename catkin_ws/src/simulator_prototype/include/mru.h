#ifndef MRU_H
#define MRU_H

#include "sensor.h"

class MRU : public Sensor {

public:
  MRU();
  ~MRU();

  // Publishes the IMU-data to a sensor-topic
  void publishMruData(Vector6d nu, Vector6d eta);

private:
  ros::Publisher mru_velocity_pub =
      sensor_handle.advertise<geometry_msgs::Twist>("sensors/mru/velocity", 0);
  ros::Publisher mru_position_pub =
      sensor_handle.advertise<geometry_msgs::Twist>("sensors/mru/position", 0);
};

#endif