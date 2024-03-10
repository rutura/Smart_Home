#pragma once

#include "Actuator.h"

enum class FanLevels { LEVEL_1 = 1000, LEVEL_2 = 2000, LEVEL_3 = 3000, LEVEL_4 = 4000, LEVEL_5 = 5000 };
QDebug operator<<(QDebug debug, const FanLevels &level);

enum class ThermostatFanModes { AUTO_MODE, TIMER_MODE };
QDebug operator<<(QDebug debug, const ThermostatFanModes &fanModes);

struct ThermostatStates
{
  bool isOn{ false };
  FanLevels fanLevel{ FanLevels::LEVEL_1 };
  double targetTemperature{ 26.8 };
  ThermostatFanModes thermostatFanModes{ ThermostatFanModes::AUTO_MODE };

  Q_GADGET
  Q_PROPERTY(bool isOn MEMBER isOn);
  Q_PROPERTY(FanLevels fanLevel MEMBER fanLevel);
  Q_PROPERTY(double targetTemperature MEMBER targetTemperature);
  Q_PROPERTY(ThermostatFanModes thermostatFanModes MEMBER thermostatFanModes);
};

QDebug operator<<(QDebug debug, const ThermostatStates &state);

bool operator==(const ThermostatStates &lhs, const ThermostatStates &rhs);

class ThermostatActuator
  : public Actuator<ThermostatStates>
  , public NonCopyable<ThermostatActuator>
{
};
