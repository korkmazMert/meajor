import 'package:alisatiyor/app/view/cubit/image_cubit/image_cubit.dart';
import 'package:alisatiyor/app/view/home_view/widgets/recent_activites.dart';
import 'package:alisatiyor/core/extensions/build_context_ext.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

mixin HomeViewMixin {
  Widget homeViewHeader(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Meajor'a hoşgeldiniz!",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: context.width * 0.02),
              const Text(
                  'Aşağıda geçmiş işlemleriniz gözükecek eğer ilk defa kullanıyorsanız aşağıdaki artı butonuna tıklayarak işlem yapabilirsiniz.')
            ],
          ),
        ),
      ],
    );
  }

  Widget homeViewBody(BuildContext context, ImageState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Son İşlemleriniz',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        Divider(endIndent: context.width * 0.05),
        // latest activities
        const RecentActivities(),
        // if there is no activity
        if ((state.userImages?.images == null) ||
            (state.userImages?.images?.isEmpty ?? true))
          Lottie.asset('assets/lottie/nothing_lottie.json'),
      ],
    );
  }
}
