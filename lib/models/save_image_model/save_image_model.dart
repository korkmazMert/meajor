import 'package:freezed_annotation/freezed_annotation.dart';
part 'save_image_model.freezed.dart';
part 'save_image_model.g.dart';

@freezed
class SaveImageModel with _$SaveImageModel {
  const factory SaveImageModel({
    @JsonKey(name: 'result') String? result,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'image') Image? image,
  }) = _SaveImageModel;
  factory SaveImageModel.fromJson(Map<String, dynamic> json) =>
      _$SaveImageModelFromJson(json);
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
    @JsonKey(name: 'total_cost') double? totalCost,
  }) = _Image;
  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}
