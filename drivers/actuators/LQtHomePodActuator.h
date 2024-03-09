#pragma once
#include "LQtActuator.h"

enum class HomePodStates {
    STOPPED =0,
    PLAYING,
    PAUSED,
};
QDebug operator<<(QDebug debug, const HomePodStates &state) {
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
    default:
        debug << "Unknown state";
        break;
    }
    return debug;
}
class LQtHomePodActuator: public LQtActuator<HomePodStates>
{};

