import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_receiver_online.freezed.dart';
part 'check_receiver_online.g.dart';

@freezed
class CheckReceiverOnline with _$CheckReceiverOnline {
  const factory CheckReceiverOnline({
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'online_users') int? onlineUsers,
    @JsonKey(name: 'is_receiver_online') bool? isReceiverOnline,
  }) = _CheckReceiverOnline;

  factory CheckReceiverOnline.fromJson(Map<String, dynamic> json) =>
      _$CheckReceiverOnlineFromJson(json);
}
