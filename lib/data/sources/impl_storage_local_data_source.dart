import 'package:shared_preferences/shared_preferences.dart';

import '../repositories/storage_local_data_source.dart';

class ImplStorageLocalDataSource implements StorageLocalDataSource {
  final SharedPreferencesAsync _prefs;

  ImplStorageLocalDataSource({required SharedPreferencesAsync prefs})
      : _prefs = prefs;

  @override
  Future<T?> get<T>({required String key}) async {
    return switch (T) {
      const (String) => _prefs.getString(key),
      const (int) => _prefs.getInt(key),
      const (bool) => _prefs.getBool(key),
      const (List<String>) => _prefs.getStringList(key),
      const (double) => _prefs.getDouble(key),
      _ => null
    } as T?;
  }

  @override
  Future<void> remove({required String key}) {
    return _prefs.remove(key);
  }

  @override
  Future<void> set<T>(String key, T value) async {
    return switch (value) {
      String() => _prefs.setString(key, value),
      int() => _prefs.setInt(key, value),
      bool() => _prefs.setBool(key, value),
      List<String>() => _prefs.setStringList(key, value),
      double() => _prefs.setDouble(key, value),
      _ => null
    };
  }
}
