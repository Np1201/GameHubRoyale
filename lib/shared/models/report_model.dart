import 'package:freezed_annotation/freezed_annotation.dart';

part 'report_model.freezed.dart';
part 'report_model.g.dart';

@freezed
class ReportModel with _$ReportModel {
  const factory ReportModel({
    required String reportId,
    required String reportedUserId,
    required String reporterUserId,
    required String reason,
    String? matchId,
    String? details,
    @Default(ReportStatus.open) ReportStatus status,
    required DateTime createdAt,
    DateTime? reviewedAt,
    String? reviewerId,
    String? action,
  }) = _ReportModel;

  factory ReportModel.fromJson(Map<String, dynamic> json) =>
      _$ReportModelFromJson(json);
}

enum ReportStatus {
  @JsonValue('open')
  open,
  @JsonValue('reviewed')
  reviewed,
  @JsonValue('actioned')
  actioned,
  @JsonValue('dismissed')
  dismissed,
}

enum ReportReason {
  @JsonValue('inappropriate_language')
  inappropriateLanguage,
  @JsonValue('cheating')
  cheating,
  @JsonValue('harassment')
  harassment,
  @JsonValue('spam')
  spam,
  @JsonValue('other')
  other,
}
