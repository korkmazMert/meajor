// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_receiver_online.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CheckReceiverOnlineImpl _$$CheckReceiverOnlineImplFromJson(
        Map<String, dynamic> json) =>
    _$CheckReceiverOnlineImpl(
      status: json['status'] as String?,
      onlineUsers: (json['online_users'] as num?)?.toInt(),
      isReceiverOnline: json['is_receiver_online'] as bool?,
    );

Map<String, dynamic> _$$CheckReceiverOnlineImplToJson(
        _$CheckReceiverOnlineImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'online_users': instance.onlineUsers,
      'is_receiver_online': instance.isReceiverOnline,
    };
