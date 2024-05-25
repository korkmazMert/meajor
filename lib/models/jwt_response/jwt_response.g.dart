// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jwt_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JWTResponse _$JWTResponseFromJson(Map<String, dynamic> json) => JWTResponse(
      access: json['access'] as String?,
      refresh: json['refresh'] as String?,
    );

Map<String, dynamic> _$JWTResponseToJson(JWTResponse instance) =>
    <String, dynamic>{
      'access': instance.access,
      'refresh': instance.refresh,
    };
