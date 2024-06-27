// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageModelImpl _$$MessageModelImplFromJson(Map<String, dynamic> json) =>
    _$MessageModelImpl(
      type: json['type'] as String?,
      roomId: (json['room_id'] as num?)?.toInt(),
      messageId: (json['message_id'] as num?)?.toInt(),
      message: json['message'] as String?,
      userId: (json['user_id'] as num?)?.toInt(),
      userName: json['user_name'] as String?,
      isRead: json['is_read'] as bool?,
      time: json['time'] as String?,
      date: json['date'] as String?,
      readTime: json['read_time'] as String?,
    );

Map<String, dynamic> _$$MessageModelImplToJson(_$MessageModelImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'room_id': instance.roomId,
      'message_id': instance.messageId,
      'message': instance.message,
      'user_id': instance.userId,
      'user_name': instance.userName,
      'is_read': instance.isRead,
      'time': instance.time,
      'date': instance.date,
      'read_time': instance.readTime,
    };
