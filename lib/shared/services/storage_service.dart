import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class StorageService {
  static StorageService? _instance;
  static StorageService get instance => _instance ??= StorageService._();
  StorageService._();
  
  late SharedPreferences _prefs;
  
  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }
  
  // String operations
  Future<void> setString(String key, String value) async {
    await _prefs.setString(key, value);
  }
  
  String? getString(String key) {
    return _prefs.getString(key);
  }
  
  // Int operations
  Future<void> setInt(String key, int value) async {
    await _prefs.setInt(key, value);
  }
  
  int? getInt(String key) {
    return _prefs.getInt(key);
  }
  
  // Bool operations
  Future<void> setBool(String key, bool value) async {
    await _prefs.setBool(key, value);
  }
  
  bool? getBool(String key) {
    return _prefs.getBool(key);
  }
  
  // Double operations
  Future<void> setDouble(String key, double value) async {
    await _prefs.setDouble(key, value);
  }
  
  double? getDouble(String key) {
    return _prefs.getDouble(key);
  }
  
  // List operations
  Future<void> setStringList(String key, List<String> value) async {
    await _prefs.setStringList(key, value);
  }
  
  List<String>? getStringList(String key) {
    return _prefs.getStringList(key);
  }
  
  // JSON operations
  Future<void> setJson(String key, Map<String, dynamic> value) async {
    await _prefs.setString(key, json.encode(value));
  }
  
  Map<String, dynamic>? getJson(String key) {
    final jsonString = _prefs.getString(key);
    if (jsonString != null) {
      try {
        return json.decode(jsonString) as Map<String, dynamic>;
      } catch (e) {
        return null;
      }
    }
    return null;
  }
  
  // Remove operations
  Future<void> remove(String key) async {
    await _prefs.remove(key);
  }
  
  Future<void> clear() async {
    await _prefs.clear();
  }
  
  bool containsKey(String key) {
    return _prefs.containsKey(key);
  }
  
  Set<String> getKeys() {
    return _prefs.getKeys();
  }
}
