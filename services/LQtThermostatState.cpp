
#include "LQtThermostatState.h"
LQtThermostatState::LQtThermostatState(QObject *parent) : QObject(parent) {}

bool LQtThermostatState::isOn() const
{
  return m_isOn;
}

void LQtThermostatState::setIsOn(bool newOnState)
{
  if(newOnState == m_isOn)return;
  m_isOn = newOnState;
  emit isOnChanged();
}

LQtThermostatState::_FanLevels LQtThermostatState::fanLevel() const
{
  return m_fanLevel;
}

void LQtThermostatState::setFanLevel(_FanLevels newFanLevel)
{
  if(newFanLevel == m_fanLevel)return;
  m_fanLevel = newFanLevel;
  emit fanLevelChanged();
}

double LQtThermostatState::targetTemperature() const
{
  return m_targetTempeature;
}

void LQtThermostatState::setTargetTemperature(double newTargetTemperature)
{
  if(newTargetTemperature == m_targetTempeature)return;
  m_targetTempeature = newTargetTemperature;
  emit targetTemperatureChanged();
}

LQtThermostatState::_ThermostatFanModes LQtThermostatState::fanMode() const
{
  return m_fanMode;
}

void LQtThermostatState::setFanMode(_ThermostatFanModes newFanMode)
{
  if(newFanMode == m_fanMode)return;
  m_fanMode = newFanMode;
  emit fanModeChanged();
}

ThermostatStates LQtThermostatState::getThermostatStates() const
{

  return (ThermostatStates){
    .isOn = m_isOn,
      .fanLevel = getFanLevel(),
      .targetTemperature = m_targetTempeature,
      .thermostatFanModes  = getFanMode(),
  };
}

ThermostatFanModes LQtThermostatState::getFanMode() const
{
  switch (m_fanMode) {
  case _ThermostatFanModes::AUTO_MODE:
return ThermostatFanModes::AUTO_MODE;
  case _ThermostatFanModes::TIMER_MODE:
    return ThermostatFanModes::TIMER_MODE;
  }
  return ThermostatFanModes::AUTO_MODE;
}

FanLevels LQtThermostatState::getFanLevel() const
{
  switch(m_fanLevel){
  case _FanLevels::LEVEL_1:
    return FanLevels::LEVEL_1;
  case _FanLevels::LEVEL_2:
    return FanLevels::LEVEL_2;
  case _FanLevels::LEVEL_3:
    return FanLevels::LEVEL_3;
  case _FanLevels::LEVEL_4:
    return FanLevels::LEVEL_4;
  case _FanLevels::LEVEL_5:
    return FanLevels::LEVEL_5;
  }
  return FanLevels::LEVEL_1;
}
