// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_receiver_online.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CheckReceiverOnline _$CheckReceiverOnlineFromJson(Map<String, dynamic> json) {
  return _CheckReceiverOnline.fromJson(json);
}

/// @nodoc
mixin _$CheckReceiverOnline {
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'online_users')
  int? get onlineUsers => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_receiver_online')
  bool? get isReceiverOnline => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckReceiverOnlineCopyWith<CheckReceiverOnline> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckReceiverOnlineCopyWith<$Res> {
  factory $CheckReceiverOnlineCopyWith(
          CheckReceiverOnline value, $Res Function(CheckReceiverOnline) then) =
      _$CheckReceiverOnlineCopyWithImpl<$Res, CheckReceiverOnline>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'online_users') int? onlineUsers,
      @JsonKey(name: 'is_receiver_online') bool? isReceiverOnline});
}

/// @nodoc
class _$CheckReceiverOnlineCopyWithImpl<$Res, $Val extends CheckReceiverOnline>
    implements $CheckReceiverOnlineCopyWith<$Res> {
  _$CheckReceiverOnlineCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? onlineUsers = freezed,
    Object? isReceiverOnline = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      onlineUsers: freezed == onlineUsers
          ? _value.onlineUsers
          : onlineUsers // ignore: cast_nullable_to_non_nullable
              as int?,
      isReceiverOnline: freezed == isReceiverOnline
          ? _value.isReceiverOnline
          : isReceiverOnline // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckReceiverOnlineImplCopyWith<$Res>
    implements $CheckReceiverOnlineCopyWith<$Res> {
  factory _$$CheckReceiverOnlineImplCopyWith(_$CheckReceiverOnlineImpl value,
          $Res Function(_$CheckReceiverOnlineImpl) then) =
      __$$CheckReceiverOnlineImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String? status,
      @JsonKey(name: 'online_users') int? onlineUsers,
      @JsonKey(name: 'is_receiver_online') bool? isReceiverOnline});
}

/// @nodoc
class __$$CheckReceiverOnlineImplCopyWithImpl<$Res>
    extends _$CheckReceiverOnlineCopyWithImpl<$Res, _$CheckReceiverOnlineImpl>
    implements _$$CheckReceiverOnlineImplCopyWith<$Res> {
  __$$CheckReceiverOnlineImplCopyWithImpl(_$CheckReceiverOnlineImpl _value,
      $Res Function(_$CheckReceiverOnlineImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? onlineUsers = freezed,
    Object? isReceiverOnline = freezed,
  }) {
    return _then(_$CheckReceiverOnlineImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      onlineUsers: freezed == onlineUsers
          ? _value.onlineUsers
          : onlineUsers // ignore: cast_nullable_to_non_nullable
              as int?,
      isReceiverOnline: freezed == isReceiverOnline
          ? _value.isReceiverOnline
          : isReceiverOnline // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckReceiverOnlineImpl implements _CheckReceiverOnline {
  const _$CheckReceiverOnlineImpl(
      {@JsonKey(name: 'status') this.status,
      @JsonKey(name: 'online_users') this.onlineUsers,
      @JsonKey(name: 'is_receiver_online') this.isReceiverOnline});

  factory _$CheckReceiverOnlineImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckReceiverOnlineImplFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'online_users')
  final int? onlineUsers;
  @override
  @JsonKey(name: 'is_receiver_online')
  final bool? isReceiverOnline;

  @override
  String toString() {
    return 'CheckReceiverOnline(status: $status, onlineUsers: $onlineUsers, isReceiverOnline: $isReceiverOnline)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckReceiverOnlineImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.onlineUsers, onlineUsers) ||
                other.onlineUsers == onlineUsers) &&
            (identical(other.isReceiverOnline, isReceiverOnline) ||
                other.isReceiverOnline == isReceiverOnline));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, status, onlineUsers, isReceiverOnline);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckReceiverOnlineImplCopyWith<_$CheckReceiverOnlineImpl> get copyWith =>
      __$$CheckReceiverOnlineImplCopyWithImpl<_$CheckReceiverOnlineImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckReceiverOnlineImplToJson(
      this,
    );
  }
}

abstract class _CheckReceiverOnline implements CheckReceiverOnline {
  const factory _CheckReceiverOnline(
          {@JsonKey(name: 'status') final String? status,
          @JsonKey(name: 'online_users') final int? onlineUsers,
          @JsonKey(name: 'is_receiver_online') final bool? isReceiverOnline}) =
      _$CheckReceiverOnlineImpl;

  factory _CheckReceiverOnline.fromJson(Map<String, dynamic> json) =
      _$CheckReceiverOnlineImpl.fromJson;

  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'online_users')
  int? get onlineUsers;
  @override
  @JsonKey(name: 'is_receiver_online')
  bool? get isReceiverOnline;
  @override
  @JsonKey(ignore: true)
  _$$CheckReceiverOnlineImplCopyWith<_$CheckReceiverOnlineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
