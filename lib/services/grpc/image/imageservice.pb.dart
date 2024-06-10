//
//  Generated code. Do not modify.
//  source: imageservice.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ImageGrpcModel extends $pb.GeneratedMessage {
  factory ImageGrpcModel({
    $core.List<$core.int>? image,
    $core.int? id,
    $core.int? userid,
  }) {
    final $result = create();
    if (image != null) {
      $result.image = image;
    }
    if (id != null) {
      $result.id = id;
    }
    if (userid != null) {
      $result.userid = userid;
    }
    return $result;
  }
  ImageGrpcModel._() : super();
  factory ImageGrpcModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ImageGrpcModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ImageGrpcModel', package: const $pb.PackageName(_omitMessageNames ? '' : 'imageservice'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'image', $pb.PbFieldType.OY)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'userid', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ImageGrpcModel clone() => ImageGrpcModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ImageGrpcModel copyWith(void Function(ImageGrpcModel) updates) => super.copyWith((message) => updates(message as ImageGrpcModel)) as ImageGrpcModel;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ImageGrpcModel create() => ImageGrpcModel._();
  ImageGrpcModel createEmptyInstance() => create();
  static $pb.PbList<ImageGrpcModel> createRepeated() => $pb.PbList<ImageGrpcModel>();
  @$core.pragma('dart2js:noInline')
  static ImageGrpcModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ImageGrpcModel>(create);
  static ImageGrpcModel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get image => $_getN(0);
  @$pb.TagNumber(1)
  set image($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasImage() => $_has(0);
  @$pb.TagNumber(1)
  void clearImage() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get id => $_getIZ(1);
  @$pb.TagNumber(2)
  set id($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get userid => $_getIZ(2);
  @$pb.TagNumber(3)
  set userid($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUserid() => $_has(2);
  @$pb.TagNumber(3)
  void clearUserid() => clearField(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
