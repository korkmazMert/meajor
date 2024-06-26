import 'dart:convert';
import 'dart:developer';

import 'package:alisatiyor/models/message_model/message_model.dart';
import 'package:alisatiyor/services/network/auth/auth_service.dart';
import 'package:web_socket_channel/status.dart' as status;
import 'package:web_socket_channel/web_socket_channel.dart';

typedef MessageCallback = void Function(MessageModel message);

class WebsocketManager {
  factory WebsocketManager() => _instance;
  WebsocketManager._();
  static late WebSocketChannel channel;
  static final WebsocketManager _instance = WebsocketManager._();
  static const String wsScheme = 'ws';
  static Future<void> initializeWebsocket() async {
    final authService = AuthService.instance;
    final controlId = await authService.getControlId();
    if (controlId.myActivationUser != null) {
      try {
        final wsUrl =
            Uri.parse('ws://10.0.2.2:8000/ws/${controlId.myActivationUser}/');
        channel = WebSocketChannel.connect(wsUrl);

        await channel.ready;
      } catch (e) {
        log('error in websocket connection: $e');
      }
    }
  }

  static Future<void> onMessage(MessageCallback callback) async {
    await channel.ready;
    channel.stream.listen((message) {
      log('Received: $message');
      log('type of message: ${message.runtimeType}');
      final messageMap = jsonDecode(message as String) as Map<String, dynamic>;
      print('typeeee: ${messageMap['type']}');
      if (messageMap['type'] == 'connected') {
        return;
      }

      final decodedMessage = MessageModel.fromJson(messageMap);

      callback(decodedMessage);
    });
  }

  static void initMessaging(int roomId) {
    final jsonMessage = jsonEncode({
      'type': 'init_messaging',
      'room_id': roomId,
    });
    channel.sink.add(jsonMessage);
  }

  static void sendMessage(
      {required String message,
      required int userId,
      required String userName,
      required bool userActive,
      required int receiverId}) {
    print('message: $message');
    print('userId: $userId');
    print('userName: $userName');
    print('userActive: $userActive');
    print('receiverId: $receiverId');
    final jsonMessage = jsonEncode({
      'message': message,
      'user_id': userId,
      'user_name': userName,
      'user_active': userActive,
      'date': DateTime.now().toIso8601String(),
      'time': DateTime.now().toIso8601String(),
      'receiver_id': receiverId,
    });
    channel.sink.add(jsonMessage);
  }

  static void disposeMessaging() {
    final jsonMessage = jsonEncode({
      'type': 'dispose_messaging',
      'message': 'dispose_messaging',
    });
    channel.sink.add(jsonMessage);
  }

  static void closeConnection() {
    channel.sink.close(status.goingAway);
  }
}
