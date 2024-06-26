// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SaveImageModelImpl _$$SaveImageModelImplFromJson(Map<String, dynamic> json) =>
    _$SaveImageModelImpl(
      result: json['result'] as String?,
      message: json['message'] as String?,
      image: json['image'] == null
          ? null
          : UserImage.fromJson(json['image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SaveImageModelImplToJson(
        _$SaveImageModelImpl instance) =>
    <String, dynamic>{
      'result': instance.result,
      'message': instance.message,
      'image': instance.image,
    };
