#pragma once
#include "Actuator.h"

enum HomePodStates {
  STOPPED = 0,
  PLAYING,
  PAUSED,
};
QDebug operator<<(QDebug debug, const HomePodStates &state);

class HomePodActuator
  : public Actuator<HomePodStates>
  , public NonCopyable<HomePodActuator>
{
};
