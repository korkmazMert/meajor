//
//  Generated code. Do not modify.
//  source: chatservice.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class ChatMessageRequest extends $pb.GeneratedMessage {
  factory ChatMessageRequest({
    $fixnum.Int64? threadId,
    $core.String? message,
    $fixnum.Int64? senderId,
    $fixnum.Int64? recipientId,
  }) {
    final $result = create();
    if (threadId != null) {
      $result.threadId = threadId;
    }
    if (message != null) {
      $result.message = message;
    }
    if (senderId != null) {
      $result.senderId = senderId;
    }
    if (recipientId != null) {
      $result.recipientId = recipientId;
    }
    return $result;
  }
  ChatMessageRequest._() : super();
  factory ChatMessageRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ChatMessageRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ChatMessageRequest',
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1, _omitFieldNames ? '' : 'threadId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..a<$fixnum.Int64>(
        3, _omitFieldNames ? '' : 'senderId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        4, _omitFieldNames ? '' : 'recipientId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ChatMessageRequest clone() => ChatMessageRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ChatMessageRequest copyWith(void Function(ChatMessageRequest) updates) =>
      super.copyWith((message) => updates(message as ChatMessageRequest))
          as ChatMessageRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatMessageRequest create() => ChatMessageRequest._();
  ChatMessageRequest createEmptyInstance() => create();
  static $pb.PbList<ChatMessageRequest> createRepeated() =>
      $pb.PbList<ChatMessageRequest>();
  @$core.pragma('dart2js:noInline')
  static ChatMessageRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChatMessageRequest>(create);
  static ChatMessageRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get threadId => $_getI64(0);
  @$pb.TagNumber(1)
  set threadId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasThreadId() => $_has(0);
  @$pb.TagNumber(1)
  void clearThreadId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get senderId => $_getI64(2);
  @$pb.TagNumber(3)
  set senderId($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasSenderId() => $_has(2);
  @$pb.TagNumber(3)
  void clearSenderId() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get recipientId => $_getI64(3);
  @$pb.TagNumber(4)
  set recipientId($fixnum.Int64 v) {
    $_setInt64(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasRecipientId() => $_has(3);
  @$pb.TagNumber(4)
  void clearRecipientId() => clearField(4);
}

class ChatMessageResponse extends $pb.GeneratedMessage {
  factory ChatMessageResponse({
    $fixnum.Int64? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  ChatMessageResponse._() : super();
  factory ChatMessageResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ChatMessageResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ChatMessageResponse',
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ChatMessageResponse clone() => ChatMessageResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ChatMessageResponse copyWith(void Function(ChatMessageResponse) updates) =>
      super.copyWith((message) => updates(message as ChatMessageResponse))
          as ChatMessageResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatMessageResponse create() => ChatMessageResponse._();
  ChatMessageResponse createEmptyInstance() => create();
  static $pb.PbList<ChatMessageResponse> createRepeated() =>
      $pb.PbList<ChatMessageResponse>();
  @$core.pragma('dart2js:noInline')
  static ChatMessageResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChatMessageResponse>(create);
  static ChatMessageResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class ChatMessage extends $pb.GeneratedMessage {
  factory ChatMessage({
    $fixnum.Int64? id,
    $fixnum.Int64? threadId,
    $core.String? message,
    $fixnum.Int64? senderId,
    $fixnum.Int64? recipientId,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (threadId != null) {
      $result.threadId = threadId;
    }
    if (message != null) {
      $result.message = message;
    }
    if (senderId != null) {
      $result.senderId = senderId;
    }
    if (recipientId != null) {
      $result.recipientId = recipientId;
    }
    return $result;
  }
  ChatMessage._() : super();
  factory ChatMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ChatMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ChatMessage',
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        2, _omitFieldNames ? '' : 'threadId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(3, _omitFieldNames ? '' : 'message')
    ..a<$fixnum.Int64>(
        4, _omitFieldNames ? '' : 'senderId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(
        5, _omitFieldNames ? '' : 'recipientId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ChatMessage clone() => ChatMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ChatMessage copyWith(void Function(ChatMessage) updates) =>
      super.copyWith((message) => updates(message as ChatMessage))
          as ChatMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatMessage create() => ChatMessage._();
  ChatMessage createEmptyInstance() => create();
  static $pb.PbList<ChatMessage> createRepeated() => $pb.PbList<ChatMessage>();
  @$core.pragma('dart2js:noInline')
  static ChatMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChatMessage>(create);
  static ChatMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get threadId => $_getI64(1);
  @$pb.TagNumber(2)
  set threadId($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasThreadId() => $_has(1);
  @$pb.TagNumber(2)
  void clearThreadId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get message => $_getSZ(2);
  @$pb.TagNumber(3)
  set message($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessage() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get senderId => $_getI64(3);
  @$pb.TagNumber(4)
  set senderId($fixnum.Int64 v) {
    $_setInt64(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasSenderId() => $_has(3);
  @$pb.TagNumber(4)
  void clearSenderId() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get recipientId => $_getI64(4);
  @$pb.TagNumber(5)
  set recipientId($fixnum.Int64 v) {
    $_setInt64(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasRecipientId() => $_has(4);
  @$pb.TagNumber(5)
  void clearRecipientId() => clearField(5);
}

class ChatClient extends $pb.GeneratedMessage {
  factory ChatClient({
    $fixnum.Int64? recipientId,
  }) {
    final $result = create();
    if (recipientId != null) {
      $result.recipientId = recipientId;
    }
    return $result;
  }
  ChatClient._() : super();
  factory ChatClient.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ChatClient.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ChatClient',
      createEmptyInstance: create)
    ..a<$fixnum.Int64>(
        1, _omitFieldNames ? '' : 'recipientId', $pb.PbFieldType.OU6,
        defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ChatClient clone() => ChatClient()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ChatClient copyWith(void Function(ChatClient) updates) =>
      super.copyWith((message) => updates(message as ChatClient)) as ChatClient;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChatClient create() => ChatClient._();
  ChatClient createEmptyInstance() => create();
  static $pb.PbList<ChatClient> createRepeated() => $pb.PbList<ChatClient>();
  @$core.pragma('dart2js:noInline')
  static ChatClient getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChatClient>(create);
  static ChatClient? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get recipientId => $_getI64(0);
  @$pb.TagNumber(1)
  set recipientId($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasRecipientId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRecipientId() => clearField(1);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
