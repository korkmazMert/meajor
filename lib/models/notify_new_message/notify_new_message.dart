import 'package:freezed_annotation/freezed_annotation.dart';
part 'notify_new_message.freezed.dart';
part 'notify_new_message.g.dart';

@freezed
class NotifyNewMessage with _$NotifyNewMessage {
  const factory NotifyNewMessage({
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'room_id') String? roomId,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'message_id') int? messageId,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'user_name') String? userName,
    @JsonKey(name: 'date') String? date,
    @JsonKey(name: 'time') String? time,
    @JsonKey(name: 'is_read') bool? isRead,
    @JsonKey(name: 'receiver_id') int? receiverId,
  }) = _NotifyNewMessage;
  factory NotifyNewMessage.fromJson(Map<String, dynamic> json) =>
      _$NotifyNewMessageFromJson(json);
}
