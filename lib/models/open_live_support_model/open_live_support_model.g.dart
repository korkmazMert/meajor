// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_live_support_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OpenLiveSupportModelImpl _$$OpenLiveSupportModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OpenLiveSupportModelImpl(
      myActivationUser: (json['my_activation_user'] as num?)?.toInt(),
      userActive: json['user_active'] as bool?,
      controlId: (json['control_id'] as num?)?.toInt(),
      room: json['room'] == null
          ? null
          : Room.fromJson(json['room'] as Map<String, dynamic>),
      roomId: (json['room_id'] as num?)?.toInt(),
      userName: json['user_name'] as String?,
      participant: json['participant'] == null
          ? null
          : Participant.fromJson(json['participant'] as Map<String, dynamic>),
      messagesPageLength: (json['messages_page_length'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$OpenLiveSupportModelImplToJson(
        _$OpenLiveSupportModelImpl instance) =>
    <String, dynamic>{
      'my_activation_user': instance.myActivationUser,
      'user_active': instance.userActive,
      'control_id': instance.controlId,
      'room': instance.room,
      'room_id': instance.roomId,
      'user_name': instance.userName,
      'participant': instance.participant,
      'messages_page_length': instance.messagesPageLength,
    };

_$ParticipantImpl _$$ParticipantImplFromJson(Map<String, dynamic> json) =>
    _$ParticipantImpl(
      senderName: json['sender_name'] as String?,
      senderId: (json['sender_id'] as num?)?.toInt(),
      receiverId: (json['receiver_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ParticipantImplToJson(_$ParticipantImpl instance) =>
    <String, dynamic>{
      'sender_name': instance.senderName,
      'sender_id': instance.senderId,
      'receiver_id': instance.receiverId,
    };

_$RoomImpl _$$RoomImplFromJson(Map<String, dynamic> json) => _$RoomImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      controlId: json['control_id'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      unreadUser: json['unread_user'] as bool?,
      unreadAdmin: json['unread_admin'] as bool?,
      isCargo: json['is_cargo'] as bool?,
      isCustomer: json['is_customer'] as bool?,
      isGuest: json['is_guest'] as bool?,
      isSeller: json['is_seller'] as bool?,
      participant: (json['participant'] as List<dynamic>?)
          ?.map((e) => Participant.fromJson(e as Map<String, dynamic>))
          .toList(),
      onlineUsers: json['online_users'],
    );

Map<String, dynamic> _$$RoomImplToJson(_$RoomImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'control_id': instance.controlId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'unread_user': instance.unreadUser,
      'unread_admin': instance.unreadAdmin,
      'is_cargo': instance.isCargo,
      'is_customer': instance.isCustomer,
      'is_guest': instance.isGuest,
      'is_seller': instance.isSeller,
      'participant': instance.participant,
      'online_users': instance.onlineUsers,
    };
