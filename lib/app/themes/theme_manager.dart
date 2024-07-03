import 'dart:developer';

import 'package:alisatiyor/services/local/hive_service.dart';
import 'package:flutter/material.dart';

class ThemeManager with ChangeNotifier {
  ThemeManager._();

  static final ThemeManager _instance = ThemeManager._();
  static ThemeManager get instance => _instance;
  final HiveService _hiveService = HiveService.instance;
  late ThemeMode themeMode;

  Future<void> initializeTheme() async {
    try {
      final isDarkMode = await _hiveService.getDataFromBox(
          BoxNames.common.name, BoxKeys.darkMode.name);
      log('darkmode: $isDarkMode');
      if (isDarkMode == true) {
        themeMode = ThemeMode.dark;
      } else {
        themeMode = ThemeMode.system;
      }
    } catch (e) {
      log('error in initializeTheme');
    }
  }

  void toggleTheme(ThemeMode? themeMode) {
    if (themeMode == null) return;
    if (this.themeMode == themeMode) return;
    this.themeMode = themeMode;
    if (themeMode == ThemeMode.dark) {
      _hiveService.writeDataToBox(
          BoxNames.common.name, BoxKeys.darkMode.name, true);
    } else {
      _hiveService.writeDataToBox(
          BoxNames.common.name, BoxKeys.darkMode.name, false);
    }
    notifyListeners();
  }
}
