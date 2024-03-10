#pragma once

#include "Actuator.h"

class TVActuator
  : public Actuator<bool>
  , public NonCopyable<TVActuator>
{
};
