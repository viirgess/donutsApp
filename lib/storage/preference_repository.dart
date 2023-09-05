import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

class PreferenceRepository {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<void> saveString(key, value) async {
    final SharedPreferences prefs = await _prefs;
    prefs.setString(key, value);
  }

  FutureOr<String> getString(key) async {
    final SharedPreferences prefs = await _prefs;
    final String value = prefs.getString(key) ?? '';
    return value;
  }

  kill() async {
    final SharedPreferences prefs = await _prefs;
    await prefs.clear();
  }
}
