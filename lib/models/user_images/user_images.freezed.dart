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
  List<UserImage>? get images => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'images') List<UserImage>? images});
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
              as List<UserImage>?,
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
      @JsonKey(name: 'images') List<UserImage>? images});
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
              as List<UserImage>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImagesImpl implements _UserImages {
  const _$UserImagesImpl(
      {@JsonKey(name: 'images_length') this.imagesLength,
      @JsonKey(name: 'images') final List<UserImage>? images})
      : _images = images;

  factory _$UserImagesImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImagesImplFromJson(json);

  @override
  @JsonKey(name: 'images_length')
  final int? imagesLength;
  final List<UserImage>? _images;
  @override
  @JsonKey(name: 'images')
  List<UserImage>? get images {
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
          @JsonKey(name: 'images') final List<UserImage>? images}) =
      _$UserImagesImpl;

  factory _UserImages.fromJson(Map<String, dynamic> json) =
      _$UserImagesImpl.fromJson;

  @override
  @JsonKey(name: 'images_length')
  int? get imagesLength;
  @override
  @JsonKey(name: 'images')
  List<UserImage>? get images;
  @override
  @JsonKey(ignore: true)
  _$$UserImagesImplCopyWith<_$UserImagesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserImage _$UserImageFromJson(Map<String, dynamic> json) {
  return _UserImage.fromJson(json);
}

/// @nodoc
mixin _$UserImage {
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
  @JsonKey(name: 'selected_width')
  double? get selectedWidth => throw _privateConstructorUsedError;
  @JsonKey(name: 'selected_height')
  double? get selectedHeight => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_cost')
  double? get totalCost => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  int? get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'to_where')
  String? get toWhere => throw _privateConstructorUsedError;
  @JsonKey(name: 'from_where')
  String? get fromWhere => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserImageCopyWith<UserImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserImageCopyWith<$Res> {
  factory $UserImageCopyWith(UserImage value, $Res Function(UserImage) then) =
      _$UserImageCopyWithImpl<$Res, UserImage>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'processed_image') String? processedImage,
      @JsonKey(name: 'widths') List<double>? widths,
      @JsonKey(name: 'heights') List<double>? heights,
      @JsonKey(name: 'selected_width') double? selectedWidth,
      @JsonKey(name: 'selected_height') double? selectedHeight,
      @JsonKey(name: 'total_cost') double? totalCost,
      @JsonKey(name: 'user') int? user,
      @JsonKey(name: 'to_where') String? toWhere,
      @JsonKey(name: 'from_where') String? fromWhere});
}

/// @nodoc
class _$UserImageCopyWithImpl<$Res, $Val extends UserImage>
    implements $UserImageCopyWith<$Res> {
  _$UserImageCopyWithImpl(this._value, this._then);

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
    Object? selectedWidth = freezed,
    Object? selectedHeight = freezed,
    Object? totalCost = freezed,
    Object? user = freezed,
    Object? toWhere = freezed,
    Object? fromWhere = freezed,
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
      selectedWidth: freezed == selectedWidth
          ? _value.selectedWidth
          : selectedWidth // ignore: cast_nullable_to_non_nullable
              as double?,
      selectedHeight: freezed == selectedHeight
          ? _value.selectedHeight
          : selectedHeight // ignore: cast_nullable_to_non_nullable
              as double?,
      totalCost: freezed == totalCost
          ? _value.totalCost
          : totalCost // ignore: cast_nullable_to_non_nullable
              as double?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as int?,
      toWhere: freezed == toWhere
          ? _value.toWhere
          : toWhere // ignore: cast_nullable_to_non_nullable
              as String?,
      fromWhere: freezed == fromWhere
          ? _value.fromWhere
          : fromWhere // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImageImplCopyWith<$Res>
    implements $UserImageCopyWith<$Res> {
  factory _$$UserImageImplCopyWith(
          _$UserImageImpl value, $Res Function(_$UserImageImpl) then) =
      __$$UserImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'processed_image') String? processedImage,
      @JsonKey(name: 'widths') List<double>? widths,
      @JsonKey(name: 'heights') List<double>? heights,
      @JsonKey(name: 'selected_width') double? selectedWidth,
      @JsonKey(name: 'selected_height') double? selectedHeight,
      @JsonKey(name: 'total_cost') double? totalCost,
      @JsonKey(name: 'user') int? user,
      @JsonKey(name: 'to_where') String? toWhere,
      @JsonKey(name: 'from_where') String? fromWhere});
}

/// @nodoc
class __$$UserImageImplCopyWithImpl<$Res>
    extends _$UserImageCopyWithImpl<$Res, _$UserImageImpl>
    implements _$$UserImageImplCopyWith<$Res> {
  __$$UserImageImplCopyWithImpl(
      _$UserImageImpl _value, $Res Function(_$UserImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? processedImage = freezed,
    Object? widths = freezed,
    Object? heights = freezed,
    Object? selectedWidth = freezed,
    Object? selectedHeight = freezed,
    Object? totalCost = freezed,
    Object? user = freezed,
    Object? toWhere = freezed,
    Object? fromWhere = freezed,
  }) {
    return _then(_$UserImageImpl(
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
      selectedWidth: freezed == selectedWidth
          ? _value.selectedWidth
          : selectedWidth // ignore: cast_nullable_to_non_nullable
              as double?,
      selectedHeight: freezed == selectedHeight
          ? _value.selectedHeight
          : selectedHeight // ignore: cast_nullable_to_non_nullable
              as double?,
      totalCost: freezed == totalCost
          ? _value.totalCost
          : totalCost // ignore: cast_nullable_to_non_nullable
              as double?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as int?,
      toWhere: freezed == toWhere
          ? _value.toWhere
          : toWhere // ignore: cast_nullable_to_non_nullable
              as String?,
      fromWhere: freezed == fromWhere
          ? _value.fromWhere
          : fromWhere // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImageImpl implements _UserImage {
  const _$UserImageImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'image') this.image,
      @JsonKey(name: 'processed_image') this.processedImage,
      @JsonKey(name: 'widths') final List<double>? widths,
      @JsonKey(name: 'heights') final List<double>? heights,
      @JsonKey(name: 'selected_width') this.selectedWidth,
      @JsonKey(name: 'selected_height') this.selectedHeight,
      @JsonKey(name: 'total_cost') this.totalCost,
      @JsonKey(name: 'user') this.user,
      @JsonKey(name: 'to_where') this.toWhere,
      @JsonKey(name: 'from_where') this.fromWhere})
      : _widths = widths,
        _heights = heights;

  factory _$UserImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImageImplFromJson(json);

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
  @JsonKey(name: 'selected_width')
  final double? selectedWidth;
  @override
  @JsonKey(name: 'selected_height')
  final double? selectedHeight;
  @override
  @JsonKey(name: 'total_cost')
  final double? totalCost;
  @override
  @JsonKey(name: 'user')
  final int? user;
  @override
  @JsonKey(name: 'to_where')
  final String? toWhere;
  @override
  @JsonKey(name: 'from_where')
  final String? fromWhere;

  @override
  String toString() {
    return 'UserImage(id: $id, image: $image, processedImage: $processedImage, widths: $widths, heights: $heights, selectedWidth: $selectedWidth, selectedHeight: $selectedHeight, totalCost: $totalCost, user: $user, toWhere: $toWhere, fromWhere: $fromWhere)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.processedImage, processedImage) ||
                other.processedImage == processedImage) &&
            const DeepCollectionEquality().equals(other._widths, _widths) &&
            const DeepCollectionEquality().equals(other._heights, _heights) &&
            (identical(other.selectedWidth, selectedWidth) ||
                other.selectedWidth == selectedWidth) &&
            (identical(other.selectedHeight, selectedHeight) ||
                other.selectedHeight == selectedHeight) &&
            (identical(other.totalCost, totalCost) ||
                other.totalCost == totalCost) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.toWhere, toWhere) || other.toWhere == toWhere) &&
            (identical(other.fromWhere, fromWhere) ||
                other.fromWhere == fromWhere));
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
      selectedWidth,
      selectedHeight,
      totalCost,
      user,
      toWhere,
      fromWhere);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImageImplCopyWith<_$UserImageImpl> get copyWith =>
      __$$UserImageImplCopyWithImpl<_$UserImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImageImplToJson(
      this,
    );
  }
}

abstract class _UserImage implements UserImage {
  const factory _UserImage(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'image') final String? image,
      @JsonKey(name: 'processed_image') final String? processedImage,
      @JsonKey(name: 'widths') final List<double>? widths,
      @JsonKey(name: 'heights') final List<double>? heights,
      @JsonKey(name: 'selected_width') final double? selectedWidth,
      @JsonKey(name: 'selected_height') final double? selectedHeight,
      @JsonKey(name: 'total_cost') final double? totalCost,
      @JsonKey(name: 'user') final int? user,
      @JsonKey(name: 'to_where') final String? toWhere,
      @JsonKey(name: 'from_where') final String? fromWhere}) = _$UserImageImpl;

  factory _UserImage.fromJson(Map<String, dynamic> json) =
      _$UserImageImpl.fromJson;

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
  @JsonKey(name: 'selected_width')
  double? get selectedWidth;
  @override
  @JsonKey(name: 'selected_height')
  double? get selectedHeight;
  @override
  @JsonKey(name: 'total_cost')
  double? get totalCost;
  @override
  @JsonKey(name: 'user')
  int? get user;
  @override
  @JsonKey(name: 'to_where')
  String? get toWhere;
  @override
  @JsonKey(name: 'from_where')
  String? get fromWhere;
  @override
  @JsonKey(ignore: true)
  _$$UserImageImplCopyWith<_$UserImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
