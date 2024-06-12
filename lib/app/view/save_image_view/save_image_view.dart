import 'dart:io';

import 'package:alisatiyor/services/image/image_service.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SaveImageView extends StatelessWidget {
  SaveImageView({super.key});
  final ImageService imageService = ImageService.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Save Image')),
      body: Center(
        child: Column(
          children: [
            ValueListenableBuilder<List<File>>(
              valueListenable: imageService.images,
              builder: (context, value, child) {
                return InteractiveViewer(
                  child: SizedBox(
                    width: double.infinity,
                    child: Image.file(
                      value[0],
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
