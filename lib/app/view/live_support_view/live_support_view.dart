import 'dart:developer';

import 'package:alisatiyor/app/view/cubit/messages_cubit/messages_cubit.dart';
import 'package:alisatiyor/app/view/live_support_view/live_support_mixin.dart';
import 'package:alisatiyor/services/websocket/websocket_manager.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class LiveSupportView extends StatefulWidget {
  const LiveSupportView({super.key});

  @override
  State<LiveSupportView> createState() => _LiveSupportViewState();
}

class _LiveSupportViewState extends State<LiveSupportView>
    with LiveSupportMixin {
  final scrollController = ScrollController();

  final messageInputController = TextEditingController();
  @override
  void initState() {
    super.initState();
    context.read<MessagesCubit>().initMessaging();
    WebsocketManager.onMessage((message) {
      log('message in MessagesView: $message');
       context.read<MessagesCubit>().addMessage(message);
    });
  }

  @override
  void dispose() {
    messageInputController.dispose();
    WebsocketManager.disposeMessaging();
    super.dispose();
  }

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
