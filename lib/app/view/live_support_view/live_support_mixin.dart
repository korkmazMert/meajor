import 'package:alisatiyor/app/view/cubit/general_cubit/general_cubit_cubit.dart';
import 'package:alisatiyor/app/view/cubit/messages_cubit/messages_cubit.dart';
import 'package:alisatiyor/core/padding/page_padding.dart';
import 'package:alisatiyor/services/websocket/websocket_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

mixin LiveSupportMixin {
  Widget messageList({required ScrollController scrollController}) {
    return Flexible(
      child: BlocBuilder<GeneralCubit, GeneralState>(
        builder: (context, generalState) {
          return BlocBuilder<MessagesCubit, MessagesState>(
            builder: (context, state) {
              return ListView.builder(
                controller: scrollController,
                physics: const BouncingScrollPhysics(),
                reverse: true,
                itemCount: state.messages.length,
                itemBuilder: (BuildContext context, int index) {
                  final reversedIndex = state.messages.length - index - 1;
                  return Container(
                    alignment: generalState.state == GeneralStates.signedin
                        ? Alignment.centerRight
                        : Alignment.centerLeft,
                    child: messageTile(
                        context, generalState, state, reversedIndex),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }

  Widget messageInputWidget(BuildContext context,
      {required TextEditingController messageInputController,
      required ScrollController scrollController}) {
    return BlocBuilder<MessagesCubit, MessagesState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: <Widget>[
              Expanded(
                child: TextField(
                  controller: messageInputController,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.photo_outlined),
                        onPressed: () {
                          // ignore: avoid_print
                          print('Attach file');
                        },
                      ),
                      fillColor: Colors.transparent,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: const BorderSide(color: Colors.grey)),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      contentPadding: const PagePadding.allLow(),
                      hintText: 'Mesajınızı yazın...',
                      isDense: true),
                  onSubmitted: (_) {
                    _sendMessage(
                        messageInputController: messageInputController,
                        scrollController: scrollController,
                        state: state);
                  },
                ),
              ),
              const SizedBox(width: 5),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.green,
                ),
                child: IconButton(
                  visualDensity: VisualDensity.compact,
                  padding: EdgeInsets.zero,
                  icon: const Icon(Icons.send),
                  onPressed: () {
                    _sendMessage(
                        messageInputController: messageInputController,
                        scrollController: scrollController,
                        state: state);
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget messageTile(BuildContext context, GeneralState generalState,
      MessagesState state, int reversedIndex) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: state.messages[reversedIndex].userId ==
                state.openLiveSupport?.myActivationUser
            ? CrossAxisAlignment.end
            : CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: state.messages[reversedIndex].userId ==
                      state.openLiveSupport?.myActivationUser
                  ? Colors.grey.shade400
                  : Colors.grey.shade300,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Text(
                  state.messages[reversedIndex].message ?? '',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
          // if (state.messages![reversedIndex].createdAt != null)
          //   Row(
          //     mainAxisSize: MainAxisSize.min,
          //     children: [
          //       Text(
          //         ' ${state.messages![reversedIndex].createdAt!.hour}:${state.messages![reversedIndex].createdAt!.minute}',
          //         style: Theme.of(context)
          //             .textTheme
          //             .bodyMedium
          //             ?.copyWith(fontSize: 10),
          //       ),
          //       const SizedBox(width: 5),
          //       if (generalState is ByasisSignedState)
          //         if (state.messages![reversedIndex].user ==
          //             state.currentUserId)
          //           state.messages![reversedIndex].isRead == false
          //               ? const Icon(
          //                   Icons.done_all_outlined,
          //                   size: 15,
          //                 )
          //               : const Icon(
          //                   Icons.done_all_outlined,
          //                   color: Colors.green,
          //                   size: 15,
          //                 ),
          //       if (generalState is! ByasisSignedState)
          //         if (state.messages![reversedIndex].anonymousUserSecret ==
          //             state.currentUserId.toString())
          //           state.messages![reversedIndex].isRead == false
          //               ? const Icon(
          //                   Icons.done_all_outlined,
          //                   size: 15,
          //                 )
          //               : const Icon(
          //                   Icons.done_all_outlined,
          //                   color: Colors.green,
          //                   size: 15,
          //                 ),
          //     ],
          //   ),
        ],
      ),
    );
  }

  void _sendMessage(
      {required TextEditingController messageInputController,
      required ScrollController scrollController,
      required MessagesState state}) {
    if (messageInputController.text.isNotEmpty) {
      if (state.openLiveSupport?.roomId != null) {
        int receiverId;
        if (state.openLiveSupport?.participant?.receiverId ==
            state.openLiveSupport?.myActivationUser) {
          receiverId = state.openLiveSupport!.participant!.senderId!;
        } else {
          receiverId = state.openLiveSupport!.participant!.receiverId!;
        }
        WebsocketManager.sendMessage(
            message: messageInputController.text,
            userId: state.openLiveSupport!.myActivationUser!,
            userName: state.openLiveSupport!.userName!,
            userActive: state.openLiveSupport!.userActive!,
            receiverId: receiverId);
      }

      messageInputController.clear();
      scrollController.animateTo(
        scrollController.position.minScrollExtent,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeOut,
      );
    }
  }
}
