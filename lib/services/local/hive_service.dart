import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

enum BoxNames { jwt, isFirstTime, isSignedin }

enum BoxKeys { accessToken, refreshToken, isFirstTime, isSignedin }

class HiveService {
  HiveService._();
  static final HiveService instance = HiveService._();
  late dynamic isFirstTime;

  // To set the first time the app is opened
  Future<void> setOpenedForFirstTime() async {
    await writeDataToBox(
        BoxNames.isFirstTime.name, BoxKeys.isFirstTime.name, false);
  }

  // To get the is app opened before
  Future<dynamic> getIsFirstTime() async {
    return isFirstTime = await getDataFromBox(
        BoxNames.isFirstTime.name, BoxKeys.isFirstTime.name);
  }

  static Future<void> initHive() async {
    final appDocumentDirectory = await getApplicationDocumentsDirectory();
    Hive.init(appDocumentDirectory.path);

    const secureStorage = FlutterSecureStorage();
    // if key not exists return null
    final encryptionKeyString = await secureStorage.read(key: 'key');
    if (encryptionKeyString == null) {
      final key = Hive.generateSecureKey();
      await secureStorage.write(
        key: 'key',
        value: base64UrlEncode(key),
      );
    }
    final key = await secureStorage.read(key: 'key');
    final encryptionKeyUint8List = base64Url.decode(key!);

    await Hive.openBox<dynamic>(BoxNames.jwt.name,
        encryptionCipher: HiveAesCipher(encryptionKeyUint8List));
    await instance.getIsFirstTime();
  }

  Future<void> writeDataToBox(String boxName, String key, dynamic value) async {
    if (Hive.isBoxOpen(boxName) == false) {
      final box = await Hive.openBox<dynamic>(boxName);
      await box.put(key, value);
    } else {
      final box = Hive.box<dynamic>(boxName);
      await box.put(key, value);
    }
  }

  Future<void> clearBox(String boxName) async {
    Box<dynamic> box;
    if (Hive.isBoxOpen(boxName) == false) {
      box = await Hive.openBox<dynamic>(boxName);
    } else {
      box = Hive.box<dynamic>(boxName);
    }
    await box.clear();
  }

  Future<void> deleteBox(String boxName) async {
    if (Hive.isBoxOpen(boxName) == true) {
      await Hive.deleteBoxFromDisk(boxName);
    }
  }

  Future<dynamic> getDataFromBox(String boxName, String key) async {
    if (Hive.isBoxOpen(boxName) == false) {
      final box = await Hive.openBox<dynamic>(boxName);
      return box.get(key);
    } else {
      final box = Hive.box<dynamic>(boxName);
      return box.get(key);
    }
  }
}
