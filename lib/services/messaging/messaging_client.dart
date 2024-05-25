import 'package:alisatiyor/services/grpc/messaging/chatservice.pbgrpc.dart';
import 'package:grpc/grpc.dart';

class MessagingClient {
  MessagingClient(String url, int port) {
    channel = ClientChannel(
      url,
      port: port,
      options: const ChannelOptions(
        credentials: ChannelCredentials.insecure(),
      ),
    );
    stub = ChatServiceClient(channel);
  }
  late ClientChannel channel;
  late ChatServiceClient stub;

  Future<ChatMessageResponse> sendMessage(ChatMessageRequest request) {
    return stub.sendMessage(request);
  }

  Stream<ChatMessage> receiveMessages(ChatClient request) {
    return stub.receiveMessages(request);
  }

  Future<void> shutdown() async {
    await channel.shutdown();
  }
}
