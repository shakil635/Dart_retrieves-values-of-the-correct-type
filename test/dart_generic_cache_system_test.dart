import 'package:dart_generic_cache_system/dart_generic_cache_system.dart';
import 'package:test/test.dart';

void main() {
  test('Cache stores and retrieves values of the correct type', () {
    var intCache = Cache<int>();
    intCache.store(100);
    expect(intCache.retrieve(), equals(100));
    expect(intCache.retrieve(), isA<int>());

    var stringCache = Cache<String>();
    stringCache.store('Hello');
    expect(stringCache.retrieve(), equals('Hello'));
    expect(stringCache.retrieve(), isA<String>());
  });

  test('Cache clear method invalidates the stored value', () {
    var cache = Cache<String>();
    cache.store('Test');
    cache.clear();
    expect(cache.retrieve(), isNull);
  });

  test('Cache handles null values correctly', () {
    var cache = Cache<int?>();
    cache.store(null);
    expect(cache.retrieve(), isNull);
  });
}
