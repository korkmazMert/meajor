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

  Future<ImageGrpcModel> processImage(ImageGrpcModel request) {
    return stub.processImage(request);
  }

  Future<void> shutdown() async {
    await channel.shutdown();
  }
}
