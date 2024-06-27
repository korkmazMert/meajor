import 'package:freezed_annotation/freezed_annotation.dart';
part 'chat_rooms.freezed.dart';
part 'chat_rooms.g.dart';

@freezed
class ChatRooms with _$ChatRooms {
  const factory ChatRooms({
    @JsonKey(name: 'result') String? result,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'all_chat_rooms') List<AllChatRoom>? allChatRooms,
    @JsonKey(name: 'my_activation_user') int? myActivationUser,
    @JsonKey(name: 'user_active') bool? userActive,
  }) = _ChatRooms;
  factory ChatRooms.fromJson(Map<String, dynamic> json) =>
      _$ChatRoomsFromJson(json);
}

@freezed
class AllChatRoom with _$AllChatRoom {
  const factory AllChatRoom({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'room_unread_messages') int? roomUnreadMessage,
    @JsonKey(name: 'last_message') String? lastMessage,
    @JsonKey(name: 'last_message_time') String? lastMessageTime,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'control_id') String? controlId,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'unread_user') bool? unreadUser,
    @JsonKey(name: 'unread_admin') bool? unreadAdmin,
    @JsonKey(name: 'is_cargo') bool? isCargo,
    @JsonKey(name: 'is_customer') bool? isCustomer,
    @JsonKey(name: 'is_guest') bool? isGuest,
    @JsonKey(name: 'is_seller') bool? isSeller,
    @JsonKey(name: 'participant') List<Participant>? participant,
    @JsonKey(name: 'online_users') String? onlineUsers,
  }) = _AllChatRoom;
  factory AllChatRoom.fromJson(Map<String, dynamic> json) =>
      _$AllChatRoomFromJson(json);
}

@freezed
class Participant with _$Participant {
  const factory Participant({
    @JsonKey(name: 'sender_name') String? senderName,
    @JsonKey(name: 'sender_id') int? senderId,
    @JsonKey(name: 'receiver_id') int? receiverId,
    @JsonKey(name: 'receiver_name') String? receiverName,
    @JsonKey(name: 'guest_email') String? guestEmail,
    @JsonKey(name: 'guest_phone') String? guestPhone,
  }) = _Participant;
  factory Participant.fromJson(Map<String, dynamic> json) =>
      _$ParticipantFromJson(json);
}
