// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReportModelImpl _$$ReportModelImplFromJson(Map<String, dynamic> json) =>
    _$ReportModelImpl(
      reportId: json['reportId'] as String,
      reportedUserId: json['reportedUserId'] as String,
      reporterUserId: json['reporterUserId'] as String,
      reason: json['reason'] as String,
      matchId: json['matchId'] as String?,
      details: json['details'] as String?,
      status: $enumDecodeNullable(_$ReportStatusEnumMap, json['status']) ??
          ReportStatus.open,
      createdAt: DateTime.parse(json['createdAt'] as String),
      reviewedAt: json['reviewedAt'] == null
          ? null
          : DateTime.parse(json['reviewedAt'] as String),
      reviewerId: json['reviewerId'] as String?,
      action: json['action'] as String?,
    );

Map<String, dynamic> _$$ReportModelImplToJson(_$ReportModelImpl instance) =>
    <String, dynamic>{
      'reportId': instance.reportId,
      'reportedUserId': instance.reportedUserId,
      'reporterUserId': instance.reporterUserId,
      'reason': instance.reason,
      'matchId': instance.matchId,
      'details': instance.details,
      'status': _$ReportStatusEnumMap[instance.status]!,
      'createdAt': instance.createdAt.toIso8601String(),
      'reviewedAt': instance.reviewedAt?.toIso8601String(),
      'reviewerId': instance.reviewerId,
      'action': instance.action,
    };

const _$ReportStatusEnumMap = {
  ReportStatus.open: 'open',
  ReportStatus.reviewed: 'reviewed',
  ReportStatus.actioned: 'actioned',
  ReportStatus.dismissed: 'dismissed',
};
