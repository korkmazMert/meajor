import 'package:alisatiyor/app/routes/app_routes.dart';
import 'package:alisatiyor/app/view/cubit/messages_cubit/messages_cubit.dart';
import 'package:alisatiyor/core/extensions/on_string.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class AdminLiveSupportView extends StatelessWidget {
  const AdminLiveSupportView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<MessagesCubit, MessagesState>(
        builder: (context, messagesState) {
          return CustomScrollView(slivers: [
            SliverAppBar(
              pinned: true,
              backgroundColor: Theme.of(context).primaryColor,
              title: Text(
                'Canlı Destek',
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge
                    ?.copyWith(color: Colors.white, fontSize: 24),
              ),
            ),
            SliverList.builder(
              itemCount: messagesState.chatRooms?.allChatRooms?.length ?? 0,
              itemBuilder: (context, index) => Card(
                color: Colors.grey.shade300,
                child: ListTile(
                  onTap: () {
                    if (messagesState.chatRooms?.allChatRooms?[index].id !=
                        null) {
                      context.router.push(LiveSupportRoute(
                        messagesCubit: context.read<MessagesCubit>(),
                        roomId:
                            messagesState.chatRooms!.allChatRooms![index].id,
                      ));
                    }
                  },
                  style: ListTileStyle.drawer,
                  trailing: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (messagesState.chatRooms?.allChatRooms?[index]
                                  .roomUnreadMessage !=
                              null &&
                          messagesState.chatRooms!.allChatRooms![index]
                                  .roomUnreadMessage! >
                              0)
                        Badge(
                          label: Text(messagesState.chatRooms!
                              .allChatRooms![index].roomUnreadMessage!
                              .toString()),
                          child: const Icon(Icons.chat_outlined),
                        ),
                      const Spacer(),
                      if (messagesState.chatRooms!.allChatRooms![index]
                              .lastMessageTime !=
                          null)
                        Text(messagesState
                            .chatRooms!.allChatRooms![index].lastMessageTime!
                            .formatDateTime())
                    ],
                  ),
                  leading: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.chat_outlined),
                    ],
                  ),
                  title: Text((messagesState.chatRooms?.allChatRooms?[index]
                              .participant?.first.senderId ==
                          messagesState.chatRooms?.myActivationUser)
                      ? (messagesState.chatRooms?.allChatRooms?[index]
                              .participant?.first.receiverName ??
                          '')
                      : (messagesState.chatRooms?.allChatRooms?[index]
                              .participant?.first.senderName ??
                          '')),
                  subtitle: Text(messagesState
                          .chatRooms?.allChatRooms?[index].lastMessage ??
                      ''),
                ),
              ),
            ),
          ]);
        },
      ),
    );
  }
}
