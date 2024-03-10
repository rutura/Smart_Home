#pragma once

template<typename T> class NonCopyable
{
public:
  NonCopyable(const NonCopyable &) = delete;
  NonCopyable &operator=(const NonCopyable &) = delete;
  static T &get_default_instance()
  {
    static T instance;
    return instance;
  }

protected:
  NonCopyable() = default;
  ~NonCopyable() = default;
};