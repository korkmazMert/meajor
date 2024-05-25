import 'package:alisatiyor/services/grpc/image/imageservice.pbgrpc.dart';
import 'package:grpc/grpc.dart';

class ImageClient {
  ImageClient(String url, int port) {
    channel = ClientChannel(
      url,
      port: port,
      options: const ChannelOptions(
        credentials: ChannelCredentials.insecure(),
      ),
    );
    stub = ImageServiceClient(channel);
  }
  late ClientChannel channel;
  late ImageServiceClient stub;

  Future<ImageResponse> sendImage(ImageRequest request) {
    return stub.sendImage(request);
  }

  Future<ImageResponse> receiveImage(ImageRequest request) {
    return stub.receiveImage(request);
  }

  Future<void> shutdown() async {
    await channel.shutdown();
  }
}
