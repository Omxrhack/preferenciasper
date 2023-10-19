import 'package:flutter/material.dart';

class ThemeProvaider extends ChangeNotifier {
  ThemeData currentTheme;
  ThemeProvaider({
    required bool isDarkmode,
  }) : currentTheme = isDarkmode ? ThemeData.dark() : ThemeData.light();
  setLightMode() {
    currentTheme = ThemeData.light();
    notifyListeners();
  }

  setDarkMode() {
    currentTheme = ThemeData.dark();
    notifyListeners();
  }
}
