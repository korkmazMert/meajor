import 'package:alisatiyor/models/save_image_model/save_image_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_cargo_cost.freezed.dart';
part 'get_cargo_cost.g.dart';

@freezed
class GetCargoCost with _$GetCargoCost {
  const factory GetCargoCost({
    @JsonKey(name: 'result') String? result,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'total_cost') double? totalCost,
    @JsonKey(name: 'image_model') Image? image,
  }) = _GetCargoCost;
  factory GetCargoCost.fromJson(Map<String, dynamic> json) =>
      _$GetCargoCostFromJson(json);
}
