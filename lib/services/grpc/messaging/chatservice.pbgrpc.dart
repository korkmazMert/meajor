//
//  Generated code. Do not modify.
//  source: chatservice.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:alisatiyor/services/grpc/messaging/chatservice.pb.dart' as $0;
import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

export 'chatservice.pb.dart';

@$pb.GrpcServiceName('ChatService')
class ChatServiceClient extends $grpc.Client {
  ChatServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);
  static final _$sendMessage =
      $grpc.ClientMethod<$0.ChatMessageRequest, $0.ChatMessageResponse>(
          '/ChatService/SendMessage',
          ($0.ChatMessageRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ChatMessageResponse.fromBuffer(value));
  static final _$receiveMessages =
      $grpc.ClientMethod<$0.ChatClient, $0.ChatMessage>(
          '/ChatService/ReceiveMessages',
          ($0.ChatClient value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.ChatMessage.fromBuffer(value));

  $grpc.ResponseFuture<$0.ChatMessageResponse> sendMessage(
      $0.ChatMessageRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sendMessage, request, options: options);
  }

  $grpc.ResponseStream<$0.ChatMessage> receiveMessages($0.ChatClient request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$receiveMessages, $async.Stream.fromIterable([request]),
        options: options);
  }
}

@$pb.GrpcServiceName('ChatService')
abstract class ChatServiceBase extends $grpc.Service {
  ChatServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.ChatMessageRequest, $0.ChatMessageResponse>(
            'SendMessage',
            sendMessage_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ChatMessageRequest.fromBuffer(value),
            ($0.ChatMessageResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ChatClient, $0.ChatMessage>(
        'ReceiveMessages',
        receiveMessages_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.ChatClient.fromBuffer(value),
        ($0.ChatMessage value) => value.writeToBuffer()));
  }
  $core.String get $name => 'ChatService';

  $async.Future<$0.ChatMessageResponse> sendMessage_Pre($grpc.ServiceCall call,
      $async.Future<$0.ChatMessageRequest> request) async {
    return sendMessage(call, await request);
  }

  $async.Stream<$0.ChatMessage> receiveMessages_Pre(
      $grpc.ServiceCall call, $async.Future<$0.ChatClient> request) async* {
    yield* receiveMessages(call, await request);
  }

  $async.Future<$0.ChatMessageResponse> sendMessage(
      $grpc.ServiceCall call, $0.ChatMessageRequest request);
  $async.Stream<$0.ChatMessage> receiveMessages(
      $grpc.ServiceCall call, $0.ChatClient request);
}
