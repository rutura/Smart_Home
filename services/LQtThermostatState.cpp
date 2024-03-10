
#include "LQtThermostatState.h"
LQtThermostatState::LQtThermostatState(QObject *parent) : QObject(parent) {}
ThermostatStates LQtThermostatState::thermostatStates() const { return m_thermostatStates; }
void LQtThermostatState::setThermostatStates(ThermostatStates newThermostatStates)
{
  if (newThermostatStates == m_thermostatStates) { return; }
  m_thermostatStates = newThermostatStates;
  emit thermostatStatesChanged();
}
