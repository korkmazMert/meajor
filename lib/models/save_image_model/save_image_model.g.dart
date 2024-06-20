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
          : Image.fromJson(json['image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SaveImageModelImplToJson(
        _$SaveImageModelImpl instance) =>
    <String, dynamic>{
      'result': instance.result,
      'message': instance.message,
      'image': instance.image,
    };

_$ImageImpl _$$ImageImplFromJson(Map<String, dynamic> json) => _$ImageImpl(
      id: (json['id'] as num?)?.toInt(),
      image: json['image'] as String?,
      processedImage: json['processed_image'] as String?,
      widths: (json['widths'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      heights: (json['heights'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      user: (json['user'] as num?)?.toInt(),
      totalCost: (json['total_cost'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$ImageImplToJson(_$ImageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'processed_image': instance.processedImage,
      'widths': instance.widths,
      'heights': instance.heights,
      'user': instance.user,
      'total_cost': instance.totalCost,
    };
