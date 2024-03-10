#include "HomePodActuator.h"
QDebug operator<<(QDebug debug, const HomePodStates &state)
{
  switch (state) {
  case HomePodStates::STOPPED:
    debug << "STOPPED";
    break;
  case HomePodStates::PLAYING:
    debug << "PLAYING";
    break;
  case HomePodStates::PAUSED:
    debug << "PAUSED";
    break;
  }
  return debug;
}