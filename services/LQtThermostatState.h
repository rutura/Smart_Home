//
// Created by koech on 3/10/24.
//

#ifndef SMARTHOME_LQTTHERMOSTATSTATE_H
#define SMARTHOME_LQTTHERMOSTATSTATE_H

#include <QObject>
#include <QtQmlIntegration>
#include <ThermostatActuator.h>

class LQtThermostatState : public QObject
{
  Q_OBJECT
  QML_ELEMENT
  Q_PROPERTY(
  ThermostatStates thermostatStates READ thermostatStates WRITE setThermostatStates NOTIFY thermostatStatesChanged)
public:
  explicit LQtThermostatState(QObject *parent = nullptr);
  Q_ENUM(FanLevels);
  Q_ENUM(ThermostatFanModes);

  ThermostatStates thermostatStates() const;
  void setThermostatStates(ThermostatStates newThermostatStates);
signals:
  void thermostatStatesChanged();

private:
  ThermostatStates m_thermostatStates{};
};

#endif// SMARTHOME_LQTTHERMOSTATSTATE_H
