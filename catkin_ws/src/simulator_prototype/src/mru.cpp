#include "mru.h"

MRU::MRU() {}
MRU::~MRU() {}

void MRU::publishMruData(Vector6d nu, Vector6d eta) {
  publishData(nu, eta);
}
