import 'dart:convert';
import 'dart:developer';

import 'package:alisatiyor/services/network/auth/auth_service.dart';
import 'package:web_socket_channel/status.dart' as status;
import 'package:web_socket_channel/web_socket_channel.dart';

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

        channel.stream.listen((message) {
          log('Received: $message');
        });
      } catch (e) {
        log('error in websocket connection: $e');
      }
    }
  }

  static void sendMessage(String message) {
    final jsonMessage = jsonEncode({
      'message': message,
    });
    channel.sink.add(jsonMessage);
  }

  static void closeConnection() {
    channel.sink.close(status.goingAway);
  }
}
