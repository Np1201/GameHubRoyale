// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match_room_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MatchRoomModel _$MatchRoomModelFromJson(Map<String, dynamic> json) {
  return _MatchRoomModel.fromJson(json);
}

/// @nodoc
mixin _$MatchRoomModel {
  String get roomId => throw _privateConstructorUsedError;
  GameType get gameType => throw _privateConstructorUsedError;
  GameMode get mode => throw _privateConstructorUsedError;
  List<PlayerModel> get players => throw _privateConstructorUsedError;
  RoomState get state => throw _privateConstructorUsedError;
  Map<String, dynamic>? get matchData => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get finishedAt => throw _privateConstructorUsedError;
  String? get roomCode =>
      throw _privateConstructorUsedError; // For private rooms
  int? get maxPlayers => throw _privateConstructorUsedError;
  Map<String, dynamic>? get gameSettings => throw _privateConstructorUsedError;

  /// Serializes this MatchRoomModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MatchRoomModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MatchRoomModelCopyWith<MatchRoomModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchRoomModelCopyWith<$Res> {
  factory $MatchRoomModelCopyWith(
          MatchRoomModel value, $Res Function(MatchRoomModel) then) =
      _$MatchRoomModelCopyWithImpl<$Res, MatchRoomModel>;
  @useResult
  $Res call(
      {String roomId,
      GameType gameType,
      GameMode mode,
      List<PlayerModel> players,
      RoomState state,
      Map<String, dynamic>? matchData,
      DateTime createdAt,
      DateTime? finishedAt,
      String? roomCode,
      int? maxPlayers,
      Map<String, dynamic>? gameSettings});
}

/// @nodoc
class _$MatchRoomModelCopyWithImpl<$Res, $Val extends MatchRoomModel>
    implements $MatchRoomModelCopyWith<$Res> {
  _$MatchRoomModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MatchRoomModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = null,
    Object? gameType = null,
    Object? mode = null,
    Object? players = null,
    Object? state = null,
    Object? matchData = freezed,
    Object? createdAt = null,
    Object? finishedAt = freezed,
    Object? roomCode = freezed,
    Object? maxPlayers = freezed,
    Object? gameSettings = freezed,
  }) {
    return _then(_value.copyWith(
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
      gameType: null == gameType
          ? _value.gameType
          : gameType // ignore: cast_nullable_to_non_nullable
              as GameType,
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as GameMode,
      players: null == players
          ? _value.players
          : players // ignore: cast_nullable_to_non_nullable
              as List<PlayerModel>,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as RoomState,
      matchData: freezed == matchData
          ? _value.matchData
          : matchData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      finishedAt: freezed == finishedAt
          ? _value.finishedAt
          : finishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      roomCode: freezed == roomCode
          ? _value.roomCode
          : roomCode // ignore: cast_nullable_to_non_nullable
              as String?,
      maxPlayers: freezed == maxPlayers
          ? _value.maxPlayers
          : maxPlayers // ignore: cast_nullable_to_non_nullable
              as int?,
      gameSettings: freezed == gameSettings
          ? _value.gameSettings
          : gameSettings // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MatchRoomModelImplCopyWith<$Res>
    implements $MatchRoomModelCopyWith<$Res> {
  factory _$$MatchRoomModelImplCopyWith(_$MatchRoomModelImpl value,
          $Res Function(_$MatchRoomModelImpl) then) =
      __$$MatchRoomModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String roomId,
      GameType gameType,
      GameMode mode,
      List<PlayerModel> players,
      RoomState state,
      Map<String, dynamic>? matchData,
      DateTime createdAt,
      DateTime? finishedAt,
      String? roomCode,
      int? maxPlayers,
      Map<String, dynamic>? gameSettings});
}

/// @nodoc
class __$$MatchRoomModelImplCopyWithImpl<$Res>
    extends _$MatchRoomModelCopyWithImpl<$Res, _$MatchRoomModelImpl>
    implements _$$MatchRoomModelImplCopyWith<$Res> {
  __$$MatchRoomModelImplCopyWithImpl(
      _$MatchRoomModelImpl _value, $Res Function(_$MatchRoomModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MatchRoomModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = null,
    Object? gameType = null,
    Object? mode = null,
    Object? players = null,
    Object? state = null,
    Object? matchData = freezed,
    Object? createdAt = null,
    Object? finishedAt = freezed,
    Object? roomCode = freezed,
    Object? maxPlayers = freezed,
    Object? gameSettings = freezed,
  }) {
    return _then(_$MatchRoomModelImpl(
      roomId: null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
      gameType: null == gameType
          ? _value.gameType
          : gameType // ignore: cast_nullable_to_non_nullable
              as GameType,
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as GameMode,
      players: null == players
          ? _value._players
          : players // ignore: cast_nullable_to_non_nullable
              as List<PlayerModel>,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as RoomState,
      matchData: freezed == matchData
          ? _value._matchData
          : matchData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      finishedAt: freezed == finishedAt
          ? _value.finishedAt
          : finishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      roomCode: freezed == roomCode
          ? _value.roomCode
          : roomCode // ignore: cast_nullable_to_non_nullable
              as String?,
      maxPlayers: freezed == maxPlayers
          ? _value.maxPlayers
          : maxPlayers // ignore: cast_nullable_to_non_nullable
              as int?,
      gameSettings: freezed == gameSettings
          ? _value._gameSettings
          : gameSettings // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MatchRoomModelImpl implements _MatchRoomModel {
  const _$MatchRoomModelImpl(
      {required this.roomId,
      required this.gameType,
      required this.mode,
      required final List<PlayerModel> players,
      this.state = RoomState.waiting,
      final Map<String, dynamic>? matchData,
      required this.createdAt,
      this.finishedAt,
      this.roomCode,
      this.maxPlayers,
      final Map<String, dynamic>? gameSettings})
      : _players = players,
        _matchData = matchData,
        _gameSettings = gameSettings;

  factory _$MatchRoomModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MatchRoomModelImplFromJson(json);

  @override
  final String roomId;
  @override
  final GameType gameType;
  @override
  final GameMode mode;
  final List<PlayerModel> _players;
  @override
  List<PlayerModel> get players {
    if (_players is EqualUnmodifiableListView) return _players;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_players);
  }

  @override
  @JsonKey()
  final RoomState state;
  final Map<String, dynamic>? _matchData;
  @override
  Map<String, dynamic>? get matchData {
    final value = _matchData;
    if (value == null) return null;
    if (_matchData is EqualUnmodifiableMapView) return _matchData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final DateTime createdAt;
  @override
  final DateTime? finishedAt;
  @override
  final String? roomCode;
// For private rooms
  @override
  final int? maxPlayers;
  final Map<String, dynamic>? _gameSettings;
  @override
  Map<String, dynamic>? get gameSettings {
    final value = _gameSettings;
    if (value == null) return null;
    if (_gameSettings is EqualUnmodifiableMapView) return _gameSettings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'MatchRoomModel(roomId: $roomId, gameType: $gameType, mode: $mode, players: $players, state: $state, matchData: $matchData, createdAt: $createdAt, finishedAt: $finishedAt, roomCode: $roomCode, maxPlayers: $maxPlayers, gameSettings: $gameSettings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MatchRoomModelImpl &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.gameType, gameType) ||
                other.gameType == gameType) &&
            (identical(other.mode, mode) || other.mode == mode) &&
            const DeepCollectionEquality().equals(other._players, _players) &&
            (identical(other.state, state) || other.state == state) &&
            const DeepCollectionEquality()
                .equals(other._matchData, _matchData) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.finishedAt, finishedAt) ||
                other.finishedAt == finishedAt) &&
            (identical(other.roomCode, roomCode) ||
                other.roomCode == roomCode) &&
            (identical(other.maxPlayers, maxPlayers) ||
                other.maxPlayers == maxPlayers) &&
            const DeepCollectionEquality()
                .equals(other._gameSettings, _gameSettings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      roomId,
      gameType,
      mode,
      const DeepCollectionEquality().hash(_players),
      state,
      const DeepCollectionEquality().hash(_matchData),
      createdAt,
      finishedAt,
      roomCode,
      maxPlayers,
      const DeepCollectionEquality().hash(_gameSettings));

  /// Create a copy of MatchRoomModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MatchRoomModelImplCopyWith<_$MatchRoomModelImpl> get copyWith =>
      __$$MatchRoomModelImplCopyWithImpl<_$MatchRoomModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MatchRoomModelImplToJson(
      this,
    );
  }
}

abstract class _MatchRoomModel implements MatchRoomModel {
  const factory _MatchRoomModel(
      {required final String roomId,
      required final GameType gameType,
      required final GameMode mode,
      required final List<PlayerModel> players,
      final RoomState state,
      final Map<String, dynamic>? matchData,
      required final DateTime createdAt,
      final DateTime? finishedAt,
      final String? roomCode,
      final int? maxPlayers,
      final Map<String, dynamic>? gameSettings}) = _$MatchRoomModelImpl;

  factory _MatchRoomModel.fromJson(Map<String, dynamic> json) =
      _$MatchRoomModelImpl.fromJson;

  @override
  String get roomId;
  @override
  GameType get gameType;
  @override
  GameMode get mode;
  @override
  List<PlayerModel> get players;
  @override
  RoomState get state;
  @override
  Map<String, dynamic>? get matchData;
  @override
  DateTime get createdAt;
  @override
  DateTime? get finishedAt;
  @override
  String? get roomCode; // For private rooms
  @override
  int? get maxPlayers;
  @override
  Map<String, dynamic>? get gameSettings;

  /// Create a copy of MatchRoomModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MatchRoomModelImplCopyWith<_$MatchRoomModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PlayerModel _$PlayerModelFromJson(Map<String, dynamic> json) {
  return _PlayerModel.fromJson(json);
}

/// @nodoc
mixin _$PlayerModel {
  String get userId => throw _privateConstructorUsedError;
  int get seat => throw _privateConstructorUsedError;
  bool get ready => throw _privateConstructorUsedError;
  bool get isAI => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;
  int? get rating => throw _privateConstructorUsedError;
  bool get isHost => throw _privateConstructorUsedError;
  PlayerStatus? get status => throw _privateConstructorUsedError;

  /// Serializes this PlayerModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlayerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlayerModelCopyWith<PlayerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerModelCopyWith<$Res> {
  factory $PlayerModelCopyWith(
          PlayerModel value, $Res Function(PlayerModel) then) =
      _$PlayerModelCopyWithImpl<$Res, PlayerModel>;
  @useResult
  $Res call(
      {String userId,
      int seat,
      bool ready,
      bool isAI,
      String? displayName,
      String? avatarUrl,
      int? rating,
      bool isHost,
      PlayerStatus? status});
}

/// @nodoc
class _$PlayerModelCopyWithImpl<$Res, $Val extends PlayerModel>
    implements $PlayerModelCopyWith<$Res> {
  _$PlayerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlayerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? seat = null,
    Object? ready = null,
    Object? isAI = null,
    Object? displayName = freezed,
    Object? avatarUrl = freezed,
    Object? rating = freezed,
    Object? isHost = null,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      seat: null == seat
          ? _value.seat
          : seat // ignore: cast_nullable_to_non_nullable
              as int,
      ready: null == ready
          ? _value.ready
          : ready // ignore: cast_nullable_to_non_nullable
              as bool,
      isAI: null == isAI
          ? _value.isAI
          : isAI // ignore: cast_nullable_to_non_nullable
              as bool,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      isHost: null == isHost
          ? _value.isHost
          : isHost // ignore: cast_nullable_to_non_nullable
              as bool,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PlayerStatus?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlayerModelImplCopyWith<$Res>
    implements $PlayerModelCopyWith<$Res> {
  factory _$$PlayerModelImplCopyWith(
          _$PlayerModelImpl value, $Res Function(_$PlayerModelImpl) then) =
      __$$PlayerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      int seat,
      bool ready,
      bool isAI,
      String? displayName,
      String? avatarUrl,
      int? rating,
      bool isHost,
      PlayerStatus? status});
}

/// @nodoc
class __$$PlayerModelImplCopyWithImpl<$Res>
    extends _$PlayerModelCopyWithImpl<$Res, _$PlayerModelImpl>
    implements _$$PlayerModelImplCopyWith<$Res> {
  __$$PlayerModelImplCopyWithImpl(
      _$PlayerModelImpl _value, $Res Function(_$PlayerModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? seat = null,
    Object? ready = null,
    Object? isAI = null,
    Object? displayName = freezed,
    Object? avatarUrl = freezed,
    Object? rating = freezed,
    Object? isHost = null,
    Object? status = freezed,
  }) {
    return _then(_$PlayerModelImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      seat: null == seat
          ? _value.seat
          : seat // ignore: cast_nullable_to_non_nullable
              as int,
      ready: null == ready
          ? _value.ready
          : ready // ignore: cast_nullable_to_non_nullable
              as bool,
      isAI: null == isAI
          ? _value.isAI
          : isAI // ignore: cast_nullable_to_non_nullable
              as bool,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      isHost: null == isHost
          ? _value.isHost
          : isHost // ignore: cast_nullable_to_non_nullable
              as bool,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PlayerStatus?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlayerModelImpl implements _PlayerModel {
  const _$PlayerModelImpl(
      {required this.userId,
      required this.seat,
      this.ready = false,
      this.isAI = false,
      this.displayName,
      this.avatarUrl,
      this.rating,
      this.isHost = false,
      this.status});

  factory _$PlayerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlayerModelImplFromJson(json);

  @override
  final String userId;
  @override
  final int seat;
  @override
  @JsonKey()
  final bool ready;
  @override
  @JsonKey()
  final bool isAI;
  @override
  final String? displayName;
  @override
  final String? avatarUrl;
  @override
  final int? rating;
  @override
  @JsonKey()
  final bool isHost;
  @override
  final PlayerStatus? status;

  @override
  String toString() {
    return 'PlayerModel(userId: $userId, seat: $seat, ready: $ready, isAI: $isAI, displayName: $displayName, avatarUrl: $avatarUrl, rating: $rating, isHost: $isHost, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.seat, seat) || other.seat == seat) &&
            (identical(other.ready, ready) || other.ready == ready) &&
            (identical(other.isAI, isAI) || other.isAI == isAI) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.isHost, isHost) || other.isHost == isHost) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, seat, ready, isAI,
      displayName, avatarUrl, rating, isHost, status);

  /// Create a copy of PlayerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerModelImplCopyWith<_$PlayerModelImpl> get copyWith =>
      __$$PlayerModelImplCopyWithImpl<_$PlayerModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayerModelImplToJson(
      this,
    );
  }
}

abstract class _PlayerModel implements PlayerModel {
  const factory _PlayerModel(
      {required final String userId,
      required final int seat,
      final bool ready,
      final bool isAI,
      final String? displayName,
      final String? avatarUrl,
      final int? rating,
      final bool isHost,
      final PlayerStatus? status}) = _$PlayerModelImpl;

  factory _PlayerModel.fromJson(Map<String, dynamic> json) =
      _$PlayerModelImpl.fromJson;

  @override
  String get userId;
  @override
  int get seat;
  @override
  bool get ready;
  @override
  bool get isAI;
  @override
  String? get displayName;
  @override
  String? get avatarUrl;
  @override
  int? get rating;
  @override
  bool get isHost;
  @override
  PlayerStatus? get status;

  /// Create a copy of PlayerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayerModelImplCopyWith<_$PlayerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
