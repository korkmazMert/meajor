// ignore_for_file: inference_failure_on_function_invocation, avoid_dynamic_calls,argument_type_not_assignable

import 'dart:developer';
import 'dart:io';

import 'package:alisatiyor/models/get_cargo_cost/get_cargo_cost.dart';
import 'package:alisatiyor/models/save_image_model/save_image_model.dart';
import 'package:alisatiyor/models/user_images/user_images.dart';
import 'package:alisatiyor/services/network/image/image_network_service_impl.dart';
import 'package:alisatiyor/services/network/network_manager.dart';
import 'package:dio/dio.dart';

class ImageNetworkService implements ImageNetworkServiceImpl {
  ImageNetworkService._();
  static final ImageNetworkService instance = ImageNetworkService._();
  Dio dio = NetworkManager.instance.dio;

  @override
  Future<UserImages> getUserImages() async {
    try {
      final response = await dio.get('images/get_users_images/');
      return UserImages.fromJson(response.data);
    } catch (e) {
      log('error in getUserImages: $e');
      rethrow;
    }
  }

  @override
  Future<SaveImageModel> saveImage(File imageFile,
      {bool isImageProcessed = false}) async {
    try {
      final formData = FormData.fromMap({
        'image': await MultipartFile.fromFile(imageFile.path),
        'is_image_processed': isImageProcessed,
      });

      final response =
          await dio.post('images/save_image_to_db/', data: formData);
      return SaveImageModel.fromJson(response.data);
    } catch (e) {
      log('error in saveImage: $e');
      rethrow;
    }
  }

  @override
  Future<GetCargoCost> getCargoCost(
      {required int imageId,
      required double height,
      required double width,
      required double weight,
      required String fromWhere,
      required String toWhere}) async {
    try {
      final formData = FormData.fromMap({
        'image_id': imageId,
        'height': height,
        'width': width,
        'weight': weight,
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

  @override
  Future<GetCargoCost> updateCargoCost(
      {required int imageId,
      required String fromWhere,
      required String toWhere}) async {
    try {
      final formData = FormData.fromMap({
        'image_id': imageId,
        'from_where': fromWhere,
        'to_where': toWhere,
      });
      final response =
          await dio.post('cargo/update_cargo_cost/', data: formData);
      return GetCargoCost.fromJson(response.data);
    } catch (e) {
      log('error in getCargoCost: $e');
      rethrow;
    }
  }
}
