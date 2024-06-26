import 'package:freezed_annotation/freezed_annotation.dart';
part 'open_live_support_model.freezed.dart';
part 'open_live_support_model.g.dart';

@freezed
class OpenLiveSupportModel with _$OpenLiveSupportModel {
  const factory OpenLiveSupportModel({
    @JsonKey(name: 'my_activation_user') int? myActivationUser,
    @JsonKey(name: 'user_active') bool? userActive,
    @JsonKey(name: 'control_id') int? controlId,
    @JsonKey(name: 'room') Room? room,
    @JsonKey(name: 'room_id') int? roomId,
    @JsonKey(name: 'user_name') String? userName,
    @JsonKey(name: 'participant') Participant? participant,
    @JsonKey(name: 'messages_page_length') int? messagesPageLength,
  }) = _OpenLiveSupportModel;
  factory OpenLiveSupportModel.fromJson(Map<String, dynamic> json) =>
      _$OpenLiveSupportModelFromJson(json);
}

@freezed
class Participant with _$Participant {
  const factory Participant({
    @JsonKey(name: 'sender_name') String? senderName,
    @JsonKey(name: 'sender_id') int? senderId,
    @JsonKey(name: 'receiver_id') int? receiverId,
  }) = _Participant;
  factory Participant.fromJson(Map<String, dynamic> json) =>
      _$ParticipantFromJson(json);
}

@freezed
class Room with _$Room {
  const factory Room({
    @JsonKey(name: 'id') int? id,
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
    @JsonKey(name: 'online_users') dynamic onlineUsers,
  }) = _Room;
  factory Room.fromJson(Map<String, dynamic> json) => _$RoomFromJson(json);
}
