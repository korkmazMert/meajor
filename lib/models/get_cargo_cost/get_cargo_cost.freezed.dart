// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_cargo_cost.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetCargoCost _$GetCargoCostFromJson(Map<String, dynamic> json) {
  return _GetCargoCost.fromJson(json);
}

/// @nodoc
mixin _$GetCargoCost {
  @JsonKey(name: 'result')
  String? get result => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_cost')
  double? get totalCost => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_model')
  UserImage? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetCargoCostCopyWith<GetCargoCost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCargoCostCopyWith<$Res> {
  factory $GetCargoCostCopyWith(
          GetCargoCost value, $Res Function(GetCargoCost) then) =
      _$GetCargoCostCopyWithImpl<$Res, GetCargoCost>;
  @useResult
  $Res call(
      {@JsonKey(name: 'result') String? result,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'total_cost') double? totalCost,
      @JsonKey(name: 'image_model') UserImage? image});

  $UserImageCopyWith<$Res>? get image;
}

/// @nodoc
class _$GetCargoCostCopyWithImpl<$Res, $Val extends GetCargoCost>
    implements $GetCargoCostCopyWith<$Res> {
  _$GetCargoCostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
    Object? message = freezed,
    Object? totalCost = freezed,
    Object? image = freezed,
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
      totalCost: freezed == totalCost
          ? _value.totalCost
          : totalCost // ignore: cast_nullable_to_non_nullable
              as double?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as UserImage?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserImageCopyWith<$Res>? get image {
    if (_value.image == null) {
      return null;
    }

    return $UserImageCopyWith<$Res>(_value.image!, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetCargoCostImplCopyWith<$Res>
    implements $GetCargoCostCopyWith<$Res> {
  factory _$$GetCargoCostImplCopyWith(
          _$GetCargoCostImpl value, $Res Function(_$GetCargoCostImpl) then) =
      __$$GetCargoCostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'result') String? result,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'total_cost') double? totalCost,
      @JsonKey(name: 'image_model') UserImage? image});

  @override
  $UserImageCopyWith<$Res>? get image;
}

/// @nodoc
class __$$GetCargoCostImplCopyWithImpl<$Res>
    extends _$GetCargoCostCopyWithImpl<$Res, _$GetCargoCostImpl>
    implements _$$GetCargoCostImplCopyWith<$Res> {
  __$$GetCargoCostImplCopyWithImpl(
      _$GetCargoCostImpl _value, $Res Function(_$GetCargoCostImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
    Object? message = freezed,
    Object? totalCost = freezed,
    Object? image = freezed,
  }) {
    return _then(_$GetCargoCostImpl(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      totalCost: freezed == totalCost
          ? _value.totalCost
          : totalCost // ignore: cast_nullable_to_non_nullable
              as double?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as UserImage?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetCargoCostImpl implements _GetCargoCost {
  const _$GetCargoCostImpl(
      {@JsonKey(name: 'result') this.result,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'total_cost') this.totalCost,
      @JsonKey(name: 'image_model') this.image});

  factory _$GetCargoCostImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetCargoCostImplFromJson(json);

  @override
  @JsonKey(name: 'result')
  final String? result;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'total_cost')
  final double? totalCost;
  @override
  @JsonKey(name: 'image_model')
  final UserImage? image;

  @override
  String toString() {
    return 'GetCargoCost(result: $result, message: $message, totalCost: $totalCost, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCargoCostImpl &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.totalCost, totalCost) ||
                other.totalCost == totalCost) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, result, message, totalCost, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCargoCostImplCopyWith<_$GetCargoCostImpl> get copyWith =>
      __$$GetCargoCostImplCopyWithImpl<_$GetCargoCostImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetCargoCostImplToJson(
      this,
    );
  }
}

abstract class _GetCargoCost implements GetCargoCost {
  const factory _GetCargoCost(
          {@JsonKey(name: 'result') final String? result,
          @JsonKey(name: 'message') final String? message,
          @JsonKey(name: 'total_cost') final double? totalCost,
          @JsonKey(name: 'image_model') final UserImage? image}) =
      _$GetCargoCostImpl;

  factory _GetCargoCost.fromJson(Map<String, dynamic> json) =
      _$GetCargoCostImpl.fromJson;

  @override
  @JsonKey(name: 'result')
  String? get result;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'total_cost')
  double? get totalCost;
  @override
  @JsonKey(name: 'image_model')
  UserImage? get image;
  @override
  @JsonKey(ignore: true)
  _$$GetCargoCostImplCopyWith<_$GetCargoCostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
