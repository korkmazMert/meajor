import 'package:alisatiyor/app/view/messages_view/messages_mixin.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
final class MessagesView extends StatefulWidget {
  const MessagesView({super.key});

  @override
  State<MessagesView> createState() => _MessagesViewState();
}

class _MessagesViewState extends State<MessagesView> with MessagesMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
