import 'package:freezed_annotation/freezed_annotation.dart';
part 'account_info.freezed.dart';
part 'account_info.g.dart';

@freezed
class AccountInfo with _$AccountInfo {
  const factory AccountInfo({
    @JsonKey(name: 'result') String? result,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'user') User? user,
  }) = _AccountInfo;
  factory AccountInfo.fromJson(Map<String, Object?> json) =>
      _$AccountInfoFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'password') String? password,
    @JsonKey(name: 'uuid') String? uuid,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'username') dynamic username,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'is_staff') bool? isStaff,
    @JsonKey(name: 'is_superuser') bool? isSuperuser,
    @JsonKey(name: 'is_active') bool? isActive,
    @JsonKey(name: 'last_login') DateTime? lastLogin,
    @JsonKey(name: 'date_joined') DateTime? dateJoined,
    @JsonKey(name: 'phone') dynamic phone,
    @JsonKey(name: 'groups') List<dynamic>? groups,
    @JsonKey(name: 'user_permissions') List<dynamic>? userPermissions,
  }) = _User;
  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
