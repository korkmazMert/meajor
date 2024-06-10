// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signin_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SigninResponse _$SigninResponseFromJson(Map<String, dynamic> json) {
  return _SigninResponse.fromJson(json);
}

/// @nodoc
mixin _$SigninResponse {
  @JsonKey(name: 'result')
  String? get result => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SigninResponseCopyWith<SigninResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SigninResponseCopyWith<$Res> {
  factory $SigninResponseCopyWith(
          SigninResponse value, $Res Function(SigninResponse) then) =
      _$SigninResponseCopyWithImpl<$Res, SigninResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'result') String? result,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$SigninResponseCopyWithImpl<$Res, $Val extends SigninResponse>
    implements $SigninResponseCopyWith<$Res> {
  _$SigninResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SigninResponseImplCopyWith<$Res>
    implements $SigninResponseCopyWith<$Res> {
  factory _$$SigninResponseImplCopyWith(_$SigninResponseImpl value,
          $Res Function(_$SigninResponseImpl) then) =
      __$$SigninResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'result') String? result,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'data') Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SigninResponseImplCopyWithImpl<$Res>
    extends _$SigninResponseCopyWithImpl<$Res, _$SigninResponseImpl>
    implements _$$SigninResponseImplCopyWith<$Res> {
  __$$SigninResponseImplCopyWithImpl(
      _$SigninResponseImpl _value, $Res Function(_$SigninResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$SigninResponseImpl(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SigninResponseImpl implements _SigninResponse {
  const _$SigninResponseImpl(
      {@JsonKey(name: 'result') this.result,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'data') this.data});

  factory _$SigninResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SigninResponseImplFromJson(json);

  @override
  @JsonKey(name: 'result')
  final String? result;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'data')
  final Data? data;

  @override
  String toString() {
    return 'SigninResponse(result: $result, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SigninResponseImpl &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, result, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SigninResponseImplCopyWith<_$SigninResponseImpl> get copyWith =>
      __$$SigninResponseImplCopyWithImpl<_$SigninResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SigninResponseImplToJson(
      this,
    );
  }
}

abstract class _SigninResponse implements SigninResponse {
  const factory _SigninResponse(
      {@JsonKey(name: 'result') final String? result,
      @JsonKey(name: 'message') final String? message,
      @JsonKey(name: 'data') final Data? data}) = _$SigninResponseImpl;

  factory _SigninResponse.fromJson(Map<String, dynamic> json) =
      _$SigninResponseImpl.fromJson;

  @override
  @JsonKey(name: 'result')
  String? get result;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'data')
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$$SigninResponseImplCopyWith<_$SigninResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: 'fcm_response')
  FcmResponse? get fcmResponse => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call({@JsonKey(name: 'fcm_response') FcmResponse? fcmResponse});

  $FcmResponseCopyWith<$Res>? get fcmResponse;
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fcmResponse = freezed,
  }) {
    return _then(_value.copyWith(
      fcmResponse: freezed == fcmResponse
          ? _value.fcmResponse
          : fcmResponse // ignore: cast_nullable_to_non_nullable
              as FcmResponse?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FcmResponseCopyWith<$Res>? get fcmResponse {
    if (_value.fcmResponse == null) {
      return null;
    }

    return $FcmResponseCopyWith<$Res>(_value.fcmResponse!, (value) {
      return _then(_value.copyWith(fcmResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'fcm_response') FcmResponse? fcmResponse});

  @override
  $FcmResponseCopyWith<$Res>? get fcmResponse;
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fcmResponse = freezed,
  }) {
    return _then(_$DataImpl(
      fcmResponse: freezed == fcmResponse
          ? _value.fcmResponse
          : fcmResponse // ignore: cast_nullable_to_non_nullable
              as FcmResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl({@JsonKey(name: 'fcm_response') this.fcmResponse});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: 'fcm_response')
  final FcmResponse? fcmResponse;

  @override
  String toString() {
    return 'Data(fcmResponse: $fcmResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.fcmResponse, fcmResponse) ||
                other.fcmResponse == fcmResponse));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fcmResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
          {@JsonKey(name: 'fcm_response') final FcmResponse? fcmResponse}) =
      _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: 'fcm_response')
  FcmResponse? get fcmResponse;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FcmResponse _$FcmResponseFromJson(Map<String, dynamic> json) {
  return _FcmResponse.fromJson(json);
}

/// @nodoc
mixin _$FcmResponse {
  @JsonKey(name: 'result')
  String? get result => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'device')
  Device? get device => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FcmResponseCopyWith<FcmResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FcmResponseCopyWith<$Res> {
  factory $FcmResponseCopyWith(
          FcmResponse value, $Res Function(FcmResponse) then) =
      _$FcmResponseCopyWithImpl<$Res, FcmResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'result') String? result,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'device') Device? device});

  $DeviceCopyWith<$Res>? get device;
}

/// @nodoc
class _$FcmResponseCopyWithImpl<$Res, $Val extends FcmResponse>
    implements $FcmResponseCopyWith<$Res> {
  _$FcmResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
    Object? message = freezed,
    Object? device = freezed,
  }) {
    return _then(_value.copyWith(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      device: freezed == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as Device?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DeviceCopyWith<$Res>? get device {
    if (_value.device == null) {
      return null;
    }

    return $DeviceCopyWith<$Res>(_value.device!, (value) {
      return _then(_value.copyWith(device: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FcmResponseImplCopyWith<$Res>
    implements $FcmResponseCopyWith<$Res> {
  factory _$$FcmResponseImplCopyWith(
          _$FcmResponseImpl value, $Res Function(_$FcmResponseImpl) then) =
      __$$FcmResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'result') String? result,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'device') Device? device});

  @override
  $DeviceCopyWith<$Res>? get device;
}

/// @nodoc
class __$$FcmResponseImplCopyWithImpl<$Res>
    extends _$FcmResponseCopyWithImpl<$Res, _$FcmResponseImpl>
    implements _$$FcmResponseImplCopyWith<$Res> {
  __$$FcmResponseImplCopyWithImpl(
      _$FcmResponseImpl _value, $Res Function(_$FcmResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
    Object? message = freezed,
    Object? device = freezed,
  }) {
    return _then(_$FcmResponseImpl(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      device: freezed == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as Device?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FcmResponseImpl implements _FcmResponse {
  const _$FcmResponseImpl(
      {@JsonKey(name: 'result') this.result,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'device') this.device});

  factory _$FcmResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FcmResponseImplFromJson(json);

  @override
  @JsonKey(name: 'result')
  final String? result;
  @override
  @JsonKey(name: 'message')
  final String? message;
  @override
  @JsonKey(name: 'device')
  final Device? device;

  @override
  String toString() {
    return 'FcmResponse(result: $result, message: $message, device: $device)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FcmResponseImpl &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.device, device) || other.device == device));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, result, message, device);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FcmResponseImplCopyWith<_$FcmResponseImpl> get copyWith =>
      __$$FcmResponseImplCopyWithImpl<_$FcmResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FcmResponseImplToJson(
      this,
    );
  }
}

abstract class _FcmResponse implements FcmResponse {
  const factory _FcmResponse(
      {@JsonKey(name: 'result') final String? result,
      @JsonKey(name: 'message') final String? message,
      @JsonKey(name: 'device') final Device? device}) = _$FcmResponseImpl;

  factory _FcmResponse.fromJson(Map<String, dynamic> json) =
      _$FcmResponseImpl.fromJson;

  @override
  @JsonKey(name: 'result')
  String? get result;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'device')
  Device? get device;
  @override
  @JsonKey(ignore: true)
  _$$FcmResponseImplCopyWith<_$FcmResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Device _$DeviceFromJson(Map<String, dynamic> json) {
  return _Device.fromJson(json);
}

/// @nodoc
mixin _$Device {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'fcm_token')
  String? get fcmToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'user')
  int? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceCopyWith<Device> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceCopyWith<$Res> {
  factory $DeviceCopyWith(Device value, $Res Function(Device) then) =
      _$DeviceCopyWithImpl<$Res, Device>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'fcm_token') String? fcmToken,
      @JsonKey(name: 'user') int? user});
}

/// @nodoc
class _$DeviceCopyWithImpl<$Res, $Val extends Device>
    implements $DeviceCopyWith<$Res> {
  _$DeviceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fcmToken = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeviceImplCopyWith<$Res> implements $DeviceCopyWith<$Res> {
  factory _$$DeviceImplCopyWith(
          _$DeviceImpl value, $Res Function(_$DeviceImpl) then) =
      __$$DeviceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'fcm_token') String? fcmToken,
      @JsonKey(name: 'user') int? user});
}

/// @nodoc
class __$$DeviceImplCopyWithImpl<$Res>
    extends _$DeviceCopyWithImpl<$Res, _$DeviceImpl>
    implements _$$DeviceImplCopyWith<$Res> {
  __$$DeviceImplCopyWithImpl(
      _$DeviceImpl _value, $Res Function(_$DeviceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fcmToken = freezed,
    Object? user = freezed,
  }) {
    return _then(_$DeviceImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceImpl implements _Device {
  const _$DeviceImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'fcm_token') this.fcmToken,
      @JsonKey(name: 'user') this.user});

  factory _$DeviceImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'fcm_token')
  final String? fcmToken;
  @override
  @JsonKey(name: 'user')
  final int? user;

  @override
  String toString() {
    return 'Device(id: $id, fcmToken: $fcmToken, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fcmToken, fcmToken) ||
                other.fcmToken == fcmToken) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, fcmToken, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceImplCopyWith<_$DeviceImpl> get copyWith =>
      __$$DeviceImplCopyWithImpl<_$DeviceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceImplToJson(
      this,
    );
  }
}

abstract class _Device implements Device {
  const factory _Device(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'fcm_token') final String? fcmToken,
      @JsonKey(name: 'user') final int? user}) = _$DeviceImpl;

  factory _Device.fromJson(Map<String, dynamic> json) = _$DeviceImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'fcm_token')
  String? get fcmToken;
  @override
  @JsonKey(name: 'user')
  int? get user;
  @override
  @JsonKey(ignore: true)
  _$$DeviceImplCopyWith<_$DeviceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
