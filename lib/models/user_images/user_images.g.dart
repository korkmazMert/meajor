// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_images.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImagesImpl _$$UserImagesImplFromJson(Map<String, dynamic> json) =>
    _$UserImagesImpl(
      imagesLength: (json['images_length'] as num?)?.toInt(),
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => UserImage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UserImagesImplToJson(_$UserImagesImpl instance) =>
    <String, dynamic>{
      'images_length': instance.imagesLength,
      'images': instance.images,
    };

_$UserImageImpl _$$UserImageImplFromJson(Map<String, dynamic> json) =>
    _$UserImageImpl(
      id: (json['id'] as num?)?.toInt(),
      image: json['image'] as String?,
      processedImage: json['processed_image'] as String?,
      widths: (json['widths'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      heights: (json['heights'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      selectedWidth: (json['selected_width'] as num?)?.toDouble(),
      selectedHeight: (json['selected_height'] as num?)?.toDouble(),
      totalCost: (json['total_cost'] as num?)?.toDouble(),
      user: (json['user'] as num?)?.toInt(),
      toWhere: json['to_where'] as String?,
      fromWhere: json['from_where'] as String?,
    );

Map<String, dynamic> _$$UserImageImplToJson(_$UserImageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'processed_image': instance.processedImage,
      'widths': instance.widths,
      'heights': instance.heights,
      'selected_width': instance.selectedWidth,
      'selected_height': instance.selectedHeight,
      'total_cost': instance.totalCost,
      'user': instance.user,
      'to_where': instance.toWhere,
      'from_where': instance.fromWhere,
    };
