#pragma once
#include <NonCopyable.h>
#include <QRandomGenerator>
#include <QtTypes>

template<typename T> class Sensor
{
public:
  virtual T read()
  {
    // if not overridden generate random values
    if constexpr (std::is_same<T, int>::value) {
      value = QRandomGenerator::global()->generate();
    } else {
      value = QRandomGenerator::global()->generateDouble();
    }
    return value;
  }
  void reset(T newValue = 0) { value = newValue; }

protected:
  T value{};
};
