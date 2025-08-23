import 'package:hive/hive.dart';

class CacheManager {
  static const String _boxName = 'app_cache';
  late Box _box;

  Future<void> init() async {
    _box = await Hive.openBox(_boxName);
  }

  Future<void> saveData({
    required String key,
    required Map<String, dynamic> data,
    required Duration duration,
  }) async {
    final cacheItem = {
      "data": data,
      "timestamp": DateTime.now().millisecondsSinceEpoch,
      "duration": duration.inMilliseconds,
    };
    await _box.put(key, cacheItem);
  }

  Future<void> cacheList<T>({
    required String key,
    required List<T> items,
    required Map<String, dynamic> Function(T obj) toJson,
  }) async {
    final jsonList = items.map((e) => toJson(e)).toList();
    await _box.put(key, jsonList);
  }

  Future<void> addToCachedList<T>({
    required String key,
    required T item,
    required Map<String, dynamic> Function(T obj) toJson,
  }) async {
    final cachedData = _box.get(key);

    List<Map<String, dynamic>> items = [];
    if (cachedData != null) {
      items = (cachedData as List)
          .map((e) => Map<String, dynamic>.from(e))
          .toList();
    }

    items.add(toJson(item));
    await _box.put(key, items);
  }

  Future<Map<String, dynamic>?> getRawData(String key) async {
    final cacheItem = _box.get(key);
    if (cacheItem == null) return null;

    final timestamp = cacheItem["timestamp"] as int;
    final duration = cacheItem["duration"] as int;

    final isValid =
        DateTime.now().millisecondsSinceEpoch - timestamp <= duration;

    if (isValid) {
      return Map<String, dynamic>.from(cacheItem["data"]);
    } else {
      await _box.delete(key);
      return null;
    }
  }

  List<T> getCachedList<T>({
    required String key,
    required T Function(Map<String, dynamic> json) fromJson,
  }) {
    final cachedData = _box.get(key);

    if (cachedData == null) return [];

    return (cachedData as List)
        .map((e) => fromJson(Map<String, dynamic>.from(e)))
        .toList();
  }

  Future<void> removeData(String key) async => await _box.delete(key);

  Future<void> clearAll() async => await _box.clear();
}
