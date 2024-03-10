#pragma once

#include "Actuator.h"

class AirPurifierActuator
  : public Actuator<bool>
  , public NonCopyable<AirPurifierActuator>
{
};
