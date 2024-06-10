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

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'imageservice.pb.dart' as $0;

export 'imageservice.pb.dart';

@$pb.GrpcServiceName('imageservice.ImageService')
class ImageServiceClient extends $grpc.Client {
  static final _$processImage = $grpc.ClientMethod<$0.ImageGrpcModel, $0.ImageGrpcModel>(
      '/imageservice.ImageService/ProcessImage',
      ($0.ImageGrpcModel value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ImageGrpcModel.fromBuffer(value));

  ImageServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.ImageGrpcModel> processImage($0.ImageGrpcModel request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$processImage, request, options: options);
  }
}

@$pb.GrpcServiceName('imageservice.ImageService')
abstract class ImageServiceBase extends $grpc.Service {
  $core.String get $name => 'imageservice.ImageService';

  ImageServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ImageGrpcModel, $0.ImageGrpcModel>(
        'ProcessImage',
        processImage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ImageGrpcModel.fromBuffer(value),
        ($0.ImageGrpcModel value) => value.writeToBuffer()));
  }

  $async.Future<$0.ImageGrpcModel> processImage_Pre($grpc.ServiceCall call, $async.Future<$0.ImageGrpcModel> request) async {
    return processImage(call, await request);
  }

  $async.Future<$0.ImageGrpcModel> processImage($grpc.ServiceCall call, $0.ImageGrpcModel request);
}
