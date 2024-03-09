#pragma once

#include "NonCopyable.h"
#include <QDebug>

template<typename T>
class LQtActuator: public NonCopyable<LQtActuator<T>>
{
public:
    void setState(T new_state){
        state = new_state;
    }
    T& getState() const {
        return state;
    }
    virtual void actionState(){
       qDebug() << "Current state: " << state;
    }

protected:
    T state{};
};
