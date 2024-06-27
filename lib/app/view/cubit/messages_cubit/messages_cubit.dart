import 'dart:developer';

import 'package:alisatiyor/models/chat_rooms/chat_rooms.dart';
import 'package:alisatiyor/models/message_model/message_model.dart';
import 'package:alisatiyor/models/notify_new_message/notify_new_message.dart';
import 'package:alisatiyor/models/open_live_support_model/open_live_support_model.dart';
import 'package:alisatiyor/services/network/chat/chat_service.dart';
import 'package:alisatiyor/services/websocket/websocket_manager.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'messages_state.dart';

class MessagesCubit extends Cubit<MessagesState> {
  MessagesCubit() : super(const MessagesState());
  final chatService = ChatService.instance;
  Future<void> getChatRooms() async {
    try {
      final chatRooms = await chatService.getChatRooms();
      log('chatRooms: $chatRooms');
      emit(state.copyWith(chatRooms: chatRooms));
    } catch (e) {
      emit(state.copyWith(state: MessagesStates.error));
    }
  }

  void setMessagesAsRead() {
    emit(state.copyWith(
      messages: state.messages.map((message) {
        return message.copyWith(isRead: true);
      }).toList(),
    ));
  }

  void changeReceiverStatus(
      {required int userId, bool isReceiverOnline = false}) {
    if (userId != state.chatRooms?.myActivationUser) {
      emit(state.copyWith(isReceiverOnline: isReceiverOnline));
    }
  }

  Future<void> openMessageRoom({int? roomId}) async {
    await initMessaging(roomId: roomId);
    var _roomId = roomId;
    if (roomId == null && state.chatRooms?.allChatRooms != null) {
      _roomId = state.chatRooms!.allChatRooms!.first.id;
    }

    try {
      final checkReceiver = await chatService.checkReceiverOnline(_roomId!);
      log('state.chatRooms: ${state.chatRooms}');

      final room = state.chatRooms?.allChatRooms
          ?.firstWhere((element) => element.id == _roomId);
      if (room != null) {
        final updatedRoom = room.copyWith(roomUnreadMessage: 0);
        final updatedRooms = state.chatRooms?.allChatRooms
            ?.map((e) => e.id == updatedRoom.id ? updatedRoom : e)
            .toList();

        if (checkReceiver.isReceiverOnline ?? false) {
          emit(state.copyWith(
            chatRooms: state.chatRooms?.copyWith(allChatRooms: updatedRooms),
            isReceiverOnline: checkReceiver.isReceiverOnline,
          ));
        }
      }
    } catch (e) {
      log('error in openMessageRoom: $e');
      emit(state.copyWith(state: MessagesStates.error));
    }
  }

  void loading() {
    emit(state.copyWith(state: MessagesStates.loading));
  }

  void addMessage(MessageModel message) {
    emit(state.copyWith(messages: [...state.messages, message]));
  }

  Future<void> initMessaging({int? roomId}) async {
    loading();
    try {
      final openOrCreateRoomResponse = await chatService.openOrCreateRoom();

      log('openOrCreateRoomResponse: $openOrCreateRoomResponse');
      if (openOrCreateRoomResponse.room != null &&
          openOrCreateRoomResponse.room!.id != null) {
        if (roomId != null) {
          await WebsocketManager.initMessaging(roomId);
          emit(state.copyWith(state: MessagesStates.loaded));
        } else {
          await WebsocketManager.initMessaging(
              openOrCreateRoomResponse.room!.id!);
        }
        emit(state.copyWith(
            state: MessagesStates.loaded,
            openLiveSupport: openOrCreateRoomResponse));
      }
    } catch (e) {
      emit(state.copyWith(state: MessagesStates.error));
    }
  }

  Future<void> updateRoom(NotifyNewMessage message) async {
    final room = state.chatRooms?.allChatRooms?.firstWhere(
      (element) => element.id == int.parse(message.roomId!),
    );
    if (room != null) {
      final updatedRoom = room.copyWith(
        lastMessage: message.message,
        lastMessageTime: message.time,
        roomUnreadMessage: room.roomUnreadMessage! + 1,
      );
      final updatedRooms = state.chatRooms?.allChatRooms
          ?.map((e) => e.id == updatedRoom.id ? updatedRoom : e)
          .toList();
      emit(state.copyWith(
        chatRooms: state.chatRooms?.copyWith(allChatRooms: updatedRooms),
        // isReceiverOnline: state.isReceiverOnline,
        messages: state.messages,
      ));
    }
    emit(state.copyWith(
      chatRooms: state.chatRooms,
      // isReceiverOnline: state.isReceiverOnline,
      messages: state.messages,
    ));
  }

  void disposeChatRoom() {
    log('disposeChatRoom');
    emit(state.copyWith(messages: []));
  }
}
