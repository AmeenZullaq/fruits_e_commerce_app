import 'package:shared_preferences/shared_preferences.dart';

abstract class Prefs {
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
}
