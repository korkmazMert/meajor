import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get helloWorld => 'Hello, World!';

  @override
  String get greeting => 'Welcome to my app!';

  @override
  String get buttonText => 'Click me';

  @override
  String get errorMessage => 'An error occurred';

  @override
  String get successMessage => 'Operation successful';

  @override
  String get showSnackbar => 'Show snackbar';
}
