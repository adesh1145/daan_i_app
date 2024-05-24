import 'package:shared_preferences/shared_preferences.dart';

import '../constants/constants.dart';
import 'logger.dart';

class AppStorage {
  static late SharedPreferences _sharedPreferences;

  static Future<void> init() async {
    _sharedPreferences = await SharedPreferences.getInstance();

    Logger.logPrint('SharedPreference Initialized');
  }

  static String? get getUserId =>
      _sharedPreferences.getString(Constants.userId);
  static String? get getEmail => _sharedPreferences.getString(Constants.email);
  static String? get getFcmToken =>
      _sharedPreferences.getString(Constants.fcmToken);
  static String? get getToken => _sharedPreferences.getString(Constants.token);

  static Future<void> setToken(String token) async =>
      await _sharedPreferences.setString(Constants.token, token);
  static Future<void> setFcmToken(String fcmToken) async =>
      await _sharedPreferences.setString(Constants.fcmToken, fcmToken);
  static Future<void> setUserId(String userId) async =>
      await _sharedPreferences.setString(Constants.userId, userId);
  static Future<void> setEmail(String email) async =>
      await _sharedPreferences.setString(Constants.email, email);

  static void clearData() async {
    _sharedPreferences.clear();
  }
}
