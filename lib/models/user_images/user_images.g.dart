// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_images.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImagesImpl _$$UserImagesImplFromJson(Map<String, dynamic> json) =>
    _$UserImagesImpl(
      imagesLength: (json['images_length'] as num?)?.toInt(),
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => Image.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UserImagesImplToJson(_$UserImagesImpl instance) =>
    <String, dynamic>{
      'images_length': instance.imagesLength,
      'images': instance.images,
    };

_$ImageImpl _$$ImageImplFromJson(Map<String, dynamic> json) => _$ImageImpl(
      id: (json['id'] as num?)?.toInt(),
      image: json['image'] as String?,
      processedImage: json['processed_image'] as String?,
      widths: (json['widths'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      heights: (json['heights'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      user: (json['user'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ImageImplToJson(_$ImageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'processed_image': instance.processedImage,
      'widths': instance.widths,
      'heights': instance.heights,
      'user': instance.user,
    };
