import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_images.freezed.dart';
part 'user_images.g.dart';

@freezed
class UserImages with _$UserImages {
  const factory UserImages({
    @JsonKey(name: 'images_length') int? imagesLength,
    @JsonKey(name: 'images') List<UserImage>? images,
  }) = _UserImages;
  factory UserImages.fromJson(Map<String, dynamic> json) =>
      _$UserImagesFromJson(json);
}

@freezed
class UserImage with _$UserImage {
  const factory UserImage({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'processed_image') String? processedImage,
    @JsonKey(name: 'widths') List<double>? widths,
    @JsonKey(name: 'heights') List<double>? heights,
    @JsonKey(name: 'selected_width') double? selectedWidth,
    @JsonKey(name: 'selected_height') double? selectedHeight,
    @JsonKey(name: 'total_cost') double? totalCost,
    @JsonKey(name: 'user') int? user,
    @JsonKey(name: 'to_where') String? toWhere,
    @JsonKey(name: 'from_where') String? fromWhere,
  }) = _UserImage;
  factory UserImage.fromJson(Map<String, dynamic> json) =>
      _$UserImageFromJson(json);
}
