// ignore_for_file: inference_failure_on_function_invocation, avoid_dynamic_calls,argument_type_not_assignable

import 'dart:developer';

import 'package:alisatiyor/models/chat_rooms/chat_rooms.dart';
import 'package:alisatiyor/models/check_receiver_online/check_receiver_online.dart';
import 'package:alisatiyor/models/open_live_support_model/open_live_support_model.dart';
import 'package:alisatiyor/services/network/network_manager.dart';
import 'package:dio/dio.dart';

class ChatService {
  ChatService._();
  static final ChatService instance = ChatService._();
  Dio dio = NetworkManager.instance.dio;

  Future<OpenLiveSupportModel> openOrCreateRoom() async {
    try {
      final response = await dio.post('api/open_live_support/');
      return OpenLiveSupportModel.fromJson(response.data);
    } catch (e) {
      log('error in getUserImages: $e');
      rethrow;
    }
  }

  Future<ChatRooms> getChatRoom(int roomId) async {
    try {
      final formData = FormData.fromMap({
        'room_id': roomId,
      });
      final response = await dio.post('api/get_chatrooms/', data: formData);
      return ChatRooms.fromJson(response.data);
    } catch (e) {
      log('error in getChatRooms $e');
      rethrow;
    }
  }

  Future<ChatRooms> getChatRooms() async {
    try {
      final response = await dio.get('api/get_chatrooms/');
      return ChatRooms.fromJson(response.data);
    } catch (e) {
      log('error in getChatRooms $e');
      rethrow;
    }
  }

  Future<CheckReceiverOnline> checkReceiverOnline(int roomId) async {
    try {
      final formBody = FormData.fromMap({
        'room_id': roomId,
      });
      final response =
          await dio.post('api/check_receiver_online/', data: formBody);
      return CheckReceiverOnline.fromJson(response.data);
    } catch (e) {
      log('error in getChatRooms $e');
      rethrow;
    }
  }
}
