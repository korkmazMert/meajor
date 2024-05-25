import 'package:alisatiyor/core/extensions/build_context_ext.dart';
import 'package:alisatiyor/core/padding/page_padding.dart';
import 'package:flutter/material.dart';

mixin HomeViewMixin {
  Padding homeViewHeader(BuildContext context) {
    return Padding(
        padding: const PagePadding.allLow(),
        child: Row(
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
        ));
  }
}
