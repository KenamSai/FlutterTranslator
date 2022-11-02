import 'package:shared_preferences/shared_preferences.dart';

class sharedPref {
  writeData(String key, dynamic value) async {
    final pref = await SharedPreferences.getInstance();
    if (value is String) {
      pref.setString(key, value);
    } else if (value is int) {
      pref.setInt(key, value);
    } else if (value is bool) {
      pref.setBool(key, value);
    } else if (value is double) {
      pref.setDouble(key, value);
    } else if (value is List<String>) {
      pref.setStringList(key, value);
    }
  }

  Future<dynamic> readData(String key) async {
    final pref = await SharedPreferences.getInstance();
    return pref.get(key);
  }

  clearData() async {
    final pref = await SharedPreferences.getInstance();
    pref.clear();
  }
}
