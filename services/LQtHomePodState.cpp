#include "LQtHomePodState.h"

LQtHomePodState::LQtHomePodState(QObject *parent) : QObject(parent) {}

LQtHomePodState::_HomePodStates LQtHomePodState::homePodState() const { return m_homePodState; }

HomePodStates LQtHomePodState::getHomePodState() const
{
  switch (m_homePodState) {
  case _HomePodStates::PLAYING:
    return HomePodStates::PLAYING;
  case _HomePodStates::STOPPED:
    return HomePodStates::STOPPED;
  case _HomePodStates::PAUSED:
    return HomePodStates::PAUSED;
  }
  return HomePodStates::STOPPED;
}

void LQtHomePodState::setHomePodState(_HomePodStates newHomePodState)
{
  if (newHomePodState == m_homePodState) { return; }
  m_homePodState = newHomePodState;
  emit homePodStateChanged();
}
