

#include "LQtDriverService.h"

LQtDriverService::LQtDriverService(QObject *parent)
  : QObject(parent), temperatureSensor(TemperatureSensor::get_default_instance()),
    humiditySensor(HumiditySensor::get_default_instance()),
    airPurifierActuator(AirPurifierActuator::get_default_instance()),
    thermostatActuator(ThermostatActuator::get_default_instance()), tvActuator(TVActuator::get_default_instance()),
    wiFiActuator(WiFiActuator::get_default_instance()), homePodActuator(HomePodActuator::get_default_instance())
{}

double LQtDriverService::temperature() { return temperatureSensor.read(); }

void LQtDriverService::setTemperature(double newTemperature) {
  if(newTemperature == m_temperature) return;
  m_temperature = newTemperature;
  temperatureSensor.reset(m_temperature);
  emit temperatureChanged();
}

int LQtDriverService::humidity() { return humiditySensor.read(); }

void LQtDriverService::setHumidity(int newHumidity) {
  if(newHumidity == m_humidity) return;
  m_humidity = newHumidity;
  humiditySensor.reset(m_humidity);
  emit humidityChanged();
}

bool LQtDriverService::airPurifierState() { return airPurifierActuator.getState(); }

void LQtDriverService::setAirPurifierState(bool newAirPurifierState)
{
  if(newAirPurifierState == m_airPurifierState)return;
  m_airPurifierState = newAirPurifierState;
  airPurifierActuator.setState(m_airPurifierState);
  emit airPurifierStateChanged();
}

bool LQtDriverService::tvState() { return tvActuator.getState(); }

void LQtDriverService::setTvState(bool newTVState) {
  if(newTVState == m_tvState)return;
  m_tvState = newTVState;
  tvActuator.setState(m_tvState);
  emit tvStateChanged();
}

bool LQtDriverService::wifiState() { return wiFiActuator.getState(); }

void LQtDriverService::setWifiState(bool newWifiState) {
  if(newWifiState == m_wifiState)return;
  m_wifiState = newWifiState;
  wiFiActuator.setState(m_wifiState);
  emit wifiStateChanged();
}
LQtHomePodState *LQtDriverService::lqtHomePodState() { return m_lQtHomePodState; }
void LQtDriverService::setLqtHomePodState(LQtHomePodState *newLqtHomePodState)
{
  if (newLqtHomePodState == m_lQtHomePodState) return;
  m_lQtHomePodState = newLqtHomePodState;
  homePodActuator.setState(m_lQtHomePodState->getHomePodState());
  emit lqtHomePodStateChanged();
}
LQtThermostatState *LQtDriverService::lqtThermostatState() { return m_lQtThermostatState; }
void LQtDriverService::setLqtThermostatState(LQtThermostatState *newThermostatState)
{
  if (newThermostatState == m_lQtThermostatState) return;
  m_lQtThermostatState = newThermostatState;
  thermostatActuator.setState(m_lQtThermostatState->getThermostatStates());
  emit lqtThermostatStateChanged();
}
