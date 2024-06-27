import 'package:freezed_annotation/freezed_annotation.dart';
part 'websocket_connection_model.freezed.dart';
part 'websocket_connection_model.g.dart';

@freezed
class WebsocketConnectionModel with _$WebsocketConnectionModel {
  const factory WebsocketConnectionModel({
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'type') String? type,
    @JsonKey(name: 'user_id') int? userId,
  }) = _WebsocketConnectionModel;
  factory WebsocketConnectionModel.fromJson(Map<String, dynamic> json) =>
      _$WebsocketConnectionModelFromJson(json);
}
