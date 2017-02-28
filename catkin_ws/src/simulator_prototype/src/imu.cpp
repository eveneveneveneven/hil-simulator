#include "imu.h"

IMU::IMU() {}
IMU::~IMU() {}

void IMU::publishImuData(Vector6d nu_dot, Vector6d nu) {
  publishData(nu_dot, nu, imu_pub);
}
