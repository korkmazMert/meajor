//
//  Generated code. Do not modify.
//  source: imageservice.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:alisatiyor/services/grpc/image/imageservice.pb.dart' as $0;
import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

export 'imageservice.pb.dart';

@$pb.GrpcServiceName('imageservice.ImageService')
class ImageServiceClient extends $grpc.Client {
  ImageServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);
  static final _$sendImage =
      $grpc.ClientMethod<$0.ImageRequest, $0.ImageResponse>(
          '/imageservice.ImageService/SendImage',
          ($0.ImageRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.ImageResponse.fromBuffer(value));
  static final _$receiveImage =
      $grpc.ClientMethod<$0.ImageRequest, $0.ImageResponse>(
          '/imageservice.ImageService/ReceiveImage',
          ($0.ImageRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.ImageResponse.fromBuffer(value));

  $grpc.ResponseFuture<$0.ImageResponse> sendImage($0.ImageRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sendImage, request, options: options);
  }

  $grpc.ResponseFuture<$0.ImageResponse> receiveImage($0.ImageRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$receiveImage, request, options: options);
  }
}

@$pb.GrpcServiceName('imageservice.ImageService')
abstract class ImageServiceBase extends $grpc.Service {
  ImageServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ImageRequest, $0.ImageResponse>(
        'SendImage',
        sendImage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ImageRequest.fromBuffer(value),
        ($0.ImageResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ImageRequest, $0.ImageResponse>(
        'ReceiveImage',
        receiveImage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ImageRequest.fromBuffer(value),
        ($0.ImageResponse value) => value.writeToBuffer()));
  }
  $core.String get $name => 'imageservice.ImageService';

  $async.Future<$0.ImageResponse> sendImage_Pre(
      $grpc.ServiceCall call, $async.Future<$0.ImageRequest> request) async {
    return sendImage(call, await request);
  }

  $async.Future<$0.ImageResponse> receiveImage_Pre(
      $grpc.ServiceCall call, $async.Future<$0.ImageRequest> request) async {
    return receiveImage(call, await request);
  }

  $async.Future<$0.ImageResponse> sendImage(
      $grpc.ServiceCall call, $0.ImageRequest request);
  $async.Future<$0.ImageResponse> receiveImage(
      $grpc.ServiceCall call, $0.ImageRequest request);
}
