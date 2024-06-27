// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_control_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetControlIdImpl _$$GetControlIdImplFromJson(Map<String, dynamic> json) =>
    _$GetControlIdImpl(
      result: json['result'] as String?,
      message: json['message'] as String?,
      myActivationUser: (json['my_activation_user'] as num?)?.toInt(),
      isSuperuser: json['is_superuser'] as bool?,
    );

Map<String, dynamic> _$$GetControlIdImplToJson(_$GetControlIdImpl instance) =>
    <String, dynamic>{
      'result': instance.result,
      'message': instance.message,
      'my_activation_user': instance.myActivationUser,
      'is_superuser': instance.isSuperuser,
    };
