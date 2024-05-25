import 'package:alisatiyor/app/l10n/app_localizations.dart';
import 'package:alisatiyor/app/l10n/localization_manager.dart';
import 'package:alisatiyor/app/themes/theme_manager.dart';
import 'package:alisatiyor/core/snackbar/snackbar_messenger.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AccountView extends StatelessWidget with SnackBarMessengerMixin {
  AccountView({super.key});
  final _themeManager = ThemeManager.instance;
  final _localizationManager = LocalizationManager.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ListenableBuilder(
              listenable: _themeManager,
              builder: (context, child) => Switch.adaptive(
                value: _themeManager.themeMode != ThemeMode.light,
                onChanged: (value) {
                  _themeManager.toggleTheme(
                      _themeManager.themeMode == ThemeMode.light
                          ? ThemeMode.dark
                          : ThemeMode.light);
                },
              ),
            ),
            ListenableBuilder(
              listenable: _localizationManager,
              builder: (context, child) => DropdownButton(
                value: _localizationManager.currentLanguage,
                items: Language.values
                    .map((e) => DropdownMenuItem(
                          value: e,
                          child: Text(e.name),
                        ))
                    .toList(),
                onChanged: (value) {
                  if (value != null &&
                      value != _localizationManager.currentLanguage) {
                    _localizationManager.changeLanguage(value);
                  }
                },
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  messenger.showSnackBar(
                      message: AppLocalizations.of(context)!.greeting);
                },
                child: Text(
                  AppLocalizations.of(context)!.showSnackbar,
                ))
          ],
        ),
      ),
    );
  }
}
