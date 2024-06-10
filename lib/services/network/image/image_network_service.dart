// ignore_for_file: inference_failure_on_function_invocation, avoid_dynamic_calls,argument_type_not_assignable

import 'dart:developer';

import 'package:alisatiyor/models/user_images/user_images.dart';
import 'package:alisatiyor/services/network/network_manager.dart';
import 'package:dio/dio.dart';

class ImageNetworkService {
  ImageNetworkService._();
  static final ImageNetworkService instance = ImageNetworkService._();
  Dio dio = NetworkManager.instance.dio;

  Future<UserImages> getUserImages() async {
    try {
      final response = await dio.get('images/get_users_images/');
      return UserImages.fromJson(response.data);
    } catch (e) {
      log('error in getUserImages: $e');
      rethrow;
    }
  }
}
