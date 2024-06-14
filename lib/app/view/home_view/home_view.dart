import 'package:alisatiyor/app/view/cubit/image_cubit/image_cubit.dart';
import 'package:alisatiyor/app/view/home_view/home_view_mixin.dart';
import 'package:alisatiyor/core/padding/page_padding.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
final class HomeView extends StatelessWidget with HomeViewMixin {
  HomeView({super.key});
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
      body: BlocBuilder<ImageCubit, ImageState>(
        builder: (context, state) {
          return RefreshIndicator.adaptive(
            onRefresh: () async {
              await context.read<ImageCubit>().getUserImages();
            },
            child: SingleChildScrollView(
              child: Center(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if ((state.userImages?.images == null) ||
                      (state.userImages?.images?.isEmpty ?? true))
                    Padding(
                        padding: const PagePadding.allLow(),
                        child: homeViewHeader(context)),
                  Padding(
                    padding: const PagePadding.allLow(),
                    child: homeViewBody(context, state),
                  ),
                ],
              )),
            ),
          );
        },
      ),
    );
  }
}
