import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_control_id.freezed.dart';
part 'get_control_id.g.dart';

@freezed
class GetControlId with _$GetControlId {
  const factory GetControlId({
    @JsonKey(name: 'result') String? result,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'my_activation_user') int? myActivationUser,
    @JsonKey(name: 'is_superuser') bool? isSuperuser,
  }) = _GetControlId;
  factory GetControlId.fromJson(Map<String, dynamic> json) =>
      _$GetControlIdFromJson(json);
}
