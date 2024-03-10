#pragma once
#include "Sensor.h"

class TemperatureSensor
  : public Sensor<double>
  , public NonCopyable<TemperatureSensor>
{
};
