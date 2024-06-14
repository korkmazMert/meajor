import 'package:alisatiyor/app/view/cubit/image_cubit/image_cubit.dart';
import 'package:alisatiyor/services/network/network_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RecentActivities extends StatelessWidget {
  const RecentActivities({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ImageCubit, ImageState>(
      builder: (context, state) {
        if ((state.userImages?.images != null) ||
            (state.userImages?.images?.isNotEmpty ?? false)) {
          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.userImages?.images?.length ?? 0,
            itemBuilder: (context, index) {
              return GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: state.userImages?.images?.length ?? 0,
                itemBuilder: (context, index) {
                  var imageUrl =
                      state.userImages?.images?[index].processedImage ?? '';
                  // Remove leading slash if present
                  if (imageUrl.startsWith('/')) {
                    imageUrl = imageUrl.substring(1);
                  }
                  return Image.network(
                    '$baseUrl$imageUrl',
                    fit: BoxFit.cover,
                  );
                },
              );
            },
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
