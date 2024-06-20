import 'package:alisatiyor/app/view/live_support_view/live_support_mixin.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class LiveSupportView extends StatelessWidget with LiveSupportMixin {
  LiveSupportView({super.key});
  final scrollController = ScrollController();
  final messageInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meajor Canlı Destek'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          messageList(scrollController: scrollController),
          messageInputWidget(context,
              messageInputController: messageInputController,
              scrollController: scrollController)
        ],
      ),
    );
  }
}
