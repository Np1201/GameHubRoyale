import 'package:freezed_annotation/freezed_annotation.dart';

part 'match_room_model.freezed.dart';
part 'match_room_model.g.dart';

@freezed
class MatchRoomModel with _$MatchRoomModel {
  const factory MatchRoomModel({
    required String roomId,
    required GameType gameType,
    required GameMode mode,
    required List<PlayerModel> players,
    @Default(RoomState.waiting) RoomState state,
    Map<String, dynamic>? matchData,
    required DateTime createdAt,
    DateTime? finishedAt,
    String? roomCode, // For private rooms
    int? maxPlayers,
    Map<String, dynamic>? gameSettings,
  }) = _MatchRoomModel;

  factory MatchRoomModel.fromJson(Map<String, dynamic> json) =>
      _$MatchRoomModelFromJson(json);
}

@freezed
class PlayerModel with _$PlayerModel {
  const factory PlayerModel({
    required String userId,
    required int seat,
    @Default(false) bool ready,
    @Default(false) bool isAI,
    String? displayName,
    String? avatarUrl,
    int? rating,
    @Default(false) bool isHost,
    PlayerStatus? status,
  }) = _PlayerModel;

  factory PlayerModel.fromJson(Map<String, dynamic> json) =>
      _$PlayerModelFromJson(json);
}

enum GameType {
  @JsonValue('chess')
  chess,
  @JsonValue('ludo')
  ludo,
  @JsonValue('carrom')
  carrom,
}

enum GameMode {
  @JsonValue('online')
  online,
  @JsonValue('local')
  local,
  @JsonValue('ai')
  ai,
}

enum RoomState {
  @JsonValue('waiting')
  waiting,
  @JsonValue('running')
  running,
  @JsonValue('finished')
  finished,
  @JsonValue('paused')
  paused,
}

enum PlayerStatus {
  @JsonValue('online')
  online,
  @JsonValue('offline')
  offline,
  @JsonValue('disconnected')
  disconnected,
}
