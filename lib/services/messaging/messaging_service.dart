import 'dart:developer';

import 'package:alisatiyor/core/service/service_constant.dart';
import 'package:alisatiyor/services/grpc/messaging/chatservice.pb.dart';
import 'package:alisatiyor/services/messaging/messaging_client.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';

class MessagingService {
  factory MessagingService({required MessagingClient client}) {
    _instance ??= MessagingService._(client);
    return _instance!;
  }
  MessagingService._(this._client);
  late final MessagingClient _client;
  late ChatMessageRequest request = ChatMessageRequest()
    ..threadId = Int64(ServiceConstants.threadId)
    ..senderId = Int64(ServiceConstants.senderId)
    ..recipientId = Int64(ServiceConstants.recipientId);

  ValueNotifier<List<ChatMessage>> messages =
      ValueNotifier<List<ChatMessage>>([]);
  static MessagingService? _instance;

  Future<void> sendMessage(String message) async {
    try {
      request.message = message;
      await _client.sendMessage(request);
    } catch (e) {
      log('Caught error: $e');
    }
    // finally {
    //   _client.shutdown();
    // }
  }

  Future<void> receiveMessages() async {
    try {
      final chatClient = ChatClient()
        ..recipientId = Int64(ServiceConstants.recipientId);
      await for (final message in _client.receiveMessages(chatClient)) {
        messages.value = List.from(messages.value)..add(message);
        log('Received message: $message');
      }
    } catch (e) {
      log('Caught error: $e');
    }
  }
}
