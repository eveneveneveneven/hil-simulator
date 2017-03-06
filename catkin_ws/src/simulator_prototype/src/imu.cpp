#include "imu.h"

IMU::IMU() {}
IMU::~IMU() {}

void IMU::publishImuData(Vector6d nu_dot, Vector6d nu) {
	Vector6d imu_data;
  publishData(imu_data);
}
