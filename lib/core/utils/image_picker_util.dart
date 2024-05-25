import 'dart:io';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerUtil {
  final ImagePicker _picker = ImagePicker();

  Future<String?> pickImageFromGallery() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      return pickedFile.path;
    } else {
      debugPrint('No image selected.');
      return null;
    }
  }

  Future<String?> pickImageFromCamera() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      return pickedFile.path;
    } else {
      debugPrint('No image selected.');
      return null;
    }
  }

  Future<String?> selectImageAdaptiveSheet(BuildContext context) async {
    if (Platform.isIOS) {
      return iosImageSelectActionSheet(context);
    } else {
      return androidImageSelectBottomSheet(context);
    }
  }

  Future<String?> androidImageSelectBottomSheet(BuildContext context) async {
    return showModalBottomSheet<String>(
      context: context,
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: const Icon(Icons.camera_alt),
              title: const Text('Kamera'),
              onTap: () async {
                await context.router.maybePop(await pickImageFromCamera());
              },
            ),
            ListTile(
              leading: const Icon(Icons.photo_library),
              title: const Text('Galeri'),
              onTap: () async {
                await context.router.maybePop(await pickImageFromGallery());
              },
            ),
          ],
        );
      },
    );
  }

  Future<String?> iosImageSelectActionSheet(BuildContext context) async {
    return showCupertinoModalPopup<String>(
      context: context,
      builder: (context) {
        return CupertinoActionSheet(
          actions: <CupertinoActionSheetAction>[
            CupertinoActionSheetAction(
              child: const Text('Kamera'),
              onPressed: () async {
                await context.router.maybePop(await pickImageFromCamera());
              },
            ),
            CupertinoActionSheetAction(
              child: const Text('Galeri'),
              onPressed: () async {
                await context.router.maybePop(await pickImageFromGallery());
              },
            ),
          ],
          cancelButton: CupertinoActionSheetAction(
            isDefaultAction: true,
            onPressed: () {
              context.router.maybePop();
            },
            child: const Text('İptal'),
          ),
        );
      },
    );
  }
}
