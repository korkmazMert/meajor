//
//  Generated code. Do not modify.
//  source: imageservice.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use imageRequestDescriptor instead')
const ImageRequest$json = {
  '1': 'ImageRequest',
  '2': [
    {'1': 'sender_id', '3': 1, '4': 1, '5': 3, '10': 'senderId'},
    {'1': 'image', '3': 2, '4': 1, '5': 12, '10': 'image'},
  ],
};

/// Descriptor for `ImageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List imageRequestDescriptor = $convert.base64Decode(
    'CgxJbWFnZVJlcXVlc3QSGwoJc2VuZGVyX2lkGAEgASgDUghzZW5kZXJJZBIUCgVpbWFnZRgCIA'
    'EoDFIFaW1hZ2U=');

@$core.Deprecated('Use imageResponseDescriptor instead')
const ImageResponse$json = {
  '1': 'ImageResponse',
  '2': [
    {'1': 'sender_id', '3': 1, '4': 1, '5': 3, '10': 'senderId'},
    {'1': 'image', '3': 2, '4': 1, '5': 12, '10': 'image'},
  ],
};

/// Descriptor for `ImageResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List imageResponseDescriptor = $convert.base64Decode(
    'Cg1JbWFnZVJlc3BvbnNlEhsKCXNlbmRlcl9pZBgBIAEoA1IIc2VuZGVySWQSFAoFaW1hZ2UYAi'
    'ABKAxSBWltYWdl');
