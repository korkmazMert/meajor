import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class CustomNavbar extends StatelessWidget {
  const CustomNavbar({required this.tabsRouter, super.key});
  final TabsRouter tabsRouter;
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
      selectedIndex: tabsRouter.activeIndex,
      onDestinationSelected: tabsRouter.setActiveIndex,
      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        NavigationDestination(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
    );
  }
}
