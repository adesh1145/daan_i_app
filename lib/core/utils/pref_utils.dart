import 'package:shared_preferences/shared_preferences.dart';

import '../constants/constants.dart';

class AppStorage {
  static SharedPreferences? _sharedPreferences;

  AppStorage() {
    init();
  }

  Future<void> init() async {
    _sharedPreferences ??= await SharedPreferences.getInstance();
    print('SharedPreference Initialized');
  }

  static String? get getUserId =>
      _sharedPreferences?.getString(Constants.userId);
  static String? get getEmail => _sharedPreferences?.getString(Constants.email);
  static String? get getFcmToken =>
      _sharedPreferences?.getString(Constants.fcmToken);
  static String? get getToken => _sharedPreferences?.getString(Constants.token);

  static void setToken(String token) =>
      _sharedPreferences?.setString(Constants.token, token);
  static void setFcmToken(String fcmToken) =>
      _sharedPreferences?.setString(Constants.fcmToken, fcmToken);
  static void setUserId(String userId) =>
      _sharedPreferences?.setString(Constants.userId, userId);
  static void setEmail(String email) =>
      _sharedPreferences?.setString(Constants.email, email);

  void clearData() async {
    _sharedPreferences?.clear();
  }
}
