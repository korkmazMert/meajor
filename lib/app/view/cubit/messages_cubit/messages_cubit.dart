import 'dart:developer';

import 'package:alisatiyor/models/message_model/message_model.dart';
import 'package:alisatiyor/models/open_live_support_model/open_live_support_model.dart';
import 'package:alisatiyor/services/network/chat/chat_service.dart';
import 'package:alisatiyor/services/websocket/websocket_manager.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'messages_state.dart';

class MessagesCubit extends Cubit<MessagesState> {
  MessagesCubit() : super(const MessagesState());
  final chatService = ChatService.instance;
  void loading() {
    emit(state.copyWith(state: MessagesStates.loading));
  }

  void addMessage(MessageModel message) {
    emit(state.copyWith(messages: [...state.messages, message]));
  }

  Future<void> initMessaging() async {
    loading();
    try {
      final openOrCreateRoomResponse = await chatService.openOrCreateRoom();

      log('openOrCreateRoomResponse: $openOrCreateRoomResponse');
      if (openOrCreateRoomResponse.room != null &&
          openOrCreateRoomResponse.room!.id != null) {
        WebsocketManager.initMessaging(openOrCreateRoomResponse.room!.id!);
        emit(state.copyWith(
            state: MessagesStates.loaded,
            openLiveSupport: openOrCreateRoomResponse));
      }
    } catch (e) {
      emit(state.copyWith(state: MessagesStates.error));
    }
  }
}
