#pragma once

#include <QObject>
#include <QtQml/QtQml>
// actuators
#include <AirPurifierActuator.h>
#include <HomePodActuator.h>
#include <TVActuator.h>
#include <ThermostatActuator.h>
#include <WiFiActuator.h>
// sensors
#include "LQtHomePodState.h"
#include "LQtThermostatState.h"
#include <HumiditySensor.h>
#include <TemperatureSensor.h>

class LQtDriverService : public QObject
{
  Q_OBJECT
  QML_ELEMENT
  Q_PROPERTY(double temperature READ temperature WRITE setTemperature)
  Q_PROPERTY(int humidity READ humidity WRITE setHumidity)
  Q_PROPERTY(bool airPurifierState READ airPurifierState WRITE setAirPurifierState)
  Q_PROPERTY(LQtHomePodState *lqtHomePodState READ lqtHomePodState WRITE setLqtHomePodState)
  Q_PROPERTY(LQtThermostatState *lqtThermostatState READ lqtThermostatState WRITE setLqtThermostatState)
  Q_PROPERTY(bool tvState READ tvState WRITE setTvState)
  Q_PROPERTY(bool wifiState READ wifiState WRITE setWifiState)

public:
  explicit LQtDriverService(QObject *parent);

  double temperature();
  void setTemperature(double newTemperature);

  int humidity();
  void setHumidity(int newHumidity);

  bool airPurifierState();
  void setAirPurifierState(bool newAirPurifierState);

  bool tvState();
  void setTvState(bool newTVState);

  bool wifiState();
  void setWifiState(bool newWifiState);

  LQtHomePodState *lqtHomePodState();
  void setLqtHomePodState(LQtHomePodState *newLqtHomePodState);

  LQtThermostatState *lqtThermostatState();
  void setLqtThermostatState(LQtThermostatState *newThermostatState);

private:
  TemperatureSensor &temperatureSensor;
  HumiditySensor &humiditySensor;
  AirPurifierActuator &airPurifierActuator;
  ThermostatActuator &thermostatActuator;
  TVActuator &tvActuator;
  WiFiActuator &wiFiActuator;
  HomePodActuator &homePodActuator;

  LQtHomePodState *m_lQtHomePodState{ nullptr };
  LQtThermostatState *m_lQtThermostatState{ nullptr };
};
