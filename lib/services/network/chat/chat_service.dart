// ignore_for_file: inference_failure_on_function_invocation, avoid_dynamic_calls,argument_type_not_assignable

import 'dart:developer';

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
}
