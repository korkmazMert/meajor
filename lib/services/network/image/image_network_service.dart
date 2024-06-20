// ignore_for_file: inference_failure_on_function_invocation, avoid_dynamic_calls,argument_type_not_assignable

import 'dart:developer';
import 'dart:io';

import 'package:alisatiyor/models/get_cargo_cost/get_cargo_cost.dart';
import 'package:alisatiyor/models/save_image_model/save_image_model.dart';
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

  Future<SaveImageModel> saveImage(File imageFile) async {
    try {
      final formData = FormData.fromMap({
        'image': await MultipartFile.fromFile(imageFile.path),
      });

      final response =
          await dio.post('images/save_image_to_db/', data: formData);
      return SaveImageModel.fromJson(response.data);
    } catch (e) {
      log('error in saveImage: $e');
      rethrow;
    }
  }

  Future<GetCargoCost> getCargoCost(
      {required int imageId,
      required int height,
      required int width,
      required String fromWhere,
      required String toWhere}) async {
    try {
      final formData = FormData.fromMap({
        'image_id': imageId,
        'height': height,
        'width': width,
        'from_where': fromWhere,
        'to_where': toWhere,
      });
      final response = await dio.post('cargo/get_cargo_cost/', data: formData);
      return GetCargoCost.fromJson(response.data);
    } catch (e) {
      log('error in getCargoCost: $e');
      rethrow;
    }
  }
}
