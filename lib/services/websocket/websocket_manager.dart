import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:alisatiyor/models/message_model/message_model.dart';
import 'package:alisatiyor/models/notify_new_message/notify_new_message.dart';
import 'package:alisatiyor/models/websocket_connection_model/websocket_connection_model.dart';
import 'package:alisatiyor/services/network/auth/auth_service.dart';
import 'package:web_socket_channel/status.dart' as status;
import 'package:web_socket_channel/web_socket_channel.dart';

typedef MessageCallback = void Function(MessageModel message);
typedef ConnectionCallback = void Function(WebsocketConnectionModel connection);
typedef NotifyNewMessageCallback = void Function(NotifyNewMessage message);
const String wsScheme = 'ws';
// for android emulator
const String wsHost = '10.0.2.2:8000';
// for real device
// const String wsHost = '192.168.1.111';

class WebsocketManager {
  factory WebsocketManager() => _instance;
  WebsocketManager._();
  static late WebSocketChannel channel;
  static final WebsocketManager _instance = WebsocketManager._();
  static StreamSubscription? _subscription;
  static StreamController? broadcastStreamController;
  static const String wsScheme = 'ws';
  static Future<void> initializeWebsocket() async {
    final authService = AuthService.instance;
    final controlId = await authService.getControlId();
    if (controlId.myActivationUser != null) {
      try {
        final wsUrl =
            Uri.parse('$wsScheme://$wsHost/ws/${controlId.myActivationUser}/');
        channel = WebSocketChannel.connect(wsUrl);

        await channel.ready;
      } catch (e) {
        log('error in websocket connection: $e');
      }
    }
  }

  static Future<void> onMessage({
    MessageCallback? messageCallBack,
    ConnectionCallback? connectionCallBack,
    NotifyNewMessageCallback? notifyNewMessageCallBack,
  }) async {
    await channel.ready;
    await _subscription?.cancel();
    await broadcastStreamController?.close();
    broadcastStreamController = StreamController.broadcast();

    _subscription = channel.stream.listen((message) {
      broadcastStreamController?.add(message);
    });

    broadcastStreamController?.stream.listen((message) {
      log('Received: $message');
      log('type of message: ${message.runtimeType}');
      final messageMap = jsonDecode(message as String) as Map<String, dynamic>;
      log('typeeee: ${messageMap['type']}');
      if (messageMap['type'] == 'connected' ||
          messageMap['type'] == 'disconnected') {
        final decodedConnection = WebsocketConnectionModel.fromJson(messageMap);
        if (connectionCallBack != null) {
          connectionCallBack(decodedConnection);
        }
      } else if (messageMap['type'] == 'notify_new_message') {
        log('messsssage: $messageMap');
        if (notifyNewMessageCallBack != null) {
          final decodedNotifyNewMessage = NotifyNewMessage.fromJson(messageMap);
          log('decodedNotifyNewMessage: $decodedNotifyNewMessage  ');
          notifyNewMessageCallBack(decodedNotifyNewMessage);
        }
      } else {
        final decodedMessage = MessageModel.fromJson(messageMap);
        if (messageCallBack != null) {
          messageCallBack(decodedMessage);
        }
      }
    });
  }

  static Future<void> initMessaging(int roomId) async {
    log('roomId: $roomId');
    final jsonMessage = jsonEncode({
      'type': 'init_messaging',
      'room_id': roomId,
    });
    await channel.ready;
    channel.sink.add(jsonMessage);
  }

  static void sendMessage(
      {required String message,
      required int userId,
      required String userName,
      required bool userActive,
      required int receiverId}) {
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
