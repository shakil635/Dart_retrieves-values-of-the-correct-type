/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/dart_generic_cache_system_base.dart';

// TODO: Export any libraries intended for clients of this package.

class Cache<T> {
  T? value;
  void store(T value) {
    this.value = value;
  }

  T? retrieve() {
    return value;
  }

  void clear() {
    this.value = null;
  }
}

/*
Practice Question 2: Generic Cache System
Question:
Create a generic class Cache<T> that 
can store a value of type T.
Implement methods store(T value) to 
store a value and retrieve to retrieve the value.
Add a method clear to invalidate the cache.
 */