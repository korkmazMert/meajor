// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notify_new_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotifyNewMessageImpl _$$NotifyNewMessageImplFromJson(
        Map<String, dynamic> json) =>
    _$NotifyNewMessageImpl(
      type: json['type'] as String?,
      roomId: json['room_id'] as String?,
      message: json['message'] as String?,
      messageId: (json['message_id'] as num?)?.toInt(),
      userId: json['user_id'] as String?,
      userName: json['user_name'] as String?,
      date: json['date'] as String?,
      time: json['time'] as String?,
      isRead: json['is_read'] as bool?,
      receiverId: (json['receiver_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$NotifyNewMessageImplToJson(
        _$NotifyNewMessageImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'room_id': instance.roomId,
      'message': instance.message,
      'message_id': instance.messageId,
      'user_id': instance.userId,
      'user_name': instance.userName,
      'date': instance.date,
      'time': instance.time,
      'is_read': instance.isRead,
      'receiver_id': instance.receiverId,
    };
