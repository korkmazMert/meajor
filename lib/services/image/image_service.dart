import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';

import 'package:alisatiyor/services/grpc/image/imageservice.pb.dart';
import 'package:alisatiyor/services/image/image_client.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:path_provider/path_provider.dart';

class ImageService {
  factory ImageService({required ImageClient client}) {
    _instance ??= ImageService._(client);
    return _instance!;
  }

  ImageService._(this._client);
  late final ImageClient _client;
  late ImageGrpcModel request = ImageGrpcModel();

  ValueNotifier<List<File>> images = ValueNotifier<List<File>>([]);
  static ImageService? _instance;

  Future<void> processImage(List<int> imageBytes) async {
    try {
      request
        ..image = imageBytes
        ..userid = 2;
      final image = await _client.processImage(request);
      final bytes = Uint8List.fromList(image.image);
      log('Received image: $image');
      log('Received imageid: ${image.id}');
      log('request.userid: ${image.userid}');

      // Get the temporary directory of the app.
      final directory = await getTemporaryDirectory();

      // Save the bytes as a file.
      final sourceFile = File('${directory.path}/image.jpg');
      await sourceFile.writeAsBytes(bytes);

      // Compress the image and get a new file.
      final targetFile = File('${directory.path}/compressed_image.jpg');
      await FlutterImageCompress.compressAndGetFile(
        sourceFile.absolute.path,
        targetFile.absolute.path,
        quality: 88,
      );

      // Add the file to the images list.
      images.value = List.from(images.value)..add(targetFile);
      log('Received image: $image');
    } catch (e) {
      log('Caught error: $e');
    }
  }
}
