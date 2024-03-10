
#include "ThermostatActuator.h"

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
QDebug operator<<(QDebug debug, const ThermostatStates &state)
{
  debug << "Cannot be printed as of now";
  debug << "[Thermostat]{ " << state.isOn << ", " << state.fanLevel << "," << state.targetTemperature << ","
        << state.thermostatFanModes << "}";
  return debug;
}

bool operator==(const ThermostatStates &lhs, const ThermostatStates &rhs)
{
  return lhs.isOn == rhs.isOn && lhs.fanLevel == rhs.fanLevel && lhs.targetTemperature == rhs.targetTemperature
         && lhs.thermostatFanModes == rhs.thermostatFanModes;
}