import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_images.freezed.dart';
part 'user_images.g.dart';

@freezed
class UserImages with _$UserImages {
  const factory UserImages({
    @JsonKey(name: 'images_length') int? imagesLength,
    @JsonKey(name: 'images') List<Image>? images,
  }) = _UserImages;
  factory UserImages.fromJson(Map<String, dynamic> json) =>
      _$UserImagesFromJson(json);
}

@freezed
class Image with _$Image {
  const factory Image({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'processed_image') String? processedImage,
    @JsonKey(name: 'widths') List<double>? widths,
    @JsonKey(name: 'heights') List<double>? heights,
    @JsonKey(name: 'user') int? user,
  }) = _Image;
  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}
