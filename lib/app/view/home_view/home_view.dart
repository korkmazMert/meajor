import 'package:alisatiyor/app/view/home_view/home_view_mixin.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
final class HomeView extends StatelessWidget with HomeViewMixin {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meajor',
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(color: Colors.white)),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
          child: Column(
        children: [
          homeViewHeader(context),
        ],
      )),
    );
  }
}
