import 'package:freezed_annotation/freezed_annotation.dart';
part 'signin_response.freezed.dart';
part 'signin_response.g.dart';

@freezed
class SigninResponse with _$SigninResponse {
  const factory SigninResponse({
    @JsonKey(name: 'result') String? result,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'data') Data? data,
  }) = _SigninResponse;
  factory SigninResponse.fromJson(Map<String, Object?> json) =>
      _$SigninResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: 'fcm_response') FcmResponse? fcmResponse,
  }) = _Data;
  factory Data.fromJson(Map<String, Object?> json) => _$DataFromJson(json);
}

@freezed
class FcmResponse with _$FcmResponse {
  const factory FcmResponse({
    @JsonKey(name: 'result') String? result,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'device') Device? device,
  }) = _FcmResponse;

  factory FcmResponse.fromJson(Map<String, Object?> json) =>
      _$FcmResponseFromJson(json);
}

@freezed
class Device with _$Device {
  const factory Device({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'fcm_token') String? fcmToken,
    @JsonKey(name: 'user') int? user,
  }) = _Device;
  factory Device.fromJson(Map<String, Object?> json) => _$DeviceFromJson(json);
}
