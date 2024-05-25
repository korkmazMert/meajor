import 'app_localizations.dart';

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get helloWorld => 'Merhaba, Dünya!';

  @override
  String get greeting => 'Uygulamama hoş geldiniz!';

  @override
  String get buttonText => 'Bana tıkla';

  @override
  String get errorMessage => 'Bir hata oluştu';

  @override
  String get successMessage => 'İşlem başarılı';

  @override
  String get showSnackbar => 'Snackbar göster';
}
