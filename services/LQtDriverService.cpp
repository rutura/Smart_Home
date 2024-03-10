

#include "LQtDriverService.h"

LQtDriverService::LQtDriverService(QObject *parent)
  : QObject(parent), temperatureSensor(TemperatureSensor::get_default_instance()),
    humiditySensor(HumiditySensor::get_default_instance()),
    airPurifierActuator(AirPurifierActuator::get_default_instance()),
    thermostatActuator(ThermostatActuator::get_default_instance()), tvActuator(TVActuator::get_default_instance()),
    wiFiActuator(WiFiActuator::get_default_instance()), homePodActuator(HomePodActuator::get_default_instance())
{}

double LQtDriverService::temperature() { return temperatureSensor.read(); }

void LQtDriverService::setTemperature(double newTemperature) { temperatureSensor.reset(newTemperature); }

int LQtDriverService::humidity() { return humiditySensor.read(); }

void LQtDriverService::setHumidity(int newHumidity) { humiditySensor.reset(newHumidity); }

bool LQtDriverService::airPurifierState() { return airPurifierActuator.getState(); }

void LQtDriverService::setAirPurifierState(bool newAirPurifierState)
{
  airPurifierActuator.setState(newAirPurifierState);
}

bool LQtDriverService::tvState() { return tvActuator.getState(); }

void LQtDriverService::setTvState(bool newTVState) { tvActuator.setState(newTVState); }

bool LQtDriverService::wifiState() { return wiFiActuator.getState(); }

void LQtDriverService::setWifiState(bool newWifiState) { wiFiActuator.setState(newWifiState); }
LQtHomePodState *LQtDriverService::lqtHomePodState() { return m_lQtHomePodState; }
void LQtDriverService::setLqtHomePodState(LQtHomePodState *newLqtHomePodState)
{
  if (newLqtHomePodState == m_lQtHomePodState) return;
  m_lQtHomePodState = newLqtHomePodState;
  homePodActuator.setState(m_lQtHomePodState->homePodState());
}
LQtThermostatState *LQtDriverService::lqtThermostatState() { return m_lQtThermostatState; }
void LQtDriverService::setLqtThermostatState(LQtThermostatState *newThermostatState)
{
  if (newThermostatState == m_lQtThermostatState) return;
  m_lQtThermostatState = newThermostatState;
  thermostatActuator.setState(m_lQtThermostatState->thermostatStates());
}
