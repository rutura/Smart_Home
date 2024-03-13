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
  Q_PROPERTY(bool isOn READ isOn WRITE setIsOn NOTIFY isOnChanged)
  Q_PROPERTY(_FanLevels fanLevel READ fanLevel WRITE setFanLevel NOTIFY fanLevelChanged)
  Q_PROPERTY(double targetTemperature READ targetTemperature WRITE setTargetTemperature NOTIFY targetTemperatureChanged)
  Q_PROPERTY(_ThermostatFanModes fanMode READ fanMode WRITE setFanMode NOTIFY fanModeChanged)
public:
  explicit LQtThermostatState(QObject *parent = nullptr);
  enum _FanLevels {
    LEVEL_1 = FanLevels::LEVEL_1,
    LEVEL_2 = FanLevels::LEVEL_2,
    LEVEL_3 = FanLevels::LEVEL_3,
    LEVEL_4 = FanLevels::LEVEL_4,
    LEVEL_5 = FanLevels::LEVEL_5
  };
  Q_ENUM(_FanLevels);
  enum _ThermostatFanModes { AUTO_MODE = ThermostatFanModes::AUTO_MODE, TIMER_MODE = ThermostatFanModes::TIMER_MODE };
  Q_ENUM(_ThermostatFanModes);

  bool isOn() const;
  void setIsOn(bool newOnState);

  _FanLevels fanLevel() const;
  void setFanLevel(_FanLevels newFanLevel);

  double targetTemperature() const;
  void setTargetTemperature(double newTargetTemperature);

  _ThermostatFanModes fanMode() const;
  void setFanMode(_ThermostatFanModes newFanMode);

  ThermostatStates getThermostatStates() const;
  // bool operator==(const LQtThermostatState &other) const;
signals:
  void isOnChanged();
  void fanLevelChanged();
  void targetTemperatureChanged();
  void fanModeChanged();

private:
  ThermostatFanModes getFanMode() const;
  FanLevels getFanLevel() const;

private:
  _FanLevels m_fanLevel;
  _ThermostatFanModes m_fanMode;
  bool m_isOn;
  double m_targetTempeature;
};

#endif// SMARTHOME_LQTTHERMOSTATSTATE_H
