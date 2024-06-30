import 'dart:io';

import 'package:alisatiyor/models/get_cargo_cost/get_cargo_cost.dart';
import 'package:alisatiyor/models/save_image_model/save_image_model.dart';
import 'package:alisatiyor/models/user_images/user_images.dart';

abstract class ImageNetworkServiceImpl {
  Future<UserImages> getUserImages();
  Future<SaveImageModel> saveImage(File imageFile,
      {bool isImageProcessed = false});
  Future<GetCargoCost> getCargoCost({
    required int imageId,
    required double height,
    required double width,
    required double weight,
    required String fromWhere,
    required String toWhere,
  });
  Future<GetCargoCost> updateCargoCost({
    required int imageId,
    required String fromWhere,
    required String toWhere,
  });
}
