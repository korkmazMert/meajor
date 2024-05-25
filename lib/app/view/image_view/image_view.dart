import 'package:alisatiyor/app/view/image_view/image_view_mixin.dart';
import 'package:alisatiyor/app/view/image_view/image_view_viewmodel.dart';
import 'package:alisatiyor/app/view/image_view/widgets/image_display_widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ImageView extends StatefulWidget {
  const ImageView({super.key});

  @override
  ImageViewState createState() => ImageViewState();
}

class ImageViewState extends ImageScreenViewModel with ImageViewMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Image App')),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              imageOperationButtons(),
              ImageDisplayWidget(imageService: imageService),
            ],
          ),
        ),
      ),
    );
  }
}
