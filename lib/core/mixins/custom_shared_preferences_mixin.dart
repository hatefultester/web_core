import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

mixin CustomSharedPreferencesMixin {
  Future<SharedPreferences> get _instance => SharedPreferences.getInstance();

  Future<void> setString(String key, String value) async {
    final prefs = await _instance;
    await prefs.setString(key, value);
  }

  Future<String> getString(String key, [String defaultValue = '']) async {
    final prefs = await _instance;
    return prefs.getString(key) ?? defaultValue;
  }

  Future<void> setInt(String key, int value) async {
    final prefs = await _instance;
    await prefs.setInt(key, value);
  }

  Future<int> getInt(String key, [int defaultValue = 0]) async {
    final prefs = await _instance;
    return prefs.getInt(key) ?? defaultValue;
  }

  Future<void> setBool(String key, bool value) async {
    final prefs = await _instance;
    await prefs.setBool(key, value);
  }

  Future<bool> getBool(String key, [bool defaultValue = false]) async {
    final prefs = await _instance;
    return prefs.getBool(key) ?? defaultValue;
  }

  Future<void> remove(String key) async {
    final prefs = await _instance;
    await prefs.remove(key);
  }

  Future<void> removeAll() async {
    final prefs = await _instance;
    await prefs.clear();
  }

  Future<dynamic> getObject(String key) async {
    final stringData = await getString(key);
    if (stringData.isNotEmpty) {
      return jsonDecode(stringData);
    }
    return null;
  }
}