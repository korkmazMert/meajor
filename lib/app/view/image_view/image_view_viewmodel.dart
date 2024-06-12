import 'dart:io';
import 'dart:typed_data';

import 'package:alisatiyor/app/view/image_view/image_view.dart';
import 'package:alisatiyor/services/image/image_service.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

abstract class ImageScreenViewModel extends State<ImageView> {
  final ImageService imageService = ImageService.instance;

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
