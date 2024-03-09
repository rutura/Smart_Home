#pragma once

#include <QMutex>

template<typename T>
class NonCopyable {
protected:
    NonCopyable() = default;
    ~NonCopyable() = default;
public:
    NonCopyable(const NonCopyable &) = delete;
    NonCopyable &operator=(const NonCopyable &) = delete;
    static T& get_default_instance(){
        QMutexLocker locker(&m_mutex);
        static T instance;
        return instance;
    }
private:
    static QMutex m_mutex;
};