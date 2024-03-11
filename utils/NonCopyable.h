#pragma once
/**
 * Ensure safety in resource-managing classes.
 * Implements Meyer's singleton pattern
 * @tparam T
 */
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