import 'package:alisatiyor/app/l10n/app_localizations.dart';
import 'package:alisatiyor/app/l10n/localization_manager.dart';
import 'package:alisatiyor/app/routes/app_routes.dart';
import 'package:alisatiyor/app/themes/app_theme.dart';
import 'package:alisatiyor/app/themes/theme_manager.dart';
import 'package:alisatiyor/core/connection/connectivity_provider.dart';
import 'package:alisatiyor/core/globals/globals.dart';
import 'package:alisatiyor/core/widgets/connection/no_network_widget.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final _appRouter = AppRouter();
  final _themeManager = ThemeManager.instance;
  final _localizationManager = LocalizationManager.instance;
  late final AppLifecycleListener _listener;
  @override
  void initState() {
    super.initState();

    // Initialize the AppLifecycleListener class and pass callbacks
    _listener = AppLifecycleListener(
      onStateChange: _onStateChanged,
    );
  }

  @override
  void dispose() {
    // Do not forget to dispose the listener
    _listener.dispose();
    super.dispose();
  }

  // Listen to the app lifecycle state changes
  void _onStateChanged(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        context.read<ConnectivityProvider>().checkConnectivity();
      case AppLifecycleState.detached:
      case AppLifecycleState.inactive:
      case AppLifecycleState.hidden:
      case AppLifecycleState.paused:
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: _localizationManager,
      builder: (context, child) => ListenableBuilder(
        listenable: _themeManager,
        builder: (context, child) => Consumer<ConnectivityProvider>(
          builder: (context, connectivity, child) => MaterialApp.router(
            scaffoldMessengerKey: Globals.scaffoldMessengerKey,
            scrollBehavior:
                const MaterialScrollBehavior().copyWith(overscroll: false),
            theme: AppTheme(Theme.of(context).textTheme).light(),
            themeMode: _themeManager.themeMode,
            darkTheme: AppTheme(Theme.of(context).textTheme).dark(),
            highContrastTheme:
                AppTheme(Theme.of(context).textTheme).lightHighContrast(),
            highContrastDarkTheme:
                AppTheme(Theme.of(context).textTheme).darkHighContrast(),
            locale: _localizationManager.currentLanguage.locale,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            routerConfig: _appRouter.config(),
            builder: (context, router) {
              print('network status: ${connectivity.wifiConnectionStatus}');
              if (connectivity.wifiConnectionStatus ==
                  ConnectivityResult.none) {
                return const NoNetworkWidget();
              } else {
                return router ?? const SizedBox();
              }
            },
          ),
        ),
      ),
    );
  }
}
