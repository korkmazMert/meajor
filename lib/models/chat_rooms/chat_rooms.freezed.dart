// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_rooms.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatRooms _$ChatRoomsFromJson(Map<String, dynamic> json) {
  return _ChatRooms.fromJson(json);
}

/// @nodoc
mixin _$ChatRooms {
  @JsonKey(name: 'result')
  String? get result => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'all_chat_rooms')
  List<AllChatRoom>? get allChatRooms => throw _privateConstructorUsedError;
  @JsonKey(name: 'my_activation_user')
  int? get myActivationUser => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_active')
  bool? get userActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatRoomsCopyWith<ChatRooms> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatRoomsCopyWith<$Res> {
  factory $ChatRoomsCopyWith(ChatRooms value, $Res Function(ChatRooms) then) =
      _$ChatRoomsCopyWithImpl<$Res, ChatRooms>;
  @useResult
  $Res call(
      {@JsonKey(name: 'result') String? result,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'all_chat_rooms') List<AllChatRoom>? allChatRooms,
      @JsonKey(name: 'my_activation_user') int? myActivationUser,
      @JsonKey(name: 'user_active') bool? userActive});
}

/// @nodoc
class _$ChatRoomsCopyWithImpl<$Res, $Val extends ChatRooms>
    implements $ChatRoomsCopyWith<$Res> {
  _$ChatRoomsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
    Object? message = freezed,
    Object? allChatRooms = freezed,
    Object? myActivationUser = freezed,
    Object? userActive = freezed,
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
      allChatRooms: freezed == allChatRooms
          ? _value.allChatRooms
          : allChatRooms // ignore: cast_nullable_to_non_nullable
              as List<AllChatRoom>?,
      myActivationUser: freezed == myActivationUser
          ? _value.myActivationUser
          : myActivationUser // ignore: cast_nullable_to_non_nullable
              as int?,
      userActive: freezed == userActive
          ? _value.userActive
          : userActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatRoomsImplCopyWith<$Res>
    implements $ChatRoomsCopyWith<$Res> {
  factory _$$ChatRoomsImplCopyWith(
          _$ChatRoomsImpl value, $Res Function(_$ChatRoomsImpl) then) =
      __$$ChatRoomsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'result') String? result,
      @JsonKey(name: 'message') String? message,
      @JsonKey(name: 'all_chat_rooms') List<AllChatRoom>? allChatRooms,
      @JsonKey(name: 'my_activation_user') int? myActivationUser,
      @JsonKey(name: 'user_active') bool? userActive});
}

/// @nodoc
class __$$ChatRoomsImplCopyWithImpl<$Res>
    extends _$ChatRoomsCopyWithImpl<$Res, _$ChatRoomsImpl>
    implements _$$ChatRoomsImplCopyWith<$Res> {
  __$$ChatRoomsImplCopyWithImpl(
      _$ChatRoomsImpl _value, $Res Function(_$ChatRoomsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
    Object? message = freezed,
    Object? allChatRooms = freezed,
    Object? myActivationUser = freezed,
    Object? userActive = freezed,
  }) {
    return _then(_$ChatRoomsImpl(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      allChatRooms: freezed == allChatRooms
          ? _value._allChatRooms
          : allChatRooms // ignore: cast_nullable_to_non_nullable
              as List<AllChatRoom>?,
      myActivationUser: freezed == myActivationUser
          ? _value.myActivationUser
          : myActivationUser // ignore: cast_nullable_to_non_nullable
              as int?,
      userActive: freezed == userActive
          ? _value.userActive
          : userActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatRoomsImpl implements _ChatRooms {
  const _$ChatRoomsImpl(
      {@JsonKey(name: 'result') this.result,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'all_chat_rooms') final List<AllChatRoom>? allChatRooms,
      @JsonKey(name: 'my_activation_user') this.myActivationUser,
      @JsonKey(name: 'user_active') this.userActive})
      : _allChatRooms = allChatRooms;

  factory _$ChatRoomsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatRoomsImplFromJson(json);

  @override
  @JsonKey(name: 'result')
  final String? result;
  @override
  @JsonKey(name: 'message')
  final String? message;
  final List<AllChatRoom>? _allChatRooms;
  @override
  @JsonKey(name: 'all_chat_rooms')
  List<AllChatRoom>? get allChatRooms {
    final value = _allChatRooms;
    if (value == null) return null;
    if (_allChatRooms is EqualUnmodifiableListView) return _allChatRooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'my_activation_user')
  final int? myActivationUser;
  @override
  @JsonKey(name: 'user_active')
  final bool? userActive;

  @override
  String toString() {
    return 'ChatRooms(result: $result, message: $message, allChatRooms: $allChatRooms, myActivationUser: $myActivationUser, userActive: $userActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatRoomsImpl &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._allChatRooms, _allChatRooms) &&
            (identical(other.myActivationUser, myActivationUser) ||
                other.myActivationUser == myActivationUser) &&
            (identical(other.userActive, userActive) ||
                other.userActive == userActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      result,
      message,
      const DeepCollectionEquality().hash(_allChatRooms),
      myActivationUser,
      userActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatRoomsImplCopyWith<_$ChatRoomsImpl> get copyWith =>
      __$$ChatRoomsImplCopyWithImpl<_$ChatRoomsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatRoomsImplToJson(
      this,
    );
  }
}

abstract class _ChatRooms implements ChatRooms {
  const factory _ChatRooms(
      {@JsonKey(name: 'result') final String? result,
      @JsonKey(name: 'message') final String? message,
      @JsonKey(name: 'all_chat_rooms') final List<AllChatRoom>? allChatRooms,
      @JsonKey(name: 'my_activation_user') final int? myActivationUser,
      @JsonKey(name: 'user_active') final bool? userActive}) = _$ChatRoomsImpl;

  factory _ChatRooms.fromJson(Map<String, dynamic> json) =
      _$ChatRoomsImpl.fromJson;

  @override
  @JsonKey(name: 'result')
  String? get result;
  @override
  @JsonKey(name: 'message')
  String? get message;
  @override
  @JsonKey(name: 'all_chat_rooms')
  List<AllChatRoom>? get allChatRooms;
  @override
  @JsonKey(name: 'my_activation_user')
  int? get myActivationUser;
  @override
  @JsonKey(name: 'user_active')
  bool? get userActive;
  @override
  @JsonKey(ignore: true)
  _$$ChatRoomsImplCopyWith<_$ChatRoomsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AllChatRoom _$AllChatRoomFromJson(Map<String, dynamic> json) {
  return _AllChatRoom.fromJson(json);
}

/// @nodoc
mixin _$AllChatRoom {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'room_unread_messages')
  int? get roomUnreadMessage => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_message')
  String? get lastMessage => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_message_time')
  String? get lastMessageTime => throw _privateConstructorUsedError;
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
  String? get onlineUsers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllChatRoomCopyWith<AllChatRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllChatRoomCopyWith<$Res> {
  factory $AllChatRoomCopyWith(
          AllChatRoom value, $Res Function(AllChatRoom) then) =
      _$AllChatRoomCopyWithImpl<$Res, AllChatRoom>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'room_unread_messages') int? roomUnreadMessage,
      @JsonKey(name: 'last_message') String? lastMessage,
      @JsonKey(name: 'last_message_time') String? lastMessageTime,
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
      @JsonKey(name: 'online_users') String? onlineUsers});
}

/// @nodoc
class _$AllChatRoomCopyWithImpl<$Res, $Val extends AllChatRoom>
    implements $AllChatRoomCopyWith<$Res> {
  _$AllChatRoomCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? roomUnreadMessage = freezed,
    Object? lastMessage = freezed,
    Object? lastMessageTime = freezed,
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
      roomUnreadMessage: freezed == roomUnreadMessage
          ? _value.roomUnreadMessage
          : roomUnreadMessage // ignore: cast_nullable_to_non_nullable
              as int?,
      lastMessage: freezed == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      lastMessageTime: freezed == lastMessageTime
          ? _value.lastMessageTime
          : lastMessageTime // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AllChatRoomImplCopyWith<$Res>
    implements $AllChatRoomCopyWith<$Res> {
  factory _$$AllChatRoomImplCopyWith(
          _$AllChatRoomImpl value, $Res Function(_$AllChatRoomImpl) then) =
      __$$AllChatRoomImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'room_unread_messages') int? roomUnreadMessage,
      @JsonKey(name: 'last_message') String? lastMessage,
      @JsonKey(name: 'last_message_time') String? lastMessageTime,
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
      @JsonKey(name: 'online_users') String? onlineUsers});
}

/// @nodoc
class __$$AllChatRoomImplCopyWithImpl<$Res>
    extends _$AllChatRoomCopyWithImpl<$Res, _$AllChatRoomImpl>
    implements _$$AllChatRoomImplCopyWith<$Res> {
  __$$AllChatRoomImplCopyWithImpl(
      _$AllChatRoomImpl _value, $Res Function(_$AllChatRoomImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? roomUnreadMessage = freezed,
    Object? lastMessage = freezed,
    Object? lastMessageTime = freezed,
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
    return _then(_$AllChatRoomImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      roomUnreadMessage: freezed == roomUnreadMessage
          ? _value.roomUnreadMessage
          : roomUnreadMessage // ignore: cast_nullable_to_non_nullable
              as int?,
      lastMessage: freezed == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      lastMessageTime: freezed == lastMessageTime
          ? _value.lastMessageTime
          : lastMessageTime // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AllChatRoomImpl implements _AllChatRoom {
  const _$AllChatRoomImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'room_unread_messages') this.roomUnreadMessage,
      @JsonKey(name: 'last_message') this.lastMessage,
      @JsonKey(name: 'last_message_time') this.lastMessageTime,
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

  factory _$AllChatRoomImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllChatRoomImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'room_unread_messages')
  final int? roomUnreadMessage;
  @override
  @JsonKey(name: 'last_message')
  final String? lastMessage;
  @override
  @JsonKey(name: 'last_message_time')
  final String? lastMessageTime;
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
  final String? onlineUsers;

  @override
  String toString() {
    return 'AllChatRoom(id: $id, roomUnreadMessage: $roomUnreadMessage, lastMessage: $lastMessage, lastMessageTime: $lastMessageTime, title: $title, controlId: $controlId, createdAt: $createdAt, updatedAt: $updatedAt, unreadUser: $unreadUser, unreadAdmin: $unreadAdmin, isCargo: $isCargo, isCustomer: $isCustomer, isGuest: $isGuest, isSeller: $isSeller, participant: $participant, onlineUsers: $onlineUsers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllChatRoomImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.roomUnreadMessage, roomUnreadMessage) ||
                other.roomUnreadMessage == roomUnreadMessage) &&
            (identical(other.lastMessage, lastMessage) ||
                other.lastMessage == lastMessage) &&
            (identical(other.lastMessageTime, lastMessageTime) ||
                other.lastMessageTime == lastMessageTime) &&
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
            (identical(other.onlineUsers, onlineUsers) ||
                other.onlineUsers == onlineUsers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      roomUnreadMessage,
      lastMessage,
      lastMessageTime,
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
      onlineUsers);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AllChatRoomImplCopyWith<_$AllChatRoomImpl> get copyWith =>
      __$$AllChatRoomImplCopyWithImpl<_$AllChatRoomImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllChatRoomImplToJson(
      this,
    );
  }
}

abstract class _AllChatRoom implements AllChatRoom {
  const factory _AllChatRoom(
          {@JsonKey(name: 'id') final int? id,
          @JsonKey(name: 'room_unread_messages') final int? roomUnreadMessage,
          @JsonKey(name: 'last_message') final String? lastMessage,
          @JsonKey(name: 'last_message_time') final String? lastMessageTime,
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
          @JsonKey(name: 'online_users') final String? onlineUsers}) =
      _$AllChatRoomImpl;

  factory _AllChatRoom.fromJson(Map<String, dynamic> json) =
      _$AllChatRoomImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'room_unread_messages')
  int? get roomUnreadMessage;
  @override
  @JsonKey(name: 'last_message')
  String? get lastMessage;
  @override
  @JsonKey(name: 'last_message_time')
  String? get lastMessageTime;
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
  String? get onlineUsers;
  @override
  @JsonKey(ignore: true)
  _$$AllChatRoomImplCopyWith<_$AllChatRoomImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
  @JsonKey(name: 'receiver_name')
  String? get receiverName => throw _privateConstructorUsedError;
  @JsonKey(name: 'guest_email')
  String? get guestEmail => throw _privateConstructorUsedError;
  @JsonKey(name: 'guest_phone')
  String? get guestPhone => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'receiver_id') int? receiverId,
      @JsonKey(name: 'receiver_name') String? receiverName,
      @JsonKey(name: 'guest_email') String? guestEmail,
      @JsonKey(name: 'guest_phone') String? guestPhone});
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
    Object? receiverName = freezed,
    Object? guestEmail = freezed,
    Object? guestPhone = freezed,
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
      receiverName: freezed == receiverName
          ? _value.receiverName
          : receiverName // ignore: cast_nullable_to_non_nullable
              as String?,
      guestEmail: freezed == guestEmail
          ? _value.guestEmail
          : guestEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      guestPhone: freezed == guestPhone
          ? _value.guestPhone
          : guestPhone // ignore: cast_nullable_to_non_nullable
              as String?,
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
      @JsonKey(name: 'receiver_id') int? receiverId,
      @JsonKey(name: 'receiver_name') String? receiverName,
      @JsonKey(name: 'guest_email') String? guestEmail,
      @JsonKey(name: 'guest_phone') String? guestPhone});
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
    Object? receiverName = freezed,
    Object? guestEmail = freezed,
    Object? guestPhone = freezed,
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
      receiverName: freezed == receiverName
          ? _value.receiverName
          : receiverName // ignore: cast_nullable_to_non_nullable
              as String?,
      guestEmail: freezed == guestEmail
          ? _value.guestEmail
          : guestEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      guestPhone: freezed == guestPhone
          ? _value.guestPhone
          : guestPhone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ParticipantImpl implements _Participant {
  const _$ParticipantImpl(
      {@JsonKey(name: 'sender_name') this.senderName,
      @JsonKey(name: 'sender_id') this.senderId,
      @JsonKey(name: 'receiver_id') this.receiverId,
      @JsonKey(name: 'receiver_name') this.receiverName,
      @JsonKey(name: 'guest_email') this.guestEmail,
      @JsonKey(name: 'guest_phone') this.guestPhone});

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
  @JsonKey(name: 'receiver_name')
  final String? receiverName;
  @override
  @JsonKey(name: 'guest_email')
  final String? guestEmail;
  @override
  @JsonKey(name: 'guest_phone')
  final String? guestPhone;

  @override
  String toString() {
    return 'Participant(senderName: $senderName, senderId: $senderId, receiverId: $receiverId, receiverName: $receiverName, guestEmail: $guestEmail, guestPhone: $guestPhone)';
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
                other.receiverId == receiverId) &&
            (identical(other.receiverName, receiverName) ||
                other.receiverName == receiverName) &&
            (identical(other.guestEmail, guestEmail) ||
                other.guestEmail == guestEmail) &&
            (identical(other.guestPhone, guestPhone) ||
                other.guestPhone == guestPhone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, senderName, senderId, receiverId,
      receiverName, guestEmail, guestPhone);

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
          @JsonKey(name: 'receiver_id') final int? receiverId,
          @JsonKey(name: 'receiver_name') final String? receiverName,
          @JsonKey(name: 'guest_email') final String? guestEmail,
          @JsonKey(name: 'guest_phone') final String? guestPhone}) =
      _$ParticipantImpl;

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
  @JsonKey(name: 'receiver_name')
  String? get receiverName;
  @override
  @JsonKey(name: 'guest_email')
  String? get guestEmail;
  @override
  @JsonKey(name: 'guest_phone')
  String? get guestPhone;
  @override
  @JsonKey(ignore: true)
  _$$ParticipantImplCopyWith<_$ParticipantImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
