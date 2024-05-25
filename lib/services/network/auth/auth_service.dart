// ignore_for_file: inference_failure_on_function_invocation, avoid_dynamic_calls,argument_type_not_assignable

import 'package:alisatiyor/services/network/network_manager.dart';
import 'package:dio/dio.dart';

class AuthService {
  AuthService._();
  NetworkManager networkManager = NetworkManager.instance;
  Dio dio = NetworkManager.instance.dio;

  static final AuthService instance = AuthService._();
  Future<void> refreshToken(String refreshToken) async {
    return networkManager.refreshJwtToken(refreshToken);
  }
}
