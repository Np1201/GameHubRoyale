// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatMessageModelImpl _$$ChatMessageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatMessageModelImpl(
      messageId: json['messageId'] as String,
      roomId: json['roomId'] as String?,
      from: json['from'] as String,
      to: json['to'] as String?,
      text: json['text'] as String,
      type: $enumDecodeNullable(_$MessageTypeEnumMap, json['type']) ??
          MessageType.text,
      createdAt: DateTime.parse(json['createdAt'] as String),
      isFiltered: json['isFiltered'] as bool? ?? false,
      originalText: json['originalText'] as String?,
      metadata: json['metadata'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$ChatMessageModelImplToJson(
        _$ChatMessageModelImpl instance) =>
    <String, dynamic>{
      'messageId': instance.messageId,
      'roomId': instance.roomId,
      'from': instance.from,
      'to': instance.to,
      'text': instance.text,
      'type': _$MessageTypeEnumMap[instance.type]!,
      'createdAt': instance.createdAt.toIso8601String(),
      'isFiltered': instance.isFiltered,
      'originalText': instance.originalText,
      'metadata': instance.metadata,
    };

const _$MessageTypeEnumMap = {
  MessageType.text: 'text',
  MessageType.system: 'system',
  MessageType.media: 'media',
  MessageType.emoji: 'emoji',
  MessageType.sticker: 'sticker',
};
