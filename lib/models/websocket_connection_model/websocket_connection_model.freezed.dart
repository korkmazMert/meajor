// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'websocket_connection_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WebsocketConnectionModel _$WebsocketConnectionModelFromJson(
    Map<String, dynamic> json) {
  return _WebsocketConnectionModel.fromJson(json);
}

/// @nodoc
mixin _$WebsocketConnectionModel {
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WebsocketConnectionModelCopyWith<WebsocketConnectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebsocketConnectionModelCopyWith<$Res> {
  factory $WebsocketConnectionModelCopyWith(WebsocketConnectionModel value,
          $Res Function(WebsocketConnectionModel) then) =
      _$WebsocketConnectionModelCopyWithImpl<$Res, WebsocketConnectionModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'user_id') int? userId});
}

/// @nodoc
class _$WebsocketConnectionModelCopyWithImpl<$Res,
        $Val extends WebsocketConnectionModel>
    implements $WebsocketConnectionModelCopyWith<$Res> {
  _$WebsocketConnectionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? type = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WebsocketConnectionModelImplCopyWith<$Res>
    implements $WebsocketConnectionModelCopyWith<$Res> {
  factory _$$WebsocketConnectionModelImplCopyWith(
          _$WebsocketConnectionModelImpl value,
          $Res Function(_$WebsocketConnectionModelImpl) then) =
      __$$WebsocketConnectionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'message') String? message,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'user_id') int? userId});
}

/// @nodoc
class __$$WebsocketConnectionModelImplCopyWithImpl<$Res>
    extends _$WebsocketConnectionModelCopyWithImpl<$Res,
        _$WebsocketConnectionModelImpl>
    implements _$$WebsocketConnectionModelImplCopyWith<$Res> {
  __$$WebsocketConnectionModelImplCopyWithImpl(
      _$WebsocketConnectionModelImpl _value,
      $Res Function(_$WebsocketConnectionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? type = freezed,
    Object? userId = freezed,
  }) {
    return _then(_$WebsocketConnectionModelImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WebsocketConnectionModelImpl implements _WebsocketConnectionModel {
  const _$WebsocketConnectionModelImpl(
      {@JsonKey(name: 'message') this.message,
      @JsonKey(name: 'type') this.type,
      @JsonKey(name: 'user_id') this.userId});

  factory _$WebsocketConnectionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebsocketConnectionModelImplFromJson(json);

  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'type')
  final String? type;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;

  @override
  String toString() {
    return 'WebsocketConnectionModel(message: $message, type: $type, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebsocketConnectionModelImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, type, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WebsocketConnectionModelImplCopyWith<_$WebsocketConnectionModelImpl>
      get copyWith => __$$WebsocketConnectionModelImplCopyWithImpl<
          _$WebsocketConnectionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebsocketConnectionModelImplToJson(
      this,
    );
  }
}

abstract class _WebsocketConnectionModel implements WebsocketConnectionModel {
  const factory _WebsocketConnectionModel(
          {@JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'type') final String? type,
          @JsonKey(name: 'user_id') final int? userId}) =
      _$WebsocketConnectionModelImpl;

  factory _WebsocketConnectionModel.fromJson(Map<String, dynamic> json) =
      _$WebsocketConnectionModelImpl.fromJson;

  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'type')
  String? get type;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  @JsonKey(ignore: true)
  _$$WebsocketConnectionModelImplCopyWith<_$WebsocketConnectionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
