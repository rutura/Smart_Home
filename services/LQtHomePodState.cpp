

#include "LQtHomePodState.h"
LQtHomePodState::LQtHomePodState(QObject *parent) : QObject(parent) {}
HomePodStates LQtHomePodState::homePodState() const { return m_homePodState; }
void LQtHomePodState::setHomePodState(HomePodStates newHomePodState)
{
  if (newHomePodState == m_homePodState) { return; }
  m_homePodState = newHomePodState;
  emit homePodStateChanged();
}
