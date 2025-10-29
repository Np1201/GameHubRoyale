// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_room_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MatchRoomModelImpl _$$MatchRoomModelImplFromJson(Map<String, dynamic> json) =>
    _$MatchRoomModelImpl(
      roomId: json['roomId'] as String,
      gameType: $enumDecode(_$GameTypeEnumMap, json['gameType']),
      mode: $enumDecode(_$GameModeEnumMap, json['mode']),
      players: (json['players'] as List<dynamic>)
          .map((e) => PlayerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      state: $enumDecodeNullable(_$RoomStateEnumMap, json['state']) ??
          RoomState.waiting,
      matchData: json['matchData'] as Map<String, dynamic>?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      finishedAt: json['finishedAt'] == null
          ? null
          : DateTime.parse(json['finishedAt'] as String),
      roomCode: json['roomCode'] as String?,
      maxPlayers: (json['maxPlayers'] as num?)?.toInt(),
      gameSettings: json['gameSettings'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$MatchRoomModelImplToJson(
        _$MatchRoomModelImpl instance) =>
    <String, dynamic>{
      'roomId': instance.roomId,
      'gameType': _$GameTypeEnumMap[instance.gameType]!,
      'mode': _$GameModeEnumMap[instance.mode]!,
      'players': instance.players,
      'state': _$RoomStateEnumMap[instance.state]!,
      'matchData': instance.matchData,
      'createdAt': instance.createdAt.toIso8601String(),
      'finishedAt': instance.finishedAt?.toIso8601String(),
      'roomCode': instance.roomCode,
      'maxPlayers': instance.maxPlayers,
      'gameSettings': instance.gameSettings,
    };

const _$GameTypeEnumMap = {
  GameType.chess: 'chess',
  GameType.ludo: 'ludo',
  GameType.carrom: 'carrom',
};

const _$GameModeEnumMap = {
  GameMode.online: 'online',
  GameMode.local: 'local',
  GameMode.ai: 'ai',
};

const _$RoomStateEnumMap = {
  RoomState.waiting: 'waiting',
  RoomState.running: 'running',
  RoomState.finished: 'finished',
  RoomState.paused: 'paused',
};

_$PlayerModelImpl _$$PlayerModelImplFromJson(Map<String, dynamic> json) =>
    _$PlayerModelImpl(
      userId: json['userId'] as String,
      seat: (json['seat'] as num).toInt(),
      ready: json['ready'] as bool? ?? false,
      isAI: json['isAI'] as bool? ?? false,
      displayName: json['displayName'] as String?,
      avatarUrl: json['avatarUrl'] as String?,
      rating: (json['rating'] as num?)?.toInt(),
      isHost: json['isHost'] as bool? ?? false,
      status: $enumDecodeNullable(_$PlayerStatusEnumMap, json['status']),
    );

Map<String, dynamic> _$$PlayerModelImplToJson(_$PlayerModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'seat': instance.seat,
      'ready': instance.ready,
      'isAI': instance.isAI,
      'displayName': instance.displayName,
      'avatarUrl': instance.avatarUrl,
      'rating': instance.rating,
      'isHost': instance.isHost,
      'status': _$PlayerStatusEnumMap[instance.status],
    };

const _$PlayerStatusEnumMap = {
  PlayerStatus.online: 'online',
  PlayerStatus.offline: 'offline',
  PlayerStatus.disconnected: 'disconnected',
};
