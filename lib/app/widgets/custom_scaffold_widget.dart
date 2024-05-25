import 'package:alisatiyor/app/routes/app_routes.dart';
import 'package:alisatiyor/app/widgets/custom_navbar.dart';
import 'package:alisatiyor/core/utils/image_picker_util.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CustomScaffoldView extends StatefulWidget {
  const CustomScaffoldView({super.key});

  @override
  State<CustomScaffoldView> createState() => _CustomScaffoldViewState();
}

class _CustomScaffoldViewState extends State<CustomScaffoldView> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AutoTabsScaffold(
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
              onPressed: () {
                ImagePickerUtil().selectImageAdaptiveSheet(context);
              },
              child: const Icon(Icons.add)),
          homeIndex: 0,
          routes: [const HomeRoute(), AccountRoute()],
          bottomNavigationBuilder: (context, tabsRouter) =>
              CustomNavbar(tabsRouter: tabsRouter),
        )
      ],
    );
  }
}
