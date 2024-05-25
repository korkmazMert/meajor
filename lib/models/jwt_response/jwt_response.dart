import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'jwt_response.g.dart';

@JsonSerializable()
class JWTResponse with EquatableMixin {
  JWTResponse({
    this.access,
    this.refresh,
  });

  factory JWTResponse.fromJson(Map<String, dynamic> json) =>
      _$JWTResponseFromJson(json);
  String? access;
  String? refresh;

  Map<String, dynamic> toJson() => _$JWTResponseToJson(this);

  @override
  List<Object?> get props => [access, refresh];

  JWTResponse copyWith({
    String? access,
    String? refresh,
  }) {
    return JWTResponse(
      access: access ?? this.access,
      refresh: refresh ?? this.refresh,
    );
  }
}
