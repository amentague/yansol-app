import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  static var PREFERENCE_ID = "PREFERENCE_ID";
  static var ISFIRSTTIME = "ISFIRSTTIME";
  static var PREFERENCE_USER_ID = "PREFERENCE_USER_ID";

  static SharedPref? _instance;

  static SharedPref getInstance() {
    if (_instance == null) {
      return _instance = SharedPref();
    } else {
      return _instance!;
    }
  }

  late SharedPreferences _preferences;

  setBoolean(String key, bool value) async {
    _preferences.setBool(key, value);
  }

  setisshow(String key, bool value) async {
    SharedPreferences _preferences = await SharedPreferences.getInstance();
    await _preferences.setBool('isshow', true);
  }

  clear() async {
    _preferences.clear();
  }

  Future<bool> getBoolean(String key) async {
    _preferences = await SharedPreferences.getInstance();

    return _preferences.getBool(key) ?? false;
  }

  Future<bool> getisshow(String key) async {
    _preferences = await SharedPreferences.getInstance();

    return _preferences.getBool(key) ?? false;
  }

  setString(String key, String value) async {
    _preferences = await SharedPreferences.getInstance();
    _preferences.setString(key, value);
  }

  Future<String?> getString(String key) async {
    _preferences = await SharedPreferences.getInstance();
    String? res = _preferences.getString(key);
    return res;
  }
}
