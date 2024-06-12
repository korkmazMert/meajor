import 'package:alisatiyor/app/app.dart';
import 'package:alisatiyor/app/view/cubit/general_cubit/general_cubit_cubit.dart';
import 'package:alisatiyor/app/view/cubit/image_cubit/image_cubit.dart';
import 'package:alisatiyor/core/connection/connectivity_provider.dart';
import 'package:alisatiyor/init/init.dart';
import 'package:alisatiyor/services/websocket/websocket_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  //initialize app
  WidgetsFlutterBinding.ensureInitialized();
  await AppInitializer.initialize();
  await WebsocketManager.initializeWebsocket();

  runApp(
    ChangeNotifierProvider(
      create: (context) => ConnectivityProvider(),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => GeneralCubit()),
          BlocProvider(create: (context) => ImageCubit()..getUserImages()),
        ],
        child: const App(),
      ),
    ),
  );

  //setting portrait orientation
  WidgetsBinding.instance.addPostFrameCallback((_) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  });
}
