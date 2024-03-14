#pragma once

#include <NonCopyable.h>
#include <QDebug>

/**
 * @brief Template with actuator common methods
 * @tparam T - Actuator state type
 */
template<typename T> class Actuator
{
public:
  void setState(T new_state)
  {
    state = new_state;
    actionState();
  }
  T getState() { return state; }

protected:
  T state{};
  virtual void actionState() { qDebug() << "Actioning current state: " << state; }
};
