import 'package:flutter/material.dart';

class ThemeManager with ChangeNotifier {
  ThemeManager._();

  static final ThemeManager _instance = ThemeManager._();
  static ThemeManager get instance => _instance;

  ThemeMode themeMode = ThemeMode.light;

  void toggleTheme(ThemeMode? themeMode) {
    if (themeMode == null) return;
    if (this.themeMode == themeMode) return;
    this.themeMode = themeMode;
    notifyListeners();
  }
}
