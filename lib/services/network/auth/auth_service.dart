// ignore_for_file: inference_failure_on_function_invocation, avoid_dynamic_calls,argument_type_not_assignable

import 'dart:developer';

import 'package:alisatiyor/models/account_info/account_info.dart';
import 'package:alisatiyor/models/base_model/base_model.dart';
import 'package:alisatiyor/models/signin_response/signin_response.dart';
import 'package:alisatiyor/services/network/network_manager.dart';
import 'package:dio/dio.dart';

class AuthService {
  AuthService._();
  NetworkManager networkManager = NetworkManager.instance;
  Dio dio = NetworkManager.instance.dio;

  static final AuthService instance = AuthService._();
  // Future<void> refreshToken(String refreshToken) async {
  //   return networkManager.refreshJwtToken(refreshToken);
  // }

  Future<SigninResponse> signin(String email, String password) async {
    try {
      final formData = FormData.fromMap({
        'email': email,
        'password': password,
        // 'fcm_token': 'static_mobile_fcm_token',
      });
      final response = await dio.post(
        'api/signin/',
        data: formData,
      );
      return SigninResponse.fromJson(response.data);
    } catch (e) {
      log('error in login service: $e');
      rethrow;
    }
  }

  Future<BaseModel> signup(String email, String firstName, String lastName,
      String password, String password2) async {
    try {
      final requestBody = FormData.fromMap({
        'email': email,
        'firstName': firstName,
        'lastName': lastName,
        'password': password,
        'password2': password2,
      });
      final response = await dio.post(
        'api/signup/',
        data: requestBody,
      );
      return BaseModel.fromJson(response.data);
    } catch (e) {
      log('error in login service: $e');
      rethrow;
    }
  }

  Future<BaseModel> signout(String email, String firstName, String lastName,
      String password, String password2) async {
    try {
      final response = await dio.get(
        'api/signout/',
      );
      return BaseModel.fromJson(response.data);
    } catch (e) {
      log('error in login service: $e');
      rethrow;
    }
  }

  Future<AccountInfo> getAccountInfo() async {
    try {
      final response = await dio.get(
        'accounts/api/account_info/',
      );
      return AccountInfo.fromJson(response.data);
    } catch (e) {
      log('error in login service: $e');
      rethrow;
    }
  }
}
