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
            await imageService.sendImage(imageBytes);
          },
          child: const Text('Send Image'),
        ),
        ElevatedButton(
          onPressed: () async {
            // Receive images
            await imageService.receiveImages();
          },
          child: const Text('Receive Images'),
        ),
      ],
    );
  }
}
