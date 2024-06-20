// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_cargo_cost.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetCargoCostImpl _$$GetCargoCostImplFromJson(Map<String, dynamic> json) =>
    _$GetCargoCostImpl(
      result: json['result'] as String?,
      message: json['message'] as String?,
      totalCost: (json['total_cost'] as num?)?.toDouble(),
      image: json['image_model'] == null
          ? null
          : Image.fromJson(json['image_model'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetCargoCostImplToJson(_$GetCargoCostImpl instance) =>
    <String, dynamic>{
      'result': instance.result,
      'message': instance.message,
      'total_cost': instance.totalCost,
      'image_model': instance.image,
    };
