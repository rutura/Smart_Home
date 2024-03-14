#pragma once
#include "Sensor.h"

/**
 * @brief get sensor operations of type int and implemented singleton design from NonCopyable
 */
class HumiditySensor
  : public Sensor<int>
  , public NonCopyable<HumiditySensor>
{
};
