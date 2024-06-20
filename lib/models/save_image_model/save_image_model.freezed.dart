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
  Image? get image => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'image') Image? image});

  $ImageCopyWith<$Res>? get image;
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
              as Image?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageCopyWith<$Res>? get image {
    if (_value.image == null) {
      return null;
    }

    return $ImageCopyWith<$Res>(_value.image!, (value) {
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
      @JsonKey(name: 'image') Image? image});

  @override
  $ImageCopyWith<$Res>? get image;
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
              as Image?,
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
  final Image? image;

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
      @JsonKey(name: 'image') final Image? image}) = _$SaveImageModelImpl;

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
  Image? get image;
  @override
  @JsonKey(ignore: true)
  _$$SaveImageModelImplCopyWith<_$SaveImageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Image _$ImageFromJson(Map<String, dynamic> json) {
  return _Image.fromJson(json);
}

/// @nodoc
mixin _$Image {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'processed_image')
  String? get processedImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'widths')
  List<double>? get widths => throw _privateConstructorUsedError;
  @JsonKey(name: 'heights')
  List<double>? get heights => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  int? get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_cost')
  double? get totalCost => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageCopyWith<Image> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageCopyWith<$Res> {
  factory $ImageCopyWith(Image value, $Res Function(Image) then) =
      _$ImageCopyWithImpl<$Res, Image>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'processed_image') String? processedImage,
      @JsonKey(name: 'widths') List<double>? widths,
      @JsonKey(name: 'heights') List<double>? heights,
      @JsonKey(name: 'user') int? user,
      @JsonKey(name: 'total_cost') double? totalCost});
}

/// @nodoc
class _$ImageCopyWithImpl<$Res, $Val extends Image>
    implements $ImageCopyWith<$Res> {
  _$ImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? processedImage = freezed,
    Object? widths = freezed,
    Object? heights = freezed,
    Object? user = freezed,
    Object? totalCost = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      processedImage: freezed == processedImage
          ? _value.processedImage
          : processedImage // ignore: cast_nullable_to_non_nullable
              as String?,
      widths: freezed == widths
          ? _value.widths
          : widths // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      heights: freezed == heights
          ? _value.heights
          : heights // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as int?,
      totalCost: freezed == totalCost
          ? _value.totalCost
          : totalCost // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageImplCopyWith<$Res> implements $ImageCopyWith<$Res> {
  factory _$$ImageImplCopyWith(
          _$ImageImpl value, $Res Function(_$ImageImpl) then) =
      __$$ImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'processed_image') String? processedImage,
      @JsonKey(name: 'widths') List<double>? widths,
      @JsonKey(name: 'heights') List<double>? heights,
      @JsonKey(name: 'user') int? user,
      @JsonKey(name: 'total_cost') double? totalCost});
}

/// @nodoc
class __$$ImageImplCopyWithImpl<$Res>
    extends _$ImageCopyWithImpl<$Res, _$ImageImpl>
    implements _$$ImageImplCopyWith<$Res> {
  __$$ImageImplCopyWithImpl(
      _$ImageImpl _value, $Res Function(_$ImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? processedImage = freezed,
    Object? widths = freezed,
    Object? heights = freezed,
    Object? user = freezed,
    Object? totalCost = freezed,
  }) {
    return _then(_$ImageImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      processedImage: freezed == processedImage
          ? _value.processedImage
          : processedImage // ignore: cast_nullable_to_non_nullable
              as String?,
      widths: freezed == widths
          ? _value._widths
          : widths // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      heights: freezed == heights
          ? _value._heights
          : heights // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as int?,
      totalCost: freezed == totalCost
          ? _value.totalCost
          : totalCost // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageImpl implements _Image {
  const _$ImageImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'image') this.image,
      @JsonKey(name: 'processed_image') this.processedImage,
      @JsonKey(name: 'widths') final List<double>? widths,
      @JsonKey(name: 'heights') final List<double>? heights,
      @JsonKey(name: 'user') this.user,
      @JsonKey(name: 'total_cost') this.totalCost})
      : _widths = widths,
        _heights = heights;

  factory _$ImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'image')
  final String? image;
  @override
  @JsonKey(name: 'processed_image')
  final String? processedImage;
  final List<double>? _widths;
  @override
  @JsonKey(name: 'widths')
  List<double>? get widths {
    final value = _widths;
    if (value == null) return null;
    if (_widths is EqualUnmodifiableListView) return _widths;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<double>? _heights;
  @override
  @JsonKey(name: 'heights')
  List<double>? get heights {
    final value = _heights;
    if (value == null) return null;
    if (_heights is EqualUnmodifiableListView) return _heights;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'user')
  final int? user;
  @override
  @JsonKey(name: 'total_cost')
  final double? totalCost;

  @override
  String toString() {
    return 'Image(id: $id, image: $image, processedImage: $processedImage, widths: $widths, heights: $heights, user: $user, totalCost: $totalCost)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.processedImage, processedImage) ||
                other.processedImage == processedImage) &&
            const DeepCollectionEquality().equals(other._widths, _widths) &&
            const DeepCollectionEquality().equals(other._heights, _heights) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.totalCost, totalCost) ||
                other.totalCost == totalCost));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      image,
      processedImage,
      const DeepCollectionEquality().hash(_widths),
      const DeepCollectionEquality().hash(_heights),
      user,
      totalCost);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageImplCopyWith<_$ImageImpl> get copyWith =>
      __$$ImageImplCopyWithImpl<_$ImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageImplToJson(
      this,
    );
  }
}

abstract class _Image implements Image {
  const factory _Image(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'image') final String? image,
      @JsonKey(name: 'processed_image') final String? processedImage,
      @JsonKey(name: 'widths') final List<double>? widths,
      @JsonKey(name: 'heights') final List<double>? heights,
      @JsonKey(name: 'user') final int? user,
      @JsonKey(name: 'total_cost') final double? totalCost}) = _$ImageImpl;

  factory _Image.fromJson(Map<String, dynamic> json) = _$ImageImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'image')
  String? get image;
  @override
  @JsonKey(name: 'processed_image')
  String? get processedImage;
  @override
  @JsonKey(name: 'widths')
  List<double>? get widths;
  @override
  @JsonKey(name: 'heights')
  List<double>? get heights;
  @override
  @JsonKey(name: 'user')
  int? get user;
  @override
  @JsonKey(name: 'total_cost')
  double? get totalCost;
  @override
  @JsonKey(ignore: true)
  _$$ImageImplCopyWith<_$ImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
