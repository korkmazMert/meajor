// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'websocket_connection_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WebsocketConnectionModelImpl _$$WebsocketConnectionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WebsocketConnectionModelImpl(
      message: json['message'] as String?,
      type: json['type'] as String?,
      userId: (json['user_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$WebsocketConnectionModelImplToJson(
        _$WebsocketConnectionModelImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'type': instance.type,
      'user_id': instance.userId,
    };
