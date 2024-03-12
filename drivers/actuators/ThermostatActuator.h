#pragma once

#include "Actuator.h"

enum FanLevels { LEVEL_1 = 1000, LEVEL_2 = 2000, LEVEL_3 = 3000, LEVEL_4 = 4000, LEVEL_5 = 5000 };
QDebug operator<<(QDebug debug, const FanLevels &level);

enum ThermostatFanModes { AUTO_MODE, TIMER_MODE };
QDebug operator<<(QDebug debug, const ThermostatFanModes &fanModes);

struct ThermostatStates
{
  bool isOn{ false };
  FanLevels fanLevel{ FanLevels::LEVEL_1 };
  double targetTemperature{ 26.8 };
  ThermostatFanModes thermostatFanModes{ ThermostatFanModes::AUTO_MODE };
};

QDebug operator<<(QDebug debug, const ThermostatStates &state);

bool operator==(const ThermostatStates &lhs, const ThermostatStates &rhs);

class ThermostatActuator
  : public Actuator<ThermostatStates>
  , public NonCopyable<ThermostatActuator>
{
};
