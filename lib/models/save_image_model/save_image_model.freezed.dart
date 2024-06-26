// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_image_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SaveImageModel _$SaveImageModelFromJson(Map<String, dynamic> json) {
  return _SaveImageModel.fromJson(json);
}

/// @nodoc
mixin _$SaveImageModel {
  @JsonKey(name: 'result')
  String? get result => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  UserImage? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaveImageModelCopyWith<SaveImageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveImageModelCopyWith<$Res> {
  factory $SaveImageModelCopyWith(
          SaveImageModel value, $Res Function(SaveImageModel) then) =
      _$SaveImageModelCopyWithImpl<$Res, SaveImageModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'result') String? result,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'image') UserImage? image});

  $UserImageCopyWith<$Res>? get image;
}

/// @nodoc
class _$SaveImageModelCopyWithImpl<$Res, $Val extends SaveImageModel>
    implements $SaveImageModelCopyWith<$Res> {
  _$SaveImageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
    Object? message = freezed,
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
abstract class _$$SaveImageModelImplCopyWith<$Res>
    implements $SaveImageModelCopyWith<$Res> {
  factory _$$SaveImageModelImplCopyWith(_$SaveImageModelImpl value,
          $Res Function(_$SaveImageModelImpl) then) =
      __$$SaveImageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'result') String? result,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'image') UserImage? image});

  @override
  $UserImageCopyWith<$Res>? get image;
}

/// @nodoc
class __$$SaveImageModelImplCopyWithImpl<$Res>
    extends _$SaveImageModelCopyWithImpl<$Res, _$SaveImageModelImpl>
    implements _$$SaveImageModelImplCopyWith<$Res> {
  __$$SaveImageModelImplCopyWithImpl(
      _$SaveImageModelImpl _value, $Res Function(_$SaveImageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
    Object? message = freezed,
    Object? image = freezed,
  }) {
    return _then(_$SaveImageModelImpl(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as UserImage?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SaveImageModelImpl implements _SaveImageModel {
  const _$SaveImageModelImpl(
      {@JsonKey(name: 'result') this.result,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'image') this.image});

  factory _$SaveImageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SaveImageModelImplFromJson(json);

  @override
  @JsonKey(name: 'result')
  final String? result;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'image')
  final UserImage? image;

  @override
  String toString() {
    return 'SaveImageModel(result: $result, message: $message, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveImageModelImpl &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, result, message, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveImageModelImplCopyWith<_$SaveImageModelImpl> get copyWith =>
      __$$SaveImageModelImplCopyWithImpl<_$SaveImageModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SaveImageModelImplToJson(
      this,
    );
  }
}

abstract class _SaveImageModel implements SaveImageModel {
  const factory _SaveImageModel(
      {@JsonKey(name: 'result') final String? result,
      @JsonKey(name: 'message') final String? message,
      @JsonKey(name: 'image') final UserImage? image}) = _$SaveImageModelImpl;

  factory _SaveImageModel.fromJson(Map<String, dynamic> json) =
      _$SaveImageModelImpl.fromJson;

  @override
  @JsonKey(name: 'result')
  String? get result;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'image')
  UserImage? get image;
  @override
  @JsonKey(ignore: true)
  _$$SaveImageModelImplCopyWith<_$SaveImageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
