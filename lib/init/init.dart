import 'package:alisatiyor/services/local/hive_service.dart';
import 'package:alisatiyor/services/network/network_manager.dart';

class AppInitializer {
  AppInitializer._();

  static Future<void> initialize() async {
    //initBaseService depends on initHive
    await HiveService.initHive()
        .then((value) => NetworkManager.instance.initBaseService());
  }
}
