#pragma once
#include "NonCopyable.h"
#include <QRandomGenerator>
#include <QtTypes>

template<typename T>
class LQtSensor : NonCopyable<LQtSensor<T>>
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
    void reset()
    {
        value = 0; // does not consider strings, character buffer
    }

protected:
    T value{};
};
