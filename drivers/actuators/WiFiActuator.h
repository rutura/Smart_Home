#pragma once

#include "Actuator.h"

class WiFiActuator
  : public Actuator<bool>
  , public NonCopyable<WiFiActuator>
{
};
