import 'dart:io';

import 'package:alisatiyor/services/image/image_service.dart';
import 'package:flutter/material.dart';

class ImageDisplayWidget extends StatelessWidget {
  const ImageDisplayWidget({
    required this.imageService,
    super.key,
  });

  final ImageService imageService;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: imageService.images,
      builder: (context, List<File> value, child) {
        return ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: value.length,
          itemBuilder: (context, index) {
            return Image.file(value[index]); // Display the image from file
          },
        );
      },
    );
  }
}
