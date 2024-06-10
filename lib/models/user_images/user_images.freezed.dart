// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_images.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserImages _$UserImagesFromJson(Map<String, dynamic> json) {
  return _UserImages.fromJson(json);
}

/// @nodoc
mixin _$UserImages {
  @JsonKey(name: 'images_length')
  int? get imagesLength => throw _privateConstructorUsedError;
  @JsonKey(name: 'images')
  List<Image>? get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserImagesCopyWith<UserImages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserImagesCopyWith<$Res> {
  factory $UserImagesCopyWith(
          UserImages value, $Res Function(UserImages) then) =
      _$UserImagesCopyWithImpl<$Res, UserImages>;
  @useResult
  $Res call(
      {@JsonKey(name: 'images_length') int? imagesLength,
      @JsonKey(name: 'images') List<Image>? images});
}

/// @nodoc
class _$UserImagesCopyWithImpl<$Res, $Val extends UserImages>
    implements $UserImagesCopyWith<$Res> {
  _$UserImagesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagesLength = freezed,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      imagesLength: freezed == imagesLength
          ? _value.imagesLength
          : imagesLength // ignore: cast_nullable_to_non_nullable
              as int?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImagesImplCopyWith<$Res>
    implements $UserImagesCopyWith<$Res> {
  factory _$$UserImagesImplCopyWith(
          _$UserImagesImpl value, $Res Function(_$UserImagesImpl) then) =
      __$$UserImagesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'images_length') int? imagesLength,
      @JsonKey(name: 'images') List<Image>? images});
}

/// @nodoc
class __$$UserImagesImplCopyWithImpl<$Res>
    extends _$UserImagesCopyWithImpl<$Res, _$UserImagesImpl>
    implements _$$UserImagesImplCopyWith<$Res> {
  __$$UserImagesImplCopyWithImpl(
      _$UserImagesImpl _value, $Res Function(_$UserImagesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagesLength = freezed,
    Object? images = freezed,
  }) {
    return _then(_$UserImagesImpl(
      imagesLength: freezed == imagesLength
          ? _value.imagesLength
          : imagesLength // ignore: cast_nullable_to_non_nullable
              as int?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImagesImpl implements _UserImages {
  const _$UserImagesImpl(
      {@JsonKey(name: 'images_length') this.imagesLength,
      @JsonKey(name: 'images') final List<Image>? images})
      : _images = images;

  factory _$UserImagesImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImagesImplFromJson(json);

  @override
  @JsonKey(name: 'images_length')
  final int? imagesLength;
  final List<Image>? _images;
  @override
  @JsonKey(name: 'images')
  List<Image>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UserImages(imagesLength: $imagesLength, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImagesImpl &&
            (identical(other.imagesLength, imagesLength) ||
                other.imagesLength == imagesLength) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, imagesLength, const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImagesImplCopyWith<_$UserImagesImpl> get copyWith =>
      __$$UserImagesImplCopyWithImpl<_$UserImagesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImagesImplToJson(
      this,
    );
  }
}

abstract class _UserImages implements UserImages {
  const factory _UserImages(
      {@JsonKey(name: 'images_length') final int? imagesLength,
      @JsonKey(name: 'images') final List<Image>? images}) = _$UserImagesImpl;

  factory _UserImages.fromJson(Map<String, dynamic> json) =
      _$UserImagesImpl.fromJson;

  @override
  @JsonKey(name: 'images_length')
  int? get imagesLength;
  @override
  @JsonKey(name: 'images')
  List<Image>? get images;
  @override
  @JsonKey(ignore: true)
  _$$UserImagesImplCopyWith<_$UserImagesImpl> get copyWith =>
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
      @JsonKey(name: 'user') int? user});
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
      @JsonKey(name: 'user') int? user});
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
      @JsonKey(name: 'user') this.user})
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
  String toString() {
    return 'Image(id: $id, image: $image, processedImage: $processedImage, widths: $widths, heights: $heights, user: $user)';
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
            (identical(other.user, user) || other.user == user));
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
      user);

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
      @JsonKey(name: 'user') final int? user}) = _$ImageImpl;

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
  @JsonKey(ignore: true)
  _$$ImageImplCopyWith<_$ImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
