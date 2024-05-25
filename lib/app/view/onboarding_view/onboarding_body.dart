import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    required this.imagePath,
    required this.title,
    required this.description,
    super.key,
  });
  final String imagePath;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          SvgPicture.asset(
            imagePath,
            height: 300,
          ),
          const SizedBox(height: 30),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
          ),
          const SizedBox(height: 20),
          Text(
            description,
            style: const TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
