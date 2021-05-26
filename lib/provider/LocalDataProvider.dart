import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

const userKey = 'user';

class LocalDataProvider{
  static final LocalDataProvider _instance = LocalDataProvider._();
  static LocalDataProvider get instance => _instance;
  static SharedPreferences? _sharedPreferences;

  const LocalDataProvider._();

  static Future<void> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  Future<bool?> setString(String key, Map<String, dynamic>? map) async {
    final json = jsonEncode(map);
    return _sharedPreferences?.setString(key, json);
  }

  Map<String, dynamic>? getString(String key) {
    final json = _sharedPreferences?.getString(key) ?? null;
    return (json != null) ? jsonDecode(json) : null;
  }

  Future<bool>? remove(String key) => _sharedPreferences?.remove(key);
}