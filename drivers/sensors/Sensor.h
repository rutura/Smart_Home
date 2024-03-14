#pragma once
#include <NonCopyable.h>
#include <QRandomGenerator>
#include <QtTypes>

/**
 * @brief Template for sensor common methods
 * @tparam T Sensor value type
 */
template<typename T> class Sensor
{
public:
  virtual T read()
  {
    value = QRandomGenerator::global()->bounded(20, 100);
    return value;
  }
  void reset(T newValue = 0) { value = newValue; }

protected:
  T value{};
};
