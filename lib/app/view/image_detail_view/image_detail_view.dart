import 'package:alisatiyor/services/network/network_manager.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ImageDetailView extends StatelessWidget {
  const ImageDetailView(
      {required this.imageUrl, required this.heroTag, super.key});
  final String imageUrl;
  final String heroTag;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Hero(
                tag: heroTag,
                child: Image.network(
                  '$baseUrl$imageUrl',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
