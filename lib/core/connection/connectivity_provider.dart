import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class ConnectivityProvider with ChangeNotifier {
  ConnectivityProvider() {
    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }
  List<ConnectivityResult>? _connectivityStatus;
  final Connectivity _connectivity = Connectivity();
  StreamSubscription<List<ConnectivityResult>>? _connectivitySubscription;

  List<ConnectivityResult>? get connectivityStatus => _connectivityStatus;
  ConnectivityResult get wifiConnectionStatus {
    if (_connectivityStatus != null) {
      if (_connectivityStatus!.contains(ConnectivityResult.wifi)) {
        return ConnectivityResult.wifi;
      } else if (_connectivityStatus!.contains(ConnectivityResult.mobile)) {
        return ConnectivityResult.mobile;
      }
    }
    return ConnectivityResult.none;
  }

  ConnectivityResult? get blueToothConnectionStatus {
    if (_connectivityStatus != null &&
        _connectivityStatus!.contains(ConnectivityResult.bluetooth)) {
      return ConnectivityResult.wifi;
    }
    return null;
  }

  Future<void> _updateConnectionStatus(List<ConnectivityResult>? result) async {
    _connectivityStatus = result;
    notifyListeners();
  }

  Future<void> checkConnectivity() async {
    _connectivityStatus = await _connectivity.checkConnectivity();
    notifyListeners();
  }

  @override
  void dispose() {
    _connectivitySubscription?.cancel();
    super.dispose();
  }
}
