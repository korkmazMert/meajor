import 'package:alisatiyor/app/l10n/app_localizations.dart';
import 'package:alisatiyor/app/l10n/localization_manager.dart';
import 'package:alisatiyor/app/routes/app_routes.dart';
import 'package:alisatiyor/app/themes/theme_manager.dart';
import 'package:alisatiyor/core/snackbar/snackbar_messenger_mixin.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AccountView extends StatelessWidget with SnackBarMessengerMixin {
  AccountView({super.key});
  final _themeManager = ThemeManager.instance;
  final _localizationManager = LocalizationManager.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            ListTile(
              title: const Text('Giriş Yap'),
              trailing: const Icon(Icons.login),
              onTap: () {
                context.router.push(const SigninRoute());
              },
            ),
            ListenableBuilder(
              listenable: _themeManager,
              builder: (context, child) => ListTile(
                title: const Text('Karanlık Mod'),
                trailing: Switch.adaptive(
                  value: _themeManager.themeMode != ThemeMode.light,
                  onChanged: (value) {
                    _themeManager.toggleTheme(
                        _themeManager.themeMode == ThemeMode.light
                            ? ThemeMode.dark
                            : ThemeMode.light);
                  },
                ),
              ),
            ),
            ListenableBuilder(
              listenable: _localizationManager,
              builder: (context, child) => ListTile(
                title: const Text('Dil'),
                trailing: DropdownButton(
                  isDense: true,
                  underline: const SizedBox.shrink(),
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
