import 'package:alisatiyor/app/view/cubit/image_cubit/image_cubit.dart';
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
            itemCount: 5,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('İşlem $index'),
                subtitle: Text('Açıklama $index'),
                trailing: const Text('₺ 100.00'),
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
