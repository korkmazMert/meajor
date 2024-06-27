// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_rooms.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatRoomsImpl _$$ChatRoomsImplFromJson(Map<String, dynamic> json) =>
    _$ChatRoomsImpl(
      result: json['result'] as String?,
      message: json['message'] as String?,
      allChatRooms: (json['all_chat_rooms'] as List<dynamic>?)
          ?.map((e) => AllChatRoom.fromJson(e as Map<String, dynamic>))
          .toList(),
      myActivationUser: (json['my_activation_user'] as num?)?.toInt(),
      userActive: json['user_active'] as bool?,
    );

Map<String, dynamic> _$$ChatRoomsImplToJson(_$ChatRoomsImpl instance) =>
    <String, dynamic>{
      'result': instance.result,
      'message': instance.message,
      'all_chat_rooms': instance.allChatRooms,
      'my_activation_user': instance.myActivationUser,
      'user_active': instance.userActive,
    };

_$AllChatRoomImpl _$$AllChatRoomImplFromJson(Map<String, dynamic> json) =>
    _$AllChatRoomImpl(
      id: (json['id'] as num?)?.toInt(),
      roomUnreadMessage: (json['room_unread_messages'] as num?)?.toInt(),
      lastMessage: json['last_message'] as String?,
      lastMessageTime: json['last_message_time'] as String?,
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
      onlineUsers: json['online_users'] as String?,
    );

Map<String, dynamic> _$$AllChatRoomImplToJson(_$AllChatRoomImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'room_unread_messages': instance.roomUnreadMessage,
      'last_message': instance.lastMessage,
      'last_message_time': instance.lastMessageTime,
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

_$ParticipantImpl _$$ParticipantImplFromJson(Map<String, dynamic> json) =>
    _$ParticipantImpl(
      senderName: json['sender_name'] as String?,
      senderId: (json['sender_id'] as num?)?.toInt(),
      receiverId: (json['receiver_id'] as num?)?.toInt(),
      receiverName: json['receiver_name'] as String?,
      guestEmail: json['guest_email'] as String?,
      guestPhone: json['guest_phone'] as String?,
    );

Map<String, dynamic> _$$ParticipantImplToJson(_$ParticipantImpl instance) =>
    <String, dynamic>{
      'sender_name': instance.senderName,
      'sender_id': instance.senderId,
      'receiver_id': instance.receiverId,
      'receiver_name': instance.receiverName,
      'guest_email': instance.guestEmail,
      'guest_phone': instance.guestPhone,
    };
