// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_control_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetControlId _$GetControlIdFromJson(Map<String, dynamic> json) {
  return _GetControlId.fromJson(json);
}

/// @nodoc
mixin _$GetControlId {
  @JsonKey(name: 'result')
  String? get result => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'my_activation_user')
  int? get myActivationUser => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_superuser')
  bool? get isSuperuser => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetControlIdCopyWith<GetControlId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetControlIdCopyWith<$Res> {
  factory $GetControlIdCopyWith(
          GetControlId value, $Res Function(GetControlId) then) =
      _$GetControlIdCopyWithImpl<$Res, GetControlId>;
  @useResult
  $Res call(
      {@JsonKey(name: 'result') String? result,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'my_activation_user') int? myActivationUser,
      @JsonKey(name: 'is_superuser') bool? isSuperuser});
}

/// @nodoc
class _$GetControlIdCopyWithImpl<$Res, $Val extends GetControlId>
    implements $GetControlIdCopyWith<$Res> {
  _$GetControlIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
    Object? message = freezed,
    Object? myActivationUser = freezed,
    Object? isSuperuser = freezed,
  }) {
    return _then(_value.copyWith(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      myActivationUser: freezed == myActivationUser
          ? _value.myActivationUser
          : myActivationUser // ignore: cast_nullable_to_non_nullable
              as int?,
      isSuperuser: freezed == isSuperuser
          ? _value.isSuperuser
          : isSuperuser // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetControlIdImplCopyWith<$Res>
    implements $GetControlIdCopyWith<$Res> {
  factory _$$GetControlIdImplCopyWith(
          _$GetControlIdImpl value, $Res Function(_$GetControlIdImpl) then) =
      __$$GetControlIdImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'result') String? result,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'my_activation_user') int? myActivationUser,
      @JsonKey(name: 'is_superuser') bool? isSuperuser});
}

/// @nodoc
class __$$GetControlIdImplCopyWithImpl<$Res>
    extends _$GetControlIdCopyWithImpl<$Res, _$GetControlIdImpl>
    implements _$$GetControlIdImplCopyWith<$Res> {
  __$$GetControlIdImplCopyWithImpl(
      _$GetControlIdImpl _value, $Res Function(_$GetControlIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
    Object? message = freezed,
    Object? myActivationUser = freezed,
    Object? isSuperuser = freezed,
  }) {
    return _then(_$GetControlIdImpl(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      myActivationUser: freezed == myActivationUser
          ? _value.myActivationUser
          : myActivationUser // ignore: cast_nullable_to_non_nullable
              as int?,
      isSuperuser: freezed == isSuperuser
          ? _value.isSuperuser
          : isSuperuser // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetControlIdImpl implements _GetControlId {
  const _$GetControlIdImpl(
      {@JsonKey(name: 'result') this.result,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'my_activation_user') this.myActivationUser,
      @JsonKey(name: 'is_superuser') this.isSuperuser});

  factory _$GetControlIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetControlIdImplFromJson(json);

  @override
  @JsonKey(name: 'result')
  final String? result;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'my_activation_user')
  final int? myActivationUser;
  @override
  @JsonKey(name: 'is_superuser')
  final bool? isSuperuser;

  @override
  String toString() {
    return 'GetControlId(result: $result, message: $message, myActivationUser: $myActivationUser, isSuperuser: $isSuperuser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetControlIdImpl &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.myActivationUser, myActivationUser) ||
                other.myActivationUser == myActivationUser) &&
            (identical(other.isSuperuser, isSuperuser) ||
                other.isSuperuser == isSuperuser));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, result, message, myActivationUser, isSuperuser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetControlIdImplCopyWith<_$GetControlIdImpl> get copyWith =>
      __$$GetControlIdImplCopyWithImpl<_$GetControlIdImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetControlIdImplToJson(
      this,
    );
  }
}

abstract class _GetControlId implements GetControlId {
  const factory _GetControlId(
          {@JsonKey(name: 'result') final String? result,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'my_activation_user') final int? myActivationUser,
          @JsonKey(name: 'is_superuser') final bool? isSuperuser}) =
      _$GetControlIdImpl;

  factory _GetControlId.fromJson(Map<String, dynamic> json) =
      _$GetControlIdImpl.fromJson;

  @override
  @JsonKey(name: 'result')
  String? get result;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'my_activation_user')
  int? get myActivationUser;
  @override
  @JsonKey(name: 'is_superuser')
  bool? get isSuperuser;
  @override
  @JsonKey(ignore: true)
  _$$GetControlIdImplCopyWith<_$GetControlIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
