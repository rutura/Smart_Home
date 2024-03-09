#pragma once

#include "LQtActuator.h"

enum class FanLevels {
    LEVEL_1 = 1000,
    LEVEL_2 = 2000,
    LEVEL_3 = 3000,
    LEVEL_4 = 4000,
    LEVEL_5 = 5000
};
QDebug operator<<(QDebug debug, const FanLevels &level)
{
    switch (level) {
    case FanLevels::LEVEL_1:
        debug << "LEVEL_1";
        break;
    case FanLevels::LEVEL_2:
        debug << "LEVEL_2";
        break;
    case FanLevels::LEVEL_3:
        debug << "LEVEL_3";
        break;
    case FanLevels::LEVEL_4:
        debug << "LEVEL_4";
        break;
    case FanLevels::LEVEL_5:
        debug << "LEVEL_5";
        break;
    }
    return debug;
}

enum class ThermostatFanModes { AUTO_MODE, TIMER_MODE };
QDebug operator<<(QDebug debug, const ThermostatFanModes &fanModes)
{
    switch (fanModes) {
    case ThermostatFanModes::AUTO_MODE:
        debug << "AUTO_MODE";
        break;
    case ThermostatFanModes::TIMER_MODE:
        debug << "TIMER_MODE";
        break;
    }
    return debug;
}

typedef struct ThermostatStates
{
    bool isOn{false};
    FanLevels fanLevel{FanLevels::LEVEL_1};
    double targetTemperature{26.8};
    ThermostatFanModes thermostatFanModes{ThermostatFanModes::AUTO_MODE};
} ThermostatStates_t;

QDebug operator<<(QDebug debug, const ThermostatStates &state)
{
    debug << "[Thermostat]{ " << state.isOn << ", " << state.fanLevel << ","
          << state.targetTemperature << "," << state.thermostatFanModes << "}";
    return debug;
}
class LQtThermostatActuator : public LQtActuator<ThermostatStates_t>
{};
