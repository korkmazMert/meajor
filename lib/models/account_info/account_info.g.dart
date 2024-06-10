// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountInfoImpl _$$AccountInfoImplFromJson(Map<String, dynamic> json) =>
    _$AccountInfoImpl(
      result: json['result'] as String?,
      message: json['message'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AccountInfoImplToJson(_$AccountInfoImpl instance) =>
    <String, dynamic>{
      'result': instance.result,
      'message': instance.message,
      'user': instance.user,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: (json['id'] as num?)?.toInt(),
      password: json['password'] as String?,
      uuid: json['uuid'] as String?,
      email: json['email'] as String?,
      username: json['username'],
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      isStaff: json['is_staff'] as bool?,
      isSuperuser: json['is_superuser'] as bool?,
      isActive: json['is_active'] as bool?,
      lastLogin: json['last_login'] == null
          ? null
          : DateTime.parse(json['last_login'] as String),
      dateJoined: json['date_joined'] == null
          ? null
          : DateTime.parse(json['date_joined'] as String),
      phone: json['phone'],
      groups: json['groups'] as List<dynamic>?,
      userPermissions: json['user_permissions'] as List<dynamic>?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'password': instance.password,
      'uuid': instance.uuid,
      'email': instance.email,
      'username': instance.username,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'is_staff': instance.isStaff,
      'is_superuser': instance.isSuperuser,
      'is_active': instance.isActive,
      'last_login': instance.lastLogin?.toIso8601String(),
      'date_joined': instance.dateJoined?.toIso8601String(),
      'phone': instance.phone,
      'groups': instance.groups,
      'user_permissions': instance.userPermissions,
    };
