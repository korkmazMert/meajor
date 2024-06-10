import 'package:alisatiyor/app/view/image_view/image_view_viewmodel.dart';
import 'package:flutter/material.dart';

mixin ImageViewMixin on ImageScreenViewModel {
  Widget imageOperationButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: () async {
            // Pick an image and send it
            final imageBytes = await pickImage();
            await imageService.processImage(imageBytes);
          },
          child: const Text('Process Image'),
        ),
      ],
    );
  }
}
