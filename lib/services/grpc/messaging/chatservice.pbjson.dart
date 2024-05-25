//
//  Generated code. Do not modify.
//  source: chatservice.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use chatMessageRequestDescriptor instead')
const ChatMessageRequest$json = {
  '1': 'ChatMessageRequest',
  '2': [
    {'1': 'thread_id', '3': 1, '4': 1, '5': 4, '10': 'threadId'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    {'1': 'sender_id', '3': 3, '4': 1, '5': 4, '10': 'senderId'},
    {'1': 'recipient_id', '3': 4, '4': 1, '5': 4, '10': 'recipientId'},
  ],
};

/// Descriptor for `ChatMessageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatMessageRequestDescriptor = $convert.base64Decode(
    'ChJDaGF0TWVzc2FnZVJlcXVlc3QSGwoJdGhyZWFkX2lkGAEgASgEUgh0aHJlYWRJZBIYCgdtZX'
    'NzYWdlGAIgASgJUgdtZXNzYWdlEhsKCXNlbmRlcl9pZBgDIAEoBFIIc2VuZGVySWQSIQoMcmVj'
    'aXBpZW50X2lkGAQgASgEUgtyZWNpcGllbnRJZA==');

@$core.Deprecated('Use chatMessageResponseDescriptor instead')
const ChatMessageResponse$json = {
  '1': 'ChatMessageResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
  ],
};

/// Descriptor for `ChatMessageResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatMessageResponseDescriptor = $convert
    .base64Decode('ChNDaGF0TWVzc2FnZVJlc3BvbnNlEg4KAmlkGAEgASgEUgJpZA==');

@$core.Deprecated('Use chatMessageDescriptor instead')
const ChatMessage$json = {
  '1': 'ChatMessage',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 4, '10': 'id'},
    {'1': 'thread_id', '3': 2, '4': 1, '5': 4, '10': 'threadId'},
    {'1': 'message', '3': 3, '4': 1, '5': 9, '10': 'message'},
    {'1': 'sender_id', '3': 4, '4': 1, '5': 4, '10': 'senderId'},
    {'1': 'recipient_id', '3': 5, '4': 1, '5': 4, '10': 'recipientId'},
  ],
};

/// Descriptor for `ChatMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatMessageDescriptor = $convert.base64Decode(
    'CgtDaGF0TWVzc2FnZRIOCgJpZBgBIAEoBFICaWQSGwoJdGhyZWFkX2lkGAIgASgEUgh0aHJlYW'
    'RJZBIYCgdtZXNzYWdlGAMgASgJUgdtZXNzYWdlEhsKCXNlbmRlcl9pZBgEIAEoBFIIc2VuZGVy'
    'SWQSIQoMcmVjaXBpZW50X2lkGAUgASgEUgtyZWNpcGllbnRJZA==');

@$core.Deprecated('Use chatClientDescriptor instead')
const ChatClient$json = {
  '1': 'ChatClient',
  '2': [
    {'1': 'recipient_id', '3': 1, '4': 1, '5': 4, '10': 'recipientId'},
  ],
};

/// Descriptor for `ChatClient`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatClientDescriptor = $convert.base64Decode(
    'CgpDaGF0Q2xpZW50EiEKDHJlY2lwaWVudF9pZBgBIAEoBFILcmVjaXBpZW50SWQ=');
