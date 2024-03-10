#pragma once
#include "Sensor.h"

class HumiditySensor
  : public Sensor<int>
  , public NonCopyable<HumiditySensor>
{
};
