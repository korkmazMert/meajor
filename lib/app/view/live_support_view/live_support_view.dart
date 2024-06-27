import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:alisatiyor/app/view/cubit/messages_cubit/messages_cubit.dart';
import 'package:alisatiyor/app/view/live_support_view/live_support_mixin.dart';
import 'package:alisatiyor/models/websocket_connection_model/websocket_connection_model.dart';
import 'package:alisatiyor/services/websocket/websocket_manager.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class LiveSupportView extends StatefulWidget {
  const LiveSupportView({required this.messagesCubit, this.roomId, super.key});
  final MessagesCubit messagesCubit;
  final int? roomId;
  @override
  State<LiveSupportView> createState() => _LiveSupportViewState();
}

class _LiveSupportViewState extends State<LiveSupportView>
    with LiveSupportMixin {
  final scrollController = ScrollController();

  final messageInputController = TextEditingController();
  StreamSubscription? _messageSubscription;
  @override
  void initState() {
    super.initState();
    widget.messagesCubit.openMessageRoom(roomId: widget.roomId);

    _messageSubscription =
        WebsocketManager.broadcastStreamController?.stream.listen((message) {
      final messageMap = jsonDecode(message as String) as Map<String, dynamic>;
      if (messageMap['type'] == 'connected' ||
          messageMap['type'] == 'disconnected') {
        final decodedConnection = WebsocketConnectionModel.fromJson(messageMap);
        if (!mounted) return; // Check if the widget is still in the tree
        log('message in asdasdasd: $decodedConnection');
        if (decodedConnection.type == 'connected' &&
            decodedConnection.userId != null) {
          context.read<MessagesCubit>().setMessagesAsRead();
          context.read<MessagesCubit>().changeReceiverStatus(
                isReceiverOnline: true,
                userId: decodedConnection.userId!,
              );
        }
        if (decodedConnection.type == 'disconnected') {
          context
              .read<MessagesCubit>()
              .changeReceiverStatus(userId: decodedConnection.userId!);
        }
      }
    });
  }

  @override
  void dispose() {
    widget.messagesCubit.disposeChatRoom();
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
          messageInputWidget(
            context,
            messageInputController: messageInputController,
            scrollController: scrollController,
            roomId: widget.roomId,
          )
        ],
      ),
    );
  }
}
