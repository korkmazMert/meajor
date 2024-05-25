import 'dart:io';
import 'dart:typed_data';

import 'package:alisatiyor/app/view/image_view/image_view.dart';
import 'package:alisatiyor/core/service/service_constant.dart';
import 'package:alisatiyor/services/image/image_client.dart';
import 'package:alisatiyor/services/image/image_service.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

abstract class ImageScreenViewModel extends State<ImageView> {
  final ImageClient imageClient =
      ImageClient(ServiceConstants.url, ServiceConstants.port);
  late final ImageService imageService;
  @override
  void initState() {
    super.initState();
    imageService = ImageService(client: imageClient);
  }

  XFile? _image;
  final ImagePicker _picker = ImagePicker();

  Future<Uint8List> pickImage() async {
    _image = await _picker.pickImage(source: ImageSource.gallery);

    if (_image != null) {
      final imageBytes = await File(_image!.path).readAsBytes();
      return imageBytes;
    } else {
      throw Exception('No image selected.');
    }
  }
}
