import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_message_model.freezed.dart';
part 'chat_message_model.g.dart';

@freezed
class ChatMessageModel with _$ChatMessageModel {
  const factory ChatMessageModel({
    required String messageId,
    String? roomId, // null for DMs
    required String from,
    String? to, // for DMs
    required String text,
    @Default(MessageType.text) MessageType type,
    required DateTime createdAt,
    @Default(false) bool isFiltered,
    String? originalText, // if filtered
    Map<String, dynamic>? metadata,
  }) = _ChatMessageModel;

  factory ChatMessageModel.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageModelFromJson(json);
}

enum MessageType {
  @JsonValue('text')
  text,
  @JsonValue('system')
  system,
  @JsonValue('media')
  media,
  @JsonValue('emoji')
  emoji,
  @JsonValue('sticker')
  sticker,
}
