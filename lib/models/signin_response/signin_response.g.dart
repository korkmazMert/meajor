// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signin_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SigninResponseImpl _$$SigninResponseImplFromJson(Map<String, dynamic> json) =>
    _$SigninResponseImpl(
      result: json['result'] as String?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SigninResponseImplToJson(
        _$SigninResponseImpl instance) =>
    <String, dynamic>{
      'result': instance.result,
      'message': instance.message,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      fcmResponse: json['fcm_response'] == null
          ? null
          : FcmResponse.fromJson(json['fcm_response'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'fcm_response': instance.fcmResponse,
    };

_$FcmResponseImpl _$$FcmResponseImplFromJson(Map<String, dynamic> json) =>
    _$FcmResponseImpl(
      result: json['result'] as String?,
      message: json['message'] as String?,
      device: json['device'] == null
          ? null
          : Device.fromJson(json['device'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FcmResponseImplToJson(_$FcmResponseImpl instance) =>
    <String, dynamic>{
      'result': instance.result,
      'message': instance.message,
      'device': instance.device,
    };

_$DeviceImpl _$$DeviceImplFromJson(Map<String, dynamic> json) => _$DeviceImpl(
      id: (json['id'] as num?)?.toInt(),
      fcmToken: json['fcm_token'] as String?,
      user: (json['user'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$DeviceImplToJson(_$DeviceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fcm_token': instance.fcmToken,
      'user': instance.user,
    };
