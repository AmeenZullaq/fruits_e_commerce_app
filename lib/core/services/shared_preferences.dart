import 'package:shared_preferences/shared_preferences.dart';

abstract class SharedPrefs {
  static late SharedPreferences _initState;

  static Future<void> init() async {
    _initState = await SharedPreferences.getInstance();
  }

  static void setBool(String key, bool value) {
    _initState.setBool(key, value);
  }

  static bool getBool(String key) {
    return _initState.getBool(key) ?? false;
  }

  static void setString(String key, String value) {
    _initState.setString(key, value);
  }

  static String? getString(String key) {
    return _initState.getString(key);
  }

  static void setStringList(String key, List<String> value) {
    _initState.setStringList(key, value);
  }

  static List<String>? getStringList(String key) {
    return _initState.getStringList(key);
  }
}
