import 'package:shared_preferences/shared_preferences.dart';

class PreferencesHelper {
  SharedPreferences? sharedPreferences;
  final String isDarkKey = "PREFERENCE_IS_DARK";

  Future<SharedPreferences> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences!;
  }

  SharedPreferences? getInstance() {
    return sharedPreferences;
  }

  void setIsDark(bool isDark) {
    sharedPreferences?.setBool(isDarkKey, isDark);
  }

  bool isDark() {
    return sharedPreferences?.getBool(isDarkKey) ?? false;
  }
}
