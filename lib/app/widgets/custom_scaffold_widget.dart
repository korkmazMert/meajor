import 'dart:developer';
import 'dart:io';

import 'package:alisatiyor/app/routes/app_routes.dart';
import 'package:alisatiyor/app/widgets/custom_navbar.dart';
import 'package:alisatiyor/core/utils/image_picker_util.dart';
import 'package:alisatiyor/services/image/image_service.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CustomScaffoldView extends StatefulWidget {
  const CustomScaffoldView({super.key});

  @override
  State<CustomScaffoldView> createState() => _CustomScaffoldViewState();
}

class _CustomScaffoldViewState extends State<CustomScaffoldView> {
  final ImageService imageService = ImageService.instance;

  @override
  void dispose() {
    imageService.imageClientShutdown();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AutoTabsScaffold(
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: ValueListenableBuilder<List<File>>(
              valueListenable: imageService.images,
              builder: (context, value, child) {
                return FloatingActionButton(
                    onPressed: () async {
                      final path = await ImagePickerUtil()
                          .selectImageAdaptiveSheet(context);
                      log('path: $path');
                      if (path != null) {
                        final file = File(path);
                        final bytes = await file.readAsBytes();
                        await imageService.processImage(bytes);
                        if (imageService.images.value.isNotEmpty &&
                            context.mounted) {
                          await context.router.push(const SaveImageRoute());
                        }
                      }
                    },
                    child: const Icon(Icons.add));
              }),
          homeIndex: 0,
          routes: [HomeRoute(), AccountRoute()],
          bottomNavigationBuilder: (context, tabsRouter) =>
              CustomNavbar(tabsRouter: tabsRouter),
        )
      ],
    );
  }
}
