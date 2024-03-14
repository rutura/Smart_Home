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

/**
 * @brief LQtDriverService class
 * - Manages the driver core(A resource in this case).
 * - QML creatable
 *
 */
class LQtDriverService : public QObject
{
  Q_OBJECT
  QML_ELEMENT
  Q_PROPERTY(double temperature READ temperature WRITE setTemperature NOTIFY temperatureChanged)
  Q_PROPERTY(int humidity READ humidity WRITE setHumidity NOTIFY humidityChanged)
  Q_PROPERTY(bool airPurifierState READ airPurifierState WRITE setAirPurifierState NOTIFY airPurifierStateChanged)
  Q_PROPERTY(
    LQtHomePodState *lqtHomePodState READ lqtHomePodState WRITE setLqtHomePodState NOTIFY lqtHomePodStateChanged)
  Q_PROPERTY(LQtThermostatState *lqtThermostatState READ lqtThermostatState WRITE setLqtThermostatState NOTIFY
      lqtThermostatStateChanged)
  Q_PROPERTY(bool tvState READ tvState WRITE setTvState NOTIFY tvStateChanged)
  Q_PROPERTY(bool wifiState READ wifiState WRITE setWifiState NOTIFY wifiStateChanged)

public:
  LQtDriverService(QObject *parent = nullptr);

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

signals:
  void temperatureChanged();
  void humidityChanged();
  void airPurifierStateChanged();
  void lqtHomePodStateChanged();
  void lqtThermostatStateChanged();
  void tvStateChanged();
  void wifiStateChanged();


private:
  TemperatureSensor &temperatureSensor;
  HumiditySensor &humiditySensor;
  AirPurifierActuator &airPurifierActuator;
  ThermostatActuator &thermostatActuator;
  TVActuator &tvActuator;
  WiFiActuator &wiFiActuator;
  HomePodActuator &homePodActuator;

private:
  double m_temperature;
  int m_humidity;
  bool m_airPurifierState;
  LQtHomePodState *m_lQtHomePodState{ nullptr };
  LQtThermostatState *m_lQtThermostatState{ nullptr };
  bool m_tvState;
  bool m_wifiState;
};
