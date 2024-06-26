// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'open_live_support_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OpenLiveSupportModel _$OpenLiveSupportModelFromJson(Map<String, dynamic> json) {
  return _OpenLiveSupportModel.fromJson(json);
}

/// @nodoc
mixin _$OpenLiveSupportModel {
  @JsonKey(name: 'my_activation_user')
  int? get myActivationUser => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_active')
  bool? get userActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'control_id')
  int? get controlId => throw _privateConstructorUsedError;
  @JsonKey(name: 'room')
  Room? get room => throw _privateConstructorUsedError;
  @JsonKey(name: 'room_id')
  int? get roomId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_name')
  String? get userName => throw _privateConstructorUsedError;
  @JsonKey(name: 'participant')
  Participant? get participant => throw _privateConstructorUsedError;
  @JsonKey(name: 'messages_page_length')
  int? get messagesPageLength => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OpenLiveSupportModelCopyWith<OpenLiveSupportModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenLiveSupportModelCopyWith<$Res> {
  factory $OpenLiveSupportModelCopyWith(OpenLiveSupportModel value,
          $Res Function(OpenLiveSupportModel) then) =
      _$OpenLiveSupportModelCopyWithImpl<$Res, OpenLiveSupportModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'my_activation_user') int? myActivationUser,
      @JsonKey(name: 'user_active') bool? userActive,
      @JsonKey(name: 'control_id') int? controlId,
      @JsonKey(name: 'room') Room? room,
      @JsonKey(name: 'room_id') int? roomId,
      @JsonKey(name: 'user_name') String? userName,
      @JsonKey(name: 'participant') Participant? participant,
      @JsonKey(name: 'messages_page_length') int? messagesPageLength});

  $RoomCopyWith<$Res>? get room;
  $ParticipantCopyWith<$Res>? get participant;
}

/// @nodoc
class _$OpenLiveSupportModelCopyWithImpl<$Res,
        $Val extends OpenLiveSupportModel>
    implements $OpenLiveSupportModelCopyWith<$Res> {
  _$OpenLiveSupportModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myActivationUser = freezed,
    Object? userActive = freezed,
    Object? controlId = freezed,
    Object? room = freezed,
    Object? roomId = freezed,
    Object? userName = freezed,
    Object? participant = freezed,
    Object? messagesPageLength = freezed,
  }) {
    return _then(_value.copyWith(
      myActivationUser: freezed == myActivationUser
          ? _value.myActivationUser
          : myActivationUser // ignore: cast_nullable_to_non_nullable
              as int?,
      userActive: freezed == userActive
          ? _value.userActive
          : userActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      controlId: freezed == controlId
          ? _value.controlId
          : controlId // ignore: cast_nullable_to_non_nullable
              as int?,
      room: freezed == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as Room?,
      roomId: freezed == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as int?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      participant: freezed == participant
          ? _value.participant
          : participant // ignore: cast_nullable_to_non_nullable
              as Participant?,
      messagesPageLength: freezed == messagesPageLength
          ? _value.messagesPageLength
          : messagesPageLength // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RoomCopyWith<$Res>? get room {
    if (_value.room == null) {
      return null;
    }

    return $RoomCopyWith<$Res>(_value.room!, (value) {
      return _then(_value.copyWith(room: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ParticipantCopyWith<$Res>? get participant {
    if (_value.participant == null) {
      return null;
    }

    return $ParticipantCopyWith<$Res>(_value.participant!, (value) {
      return _then(_value.copyWith(participant: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OpenLiveSupportModelImplCopyWith<$Res>
    implements $OpenLiveSupportModelCopyWith<$Res> {
  factory _$$OpenLiveSupportModelImplCopyWith(_$OpenLiveSupportModelImpl value,
          $Res Function(_$OpenLiveSupportModelImpl) then) =
      __$$OpenLiveSupportModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'my_activation_user') int? myActivationUser,
      @JsonKey(name: 'user_active') bool? userActive,
      @JsonKey(name: 'control_id') int? controlId,
      @JsonKey(name: 'room') Room? room,
      @JsonKey(name: 'room_id') int? roomId,
      @JsonKey(name: 'user_name') String? userName,
      @JsonKey(name: 'participant') Participant? participant,
      @JsonKey(name: 'messages_page_length') int? messagesPageLength});

  @override
  $RoomCopyWith<$Res>? get room;
  @override
  $ParticipantCopyWith<$Res>? get participant;
}

/// @nodoc
class __$$OpenLiveSupportModelImplCopyWithImpl<$Res>
    extends _$OpenLiveSupportModelCopyWithImpl<$Res, _$OpenLiveSupportModelImpl>
    implements _$$OpenLiveSupportModelImplCopyWith<$Res> {
  __$$OpenLiveSupportModelImplCopyWithImpl(_$OpenLiveSupportModelImpl _value,
      $Res Function(_$OpenLiveSupportModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myActivationUser = freezed,
    Object? userActive = freezed,
    Object? controlId = freezed,
    Object? room = freezed,
    Object? roomId = freezed,
    Object? userName = freezed,
    Object? participant = freezed,
    Object? messagesPageLength = freezed,
  }) {
    return _then(_$OpenLiveSupportModelImpl(
      myActivationUser: freezed == myActivationUser
          ? _value.myActivationUser
          : myActivationUser // ignore: cast_nullable_to_non_nullable
              as int?,
      userActive: freezed == userActive
          ? _value.userActive
          : userActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      controlId: freezed == controlId
          ? _value.controlId
          : controlId // ignore: cast_nullable_to_non_nullable
              as int?,
      room: freezed == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as Room?,
      roomId: freezed == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as int?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      participant: freezed == participant
          ? _value.participant
          : participant // ignore: cast_nullable_to_non_nullable
              as Participant?,
      messagesPageLength: freezed == messagesPageLength
          ? _value.messagesPageLength
          : messagesPageLength // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OpenLiveSupportModelImpl implements _OpenLiveSupportModel {
  const _$OpenLiveSupportModelImpl(
      {@JsonKey(name: 'my_activation_user') this.myActivationUser,
      @JsonKey(name: 'user_active') this.userActive,
      @JsonKey(name: 'control_id') this.controlId,
      @JsonKey(name: 'room') this.room,
      @JsonKey(name: 'room_id') this.roomId,
      @JsonKey(name: 'user_name') this.userName,
      @JsonKey(name: 'participant') this.participant,
      @JsonKey(name: 'messages_page_length') this.messagesPageLength});

  factory _$OpenLiveSupportModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpenLiveSupportModelImplFromJson(json);

  @override
  @JsonKey(name: 'my_activation_user')
  final int? myActivationUser;
  @override
  @JsonKey(name: 'user_active')
  final bool? userActive;
  @override
  @JsonKey(name: 'control_id')
  final int? controlId;
  @override
  @JsonKey(name: 'room')
  final Room? room;
  @override
  @JsonKey(name: 'room_id')
  final int? roomId;
  @override
  @JsonKey(name: 'user_name')
  final String? userName;
  @override
  @JsonKey(name: 'participant')
  final Participant? participant;
  @override
  @JsonKey(name: 'messages_page_length')
  final int? messagesPageLength;

  @override
  String toString() {
    return 'OpenLiveSupportModel(myActivationUser: $myActivationUser, userActive: $userActive, controlId: $controlId, room: $room, roomId: $roomId, userName: $userName, participant: $participant, messagesPageLength: $messagesPageLength)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenLiveSupportModelImpl &&
            (identical(other.myActivationUser, myActivationUser) ||
                other.myActivationUser == myActivationUser) &&
            (identical(other.userActive, userActive) ||
                other.userActive == userActive) &&
            (identical(other.controlId, controlId) ||
                other.controlId == controlId) &&
            (identical(other.room, room) || other.room == room) &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.participant, participant) ||
                other.participant == participant) &&
            (identical(other.messagesPageLength, messagesPageLength) ||
                other.messagesPageLength == messagesPageLength));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, myActivationUser, userActive,
      controlId, room, roomId, userName, participant, messagesPageLength);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenLiveSupportModelImplCopyWith<_$OpenLiveSupportModelImpl>
      get copyWith =>
          __$$OpenLiveSupportModelImplCopyWithImpl<_$OpenLiveSupportModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenLiveSupportModelImplToJson(
      this,
    );
  }
}

abstract class _OpenLiveSupportModel implements OpenLiveSupportModel {
  const factory _OpenLiveSupportModel(
      {@JsonKey(name: 'my_activation_user') final int? myActivationUser,
      @JsonKey(name: 'user_active') final bool? userActive,
      @JsonKey(name: 'control_id') final int? controlId,
      @JsonKey(name: 'room') final Room? room,
      @JsonKey(name: 'room_id') final int? roomId,
      @JsonKey(name: 'user_name') final String? userName,
      @JsonKey(name: 'participant') final Participant? participant,
      @JsonKey(name: 'messages_page_length')
      final int? messagesPageLength}) = _$OpenLiveSupportModelImpl;

  factory _OpenLiveSupportModel.fromJson(Map<String, dynamic> json) =
      _$OpenLiveSupportModelImpl.fromJson;

  @override
  @JsonKey(name: 'my_activation_user')
  int? get myActivationUser;
  @override
  @JsonKey(name: 'user_active')
  bool? get userActive;
  @override
  @JsonKey(name: 'control_id')
  int? get controlId;
  @override
  @JsonKey(name: 'room')
  Room? get room;
  @override
  @JsonKey(name: 'room_id')
  int? get roomId;
  @override
  @JsonKey(name: 'user_name')
  String? get userName;
  @override
  @JsonKey(name: 'participant')
  Participant? get participant;
  @override
  @JsonKey(name: 'messages_page_length')
  int? get messagesPageLength;
  @override
  @JsonKey(ignore: true)
  _$$OpenLiveSupportModelImplCopyWith<_$OpenLiveSupportModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Participant _$ParticipantFromJson(Map<String, dynamic> json) {
  return _Participant.fromJson(json);
}

/// @nodoc
mixin _$Participant {
  @JsonKey(name: 'sender_name')
  String? get senderName => throw _privateConstructorUsedError;
  @JsonKey(name: 'sender_id')
  int? get senderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'receiver_id')
  int? get receiverId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParticipantCopyWith<Participant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParticipantCopyWith<$Res> {
  factory $ParticipantCopyWith(
          Participant value, $Res Function(Participant) then) =
      _$ParticipantCopyWithImpl<$Res, Participant>;
  @useResult
  $Res call(
      {@JsonKey(name: 'sender_name') String? senderName,
      @JsonKey(name: 'sender_id') int? senderId,
      @JsonKey(name: 'receiver_id') int? receiverId});
}

/// @nodoc
class _$ParticipantCopyWithImpl<$Res, $Val extends Participant>
    implements $ParticipantCopyWith<$Res> {
  _$ParticipantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senderName = freezed,
    Object? senderId = freezed,
    Object? receiverId = freezed,
  }) {
    return _then(_value.copyWith(
      senderName: freezed == senderName
          ? _value.senderName
          : senderName // ignore: cast_nullable_to_non_nullable
              as String?,
      senderId: freezed == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as int?,
      receiverId: freezed == receiverId
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ParticipantImplCopyWith<$Res>
    implements $ParticipantCopyWith<$Res> {
  factory _$$ParticipantImplCopyWith(
          _$ParticipantImpl value, $Res Function(_$ParticipantImpl) then) =
      __$$ParticipantImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'sender_name') String? senderName,
      @JsonKey(name: 'sender_id') int? senderId,
      @JsonKey(name: 'receiver_id') int? receiverId});
}

/// @nodoc
class __$$ParticipantImplCopyWithImpl<$Res>
    extends _$ParticipantCopyWithImpl<$Res, _$ParticipantImpl>
    implements _$$ParticipantImplCopyWith<$Res> {
  __$$ParticipantImplCopyWithImpl(
      _$ParticipantImpl _value, $Res Function(_$ParticipantImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senderName = freezed,
    Object? senderId = freezed,
    Object? receiverId = freezed,
  }) {
    return _then(_$ParticipantImpl(
      senderName: freezed == senderName
          ? _value.senderName
          : senderName // ignore: cast_nullable_to_non_nullable
              as String?,
      senderId: freezed == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as int?,
      receiverId: freezed == receiverId
          ? _value.receiverId
          : receiverId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ParticipantImpl implements _Participant {
  const _$ParticipantImpl(
      {@JsonKey(name: 'sender_name') this.senderName,
      @JsonKey(name: 'sender_id') this.senderId,
      @JsonKey(name: 'receiver_id') this.receiverId});

  factory _$ParticipantImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParticipantImplFromJson(json);

  @override
  @JsonKey(name: 'sender_name')
  final String? senderName;
  @override
  @JsonKey(name: 'sender_id')
  final int? senderId;
  @override
  @JsonKey(name: 'receiver_id')
  final int? receiverId;

  @override
  String toString() {
    return 'Participant(senderName: $senderName, senderId: $senderId, receiverId: $receiverId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParticipantImpl &&
            (identical(other.senderName, senderName) ||
                other.senderName == senderName) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.receiverId, receiverId) ||
                other.receiverId == receiverId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, senderName, senderId, receiverId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParticipantImplCopyWith<_$ParticipantImpl> get copyWith =>
      __$$ParticipantImplCopyWithImpl<_$ParticipantImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ParticipantImplToJson(
      this,
    );
  }
}

abstract class _Participant implements Participant {
  const factory _Participant(
      {@JsonKey(name: 'sender_name') final String? senderName,
      @JsonKey(name: 'sender_id') final int? senderId,
      @JsonKey(name: 'receiver_id') final int? receiverId}) = _$ParticipantImpl;

  factory _Participant.fromJson(Map<String, dynamic> json) =
      _$ParticipantImpl.fromJson;

  @override
  @JsonKey(name: 'sender_name')
  String? get senderName;
  @override
  @JsonKey(name: 'sender_id')
  int? get senderId;
  @override
  @JsonKey(name: 'receiver_id')
  int? get receiverId;
  @override
  @JsonKey(ignore: true)
  _$$ParticipantImplCopyWith<_$ParticipantImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Room _$RoomFromJson(Map<String, dynamic> json) {
  return _Room.fromJson(json);
}

/// @nodoc
mixin _$Room {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'control_id')
  String? get controlId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'unread_user')
  bool? get unreadUser => throw _privateConstructorUsedError;
  @JsonKey(name: 'unread_admin')
  bool? get unreadAdmin => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_cargo')
  bool? get isCargo => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_customer')
  bool? get isCustomer => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_guest')
  bool? get isGuest => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_seller')
  bool? get isSeller => throw _privateConstructorUsedError;
  @JsonKey(name: 'participant')
  List<Participant>? get participant => throw _privateConstructorUsedError;
  @JsonKey(name: 'online_users')
  dynamic get onlineUsers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoomCopyWith<Room> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomCopyWith<$Res> {
  factory $RoomCopyWith(Room value, $Res Function(Room) then) =
      _$RoomCopyWithImpl<$Res, Room>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'control_id') String? controlId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'unread_user') bool? unreadUser,
      @JsonKey(name: 'unread_admin') bool? unreadAdmin,
      @JsonKey(name: 'is_cargo') bool? isCargo,
      @JsonKey(name: 'is_customer') bool? isCustomer,
      @JsonKey(name: 'is_guest') bool? isGuest,
      @JsonKey(name: 'is_seller') bool? isSeller,
      @JsonKey(name: 'participant') List<Participant>? participant,
      @JsonKey(name: 'online_users') dynamic onlineUsers});
}

/// @nodoc
class _$RoomCopyWithImpl<$Res, $Val extends Room>
    implements $RoomCopyWith<$Res> {
  _$RoomCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? controlId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? unreadUser = freezed,
    Object? unreadAdmin = freezed,
    Object? isCargo = freezed,
    Object? isCustomer = freezed,
    Object? isGuest = freezed,
    Object? isSeller = freezed,
    Object? participant = freezed,
    Object? onlineUsers = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      controlId: freezed == controlId
          ? _value.controlId
          : controlId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      unreadUser: freezed == unreadUser
          ? _value.unreadUser
          : unreadUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      unreadAdmin: freezed == unreadAdmin
          ? _value.unreadAdmin
          : unreadAdmin // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCargo: freezed == isCargo
          ? _value.isCargo
          : isCargo // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCustomer: freezed == isCustomer
          ? _value.isCustomer
          : isCustomer // ignore: cast_nullable_to_non_nullable
              as bool?,
      isGuest: freezed == isGuest
          ? _value.isGuest
          : isGuest // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSeller: freezed == isSeller
          ? _value.isSeller
          : isSeller // ignore: cast_nullable_to_non_nullable
              as bool?,
      participant: freezed == participant
          ? _value.participant
          : participant // ignore: cast_nullable_to_non_nullable
              as List<Participant>?,
      onlineUsers: freezed == onlineUsers
          ? _value.onlineUsers
          : onlineUsers // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoomImplCopyWith<$Res> implements $RoomCopyWith<$Res> {
  factory _$$RoomImplCopyWith(
          _$RoomImpl value, $Res Function(_$RoomImpl) then) =
      __$$RoomImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'title') String? title,
      @JsonKey(name: 'control_id') String? controlId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'unread_user') bool? unreadUser,
      @JsonKey(name: 'unread_admin') bool? unreadAdmin,
      @JsonKey(name: 'is_cargo') bool? isCargo,
      @JsonKey(name: 'is_customer') bool? isCustomer,
      @JsonKey(name: 'is_guest') bool? isGuest,
      @JsonKey(name: 'is_seller') bool? isSeller,
      @JsonKey(name: 'participant') List<Participant>? participant,
      @JsonKey(name: 'online_users') dynamic onlineUsers});
}

/// @nodoc
class __$$RoomImplCopyWithImpl<$Res>
    extends _$RoomCopyWithImpl<$Res, _$RoomImpl>
    implements _$$RoomImplCopyWith<$Res> {
  __$$RoomImplCopyWithImpl(_$RoomImpl _value, $Res Function(_$RoomImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? controlId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? unreadUser = freezed,
    Object? unreadAdmin = freezed,
    Object? isCargo = freezed,
    Object? isCustomer = freezed,
    Object? isGuest = freezed,
    Object? isSeller = freezed,
    Object? participant = freezed,
    Object? onlineUsers = freezed,
  }) {
    return _then(_$RoomImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      controlId: freezed == controlId
          ? _value.controlId
          : controlId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      unreadUser: freezed == unreadUser
          ? _value.unreadUser
          : unreadUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      unreadAdmin: freezed == unreadAdmin
          ? _value.unreadAdmin
          : unreadAdmin // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCargo: freezed == isCargo
          ? _value.isCargo
          : isCargo // ignore: cast_nullable_to_non_nullable
              as bool?,
      isCustomer: freezed == isCustomer
          ? _value.isCustomer
          : isCustomer // ignore: cast_nullable_to_non_nullable
              as bool?,
      isGuest: freezed == isGuest
          ? _value.isGuest
          : isGuest // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSeller: freezed == isSeller
          ? _value.isSeller
          : isSeller // ignore: cast_nullable_to_non_nullable
              as bool?,
      participant: freezed == participant
          ? _value._participant
          : participant // ignore: cast_nullable_to_non_nullable
              as List<Participant>?,
      onlineUsers: freezed == onlineUsers
          ? _value.onlineUsers
          : onlineUsers // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoomImpl implements _Room {
  const _$RoomImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'control_id') this.controlId,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'unread_user') this.unreadUser,
      @JsonKey(name: 'unread_admin') this.unreadAdmin,
      @JsonKey(name: 'is_cargo') this.isCargo,
      @JsonKey(name: 'is_customer') this.isCustomer,
      @JsonKey(name: 'is_guest') this.isGuest,
      @JsonKey(name: 'is_seller') this.isSeller,
      @JsonKey(name: 'participant') final List<Participant>? participant,
      @JsonKey(name: 'online_users') this.onlineUsers})
      : _participant = participant;

  factory _$RoomImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoomImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'control_id')
  final String? controlId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'unread_user')
  final bool? unreadUser;
  @override
  @JsonKey(name: 'unread_admin')
  final bool? unreadAdmin;
  @override
  @JsonKey(name: 'is_cargo')
  final bool? isCargo;
  @override
  @JsonKey(name: 'is_customer')
  final bool? isCustomer;
  @override
  @JsonKey(name: 'is_guest')
  final bool? isGuest;
  @override
  @JsonKey(name: 'is_seller')
  final bool? isSeller;
  final List<Participant>? _participant;
  @override
  @JsonKey(name: 'participant')
  List<Participant>? get participant {
    final value = _participant;
    if (value == null) return null;
    if (_participant is EqualUnmodifiableListView) return _participant;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'online_users')
  final dynamic onlineUsers;

  @override
  String toString() {
    return 'Room(id: $id, title: $title, controlId: $controlId, createdAt: $createdAt, updatedAt: $updatedAt, unreadUser: $unreadUser, unreadAdmin: $unreadAdmin, isCargo: $isCargo, isCustomer: $isCustomer, isGuest: $isGuest, isSeller: $isSeller, participant: $participant, onlineUsers: $onlineUsers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.controlId, controlId) ||
                other.controlId == controlId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.unreadUser, unreadUser) ||
                other.unreadUser == unreadUser) &&
            (identical(other.unreadAdmin, unreadAdmin) ||
                other.unreadAdmin == unreadAdmin) &&
            (identical(other.isCargo, isCargo) || other.isCargo == isCargo) &&
            (identical(other.isCustomer, isCustomer) ||
                other.isCustomer == isCustomer) &&
            (identical(other.isGuest, isGuest) || other.isGuest == isGuest) &&
            (identical(other.isSeller, isSeller) ||
                other.isSeller == isSeller) &&
            const DeepCollectionEquality()
                .equals(other._participant, _participant) &&
            const DeepCollectionEquality()
                .equals(other.onlineUsers, onlineUsers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      controlId,
      createdAt,
      updatedAt,
      unreadUser,
      unreadAdmin,
      isCargo,
      isCustomer,
      isGuest,
      isSeller,
      const DeepCollectionEquality().hash(_participant),
      const DeepCollectionEquality().hash(onlineUsers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomImplCopyWith<_$RoomImpl> get copyWith =>
      __$$RoomImplCopyWithImpl<_$RoomImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoomImplToJson(
      this,
    );
  }
}

abstract class _Room implements Room {
  const factory _Room(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'control_id') final String? controlId,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      @JsonKey(name: 'unread_user') final bool? unreadUser,
      @JsonKey(name: 'unread_admin') final bool? unreadAdmin,
      @JsonKey(name: 'is_cargo') final bool? isCargo,
      @JsonKey(name: 'is_customer') final bool? isCustomer,
      @JsonKey(name: 'is_guest') final bool? isGuest,
      @JsonKey(name: 'is_seller') final bool? isSeller,
      @JsonKey(name: 'participant') final List<Participant>? participant,
      @JsonKey(name: 'online_users') final dynamic onlineUsers}) = _$RoomImpl;

  factory _Room.fromJson(Map<String, dynamic> json) = _$RoomImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'control_id')
  String? get controlId;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'unread_user')
  bool? get unreadUser;
  @override
  @JsonKey(name: 'unread_admin')
  bool? get unreadAdmin;
  @override
  @JsonKey(name: 'is_cargo')
  bool? get isCargo;
  @override
  @JsonKey(name: 'is_customer')
  bool? get isCustomer;
  @override
  @JsonKey(name: 'is_guest')
  bool? get isGuest;
  @override
  @JsonKey(name: 'is_seller')
  bool? get isSeller;
  @override
  @JsonKey(name: 'participant')
  List<Participant>? get participant;
  @override
  @JsonKey(name: 'online_users')
  dynamic get onlineUsers;
  @override
  @JsonKey(ignore: true)
  _$$RoomImplCopyWith<_$RoomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
