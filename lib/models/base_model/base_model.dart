import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_model.freezed.dart';
part 'base_model.g.dart';

@freezed
class BaseModel with _$BaseModel {
  const factory BaseModel({
    @JsonKey(name: 'result') String? result,
    @JsonKey(name: 'message') String? message,
  }) = _BaseModel;

  factory BaseModel.fromJson(Map<String, Object?> json) =>
      _$BaseModelFromJson(json);
}
