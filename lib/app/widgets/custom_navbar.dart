import 'package:alisatiyor/app/view/cubit/general_cubit/general_cubit_cubit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomNavbar extends StatelessWidget {
  const CustomNavbar({required this.tabsRouter, super.key});
  final TabsRouter tabsRouter;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GeneralCubit, GeneralState>(
      builder: (context, generalState) {
        return NavigationBar(
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          selectedIndex: tabsRouter.activeIndex,
          onDestinationSelected: (value) {
            tabsRouter.setActiveIndex(value);
            if (value == 1 && generalState.state == GeneralStates.signedin) {
              context.read<GeneralCubit>().getAccountInfo();
            }
          },
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home),
              label: 'Ana Sayfa',
            ),
            NavigationDestination(
              icon: Icon(Icons.person),
              label: 'Profil',
            ),
          ],
        );
      },
    );
  }
}
