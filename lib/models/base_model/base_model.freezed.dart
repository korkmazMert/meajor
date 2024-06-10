// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseModel _$BaseModelFromJson(Map<String, dynamic> json) {
  return _BaseModel.fromJson(json);
}

/// @nodoc
mixin _$BaseModel {
  @JsonKey(name: 'result')
  String? get result => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BaseModelCopyWith<BaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseModelCopyWith<$Res> {
  factory $BaseModelCopyWith(BaseModel value, $Res Function(BaseModel) then) =
      _$BaseModelCopyWithImpl<$Res, BaseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'result') String? result,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class _$BaseModelCopyWithImpl<$Res, $Val extends BaseModel>
    implements $BaseModelCopyWith<$Res> {
  _$BaseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
    Object? message = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseModelImplCopyWith<$Res>
    implements $BaseModelCopyWith<$Res> {
  factory _$$BaseModelImplCopyWith(
          _$BaseModelImpl value, $Res Function(_$BaseModelImpl) then) =
      __$$BaseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'result') String? result,
      @JsonKey(name: 'message') String? message});
}

/// @nodoc
class __$$BaseModelImplCopyWithImpl<$Res>
    extends _$BaseModelCopyWithImpl<$Res, _$BaseModelImpl>
    implements _$$BaseModelImplCopyWith<$Res> {
  __$$BaseModelImplCopyWithImpl(
      _$BaseModelImpl _value, $Res Function(_$BaseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
    Object? message = freezed,
  }) {
    return _then(_$BaseModelImpl(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BaseModelImpl with DiagnosticableTreeMixin implements _BaseModel {
  const _$BaseModelImpl(
      {@JsonKey(name: 'result') this.result,
      @JsonKey(name: 'message') this.message});

  factory _$BaseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BaseModelImplFromJson(json);

  @override
  @JsonKey(name: 'result')
  final String? result;
  @override
  @JsonKey(name: 'message')
  final String? message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BaseModel(result: $result, message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BaseModel'))
      ..add(DiagnosticsProperty('result', result))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseModelImpl &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, result, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseModelImplCopyWith<_$BaseModelImpl> get copyWith =>
      __$$BaseModelImplCopyWithImpl<_$BaseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BaseModelImplToJson(
      this,
    );
  }
}

abstract class _BaseModel implements BaseModel {
  const factory _BaseModel(
      {@JsonKey(name: 'result') final String? result,
      @JsonKey(name: 'message') final String? message}) = _$BaseModelImpl;

  factory _BaseModel.fromJson(Map<String, dynamic> json) =
      _$BaseModelImpl.fromJson;

  @override
  @JsonKey(name: 'result')
  String? get result;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$BaseModelImplCopyWith<_$BaseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
