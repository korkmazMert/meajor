import 'package:alisatiyor/app/view/messages_view/messages_view.dart';
import 'package:alisatiyor/core/service/service_constant.dart';
import 'package:alisatiyor/services/messaging/messaging_client.dart';
import 'package:alisatiyor/services/messaging/messaging_service.dart';
import 'package:flutter/material.dart';

mixin MessagesMixin on State<MessagesView> {
  final messageInputController = TextEditingController();
  final scrollController = ScrollController();
  final MessagingService messagingService = MessagingService(
      client: MessagingClient(ServiceConstants.url, ServiceConstants.port));

  @override
  void initState() {
    super.initState();
    messagingService.receiveMessages();
  }

  Widget messageList({required ScrollController scrollController}) {
    return ValueListenableBuilder(
        valueListenable: messagingService.messages,
        builder: (context, value, child) {
          return Flexible(
            child: ListView.builder(
              controller: scrollController,
              physics: const BouncingScrollPhysics(),
              reverse: true,
              itemCount: value.length,
              itemBuilder: (BuildContext context, int index) {
                final reversedIndex = value.length - 1 - index;
                return Container(
                  alignment: value[reversedIndex].senderId ==
                          messagingService.request.senderId
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  child: messageTile(reversedIndex),
                );
              },
            ),
          );
        });
  }

  Widget messageInputWidget(BuildContext context,
      {required TextEditingController messageInputController,
      required ScrollController scrollController}) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              controller: messageInputController,
              decoration: const InputDecoration(
                  hintText: 'Type a message', isDense: true),
              onSubmitted: (_) {
                if (messageInputController.text.isNotEmpty) {
                  messagingService.sendMessage(messageInputController.text);
                  messageInputController.clear();
                  scrollController.animateTo(
                    scrollController.position.minScrollExtent,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeOut,
                  );
                }
              },
            ),
          ),
          IconButton(
            icon: const Icon(Icons.send),
            onPressed: () {
              if (messageInputController.text.isNotEmpty) {
                messagingService.sendMessage(messageInputController.text);
                messageInputController.clear();
                scrollController.animateTo(
                  scrollController.position.minScrollExtent,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeOut,
                );
              }
            },
          ),
        ],
      ),
    );
  }

  Widget messageTile(int reversedIndex) {
    return ValueListenableBuilder(
        valueListenable: messagingService.messages,
        builder: (context, value, child) {
          return Container(
            margin: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: value[reversedIndex].senderId ==
                            messagingService.request.senderId
                        ? Colors.blue
                        : Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    value.isEmpty
                        ? 'No messages yet'
                        : value[reversedIndex].message,
                    style: const TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
