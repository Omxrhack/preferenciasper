// ignore_for_file: prefer_final_fields, unused_field

import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static late SharedPreferences _prefs;

  static String _name = 'No name specified';
  static bool _isDarkmode = false;
  static int _genere = 1;
  static Future intit() async {
    _prefs = await SharedPreferences.getInstance();
    _prefs.clear();
  }

  static String get name {
    return _prefs.getString('name') ?? _name;
  }

  static set name(String value) {
    _name = value;
    _prefs.setString('name', value);
  }

  static bool get isDarkmode {
    return _prefs.getBool('isDarkmode!') ?? _isDarkmode;
  }

  static set isDarkmode(bool value) {
    _isDarkmode = value;
    _prefs.setBool('isDarkmode!', value);
  }

  static int get genere {
    return _prefs.getInt('genere') ?? _genere;
  }

  static set genere(int value) {
    _genere = value;
    _prefs.setInt('genere', value);
  }
}
