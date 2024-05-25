import 'package:flutter/material.dart';

enum Language { turkish, english }

extension LanguageExtension on Language {
  Locale get locale {
    switch (this) {
      case Language.turkish:
        return const Locale('tr', 'TR');
      case Language.english:
        return const Locale('en', 'US');
    }
  }

  String get name {
    switch (this) {
      case Language.turkish:
        return 'Türkçe';
      case Language.english:
        return 'English';
    }
  }
}

class LocalizationManager with ChangeNotifier {
  LocalizationManager._();

  static final LocalizationManager _instance = LocalizationManager._();
  static LocalizationManager get instance => _instance;

  static Locale get langTurkish => Language.turkish.locale;
  static Locale get langEnglish => Language.english.locale;
  Language currentLanguage = Language.turkish;

  void changeLanguage(Language newLanguage) {
    currentLanguage = newLanguage;
    notifyListeners();
  }
}
