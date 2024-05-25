import 'package:alisatiyor/app/app.dart';
import 'package:alisatiyor/core/connection/connectivity_provider.dart';
import 'package:alisatiyor/init/init.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  //initialize app
  WidgetsFlutterBinding.ensureInitialized();
  await AppInitializer.initialize();

  runApp(
    ChangeNotifierProvider(
      create: (context) => ConnectivityProvider(),
      child: const App(),
    ),
  );

  //setting portrait orientation
  WidgetsBinding.instance.addPostFrameCallback((_) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  });
}
