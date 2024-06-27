import 'package:freezed_annotation/freezed_annotation.dart';
part 'message_model.freezed.dart';
part 'message_model.g.dart';

@freezed
class MessageModel with _$MessageModel {
  const factory MessageModel({
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'room_id') int? roomId,
    @JsonKey(name: 'message_id') int? messageId,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'user_name') String? userName,
    @JsonKey(name: 'is_read') bool? isRead,
    @JsonKey(name: 'time') String? time,
    @JsonKey(name: 'date') String? date,
    @JsonKey(name: 'read_time') String? readTime,
  }) = _MessageModel;
  factory MessageModel.fromJson(Map<String, dynamic> json) =>
      _$MessageModelFromJson(json);
}
