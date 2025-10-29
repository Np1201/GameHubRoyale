// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReportModel _$ReportModelFromJson(Map<String, dynamic> json) {
  return _ReportModel.fromJson(json);
}

/// @nodoc
mixin _$ReportModel {
  String get reportId => throw _privateConstructorUsedError;
  String get reportedUserId => throw _privateConstructorUsedError;
  String get reporterUserId => throw _privateConstructorUsedError;
  String get reason => throw _privateConstructorUsedError;
  String? get matchId => throw _privateConstructorUsedError;
  String? get details => throw _privateConstructorUsedError;
  ReportStatus get status => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get reviewedAt => throw _privateConstructorUsedError;
  String? get reviewerId => throw _privateConstructorUsedError;
  String? get action => throw _privateConstructorUsedError;

  /// Serializes this ReportModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReportModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReportModelCopyWith<ReportModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportModelCopyWith<$Res> {
  factory $ReportModelCopyWith(
          ReportModel value, $Res Function(ReportModel) then) =
      _$ReportModelCopyWithImpl<$Res, ReportModel>;
  @useResult
  $Res call(
      {String reportId,
      String reportedUserId,
      String reporterUserId,
      String reason,
      String? matchId,
      String? details,
      ReportStatus status,
      DateTime createdAt,
      DateTime? reviewedAt,
      String? reviewerId,
      String? action});
}

/// @nodoc
class _$ReportModelCopyWithImpl<$Res, $Val extends ReportModel>
    implements $ReportModelCopyWith<$Res> {
  _$ReportModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReportModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reportId = null,
    Object? reportedUserId = null,
    Object? reporterUserId = null,
    Object? reason = null,
    Object? matchId = freezed,
    Object? details = freezed,
    Object? status = null,
    Object? createdAt = null,
    Object? reviewedAt = freezed,
    Object? reviewerId = freezed,
    Object? action = freezed,
  }) {
    return _then(_value.copyWith(
      reportId: null == reportId
          ? _value.reportId
          : reportId // ignore: cast_nullable_to_non_nullable
              as String,
      reportedUserId: null == reportedUserId
          ? _value.reportedUserId
          : reportedUserId // ignore: cast_nullable_to_non_nullable
              as String,
      reporterUserId: null == reporterUserId
          ? _value.reporterUserId
          : reporterUserId // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      matchId: freezed == matchId
          ? _value.matchId
          : matchId // ignore: cast_nullable_to_non_nullable
              as String?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ReportStatus,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      reviewedAt: freezed == reviewedAt
          ? _value.reviewedAt
          : reviewedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reviewerId: freezed == reviewerId
          ? _value.reviewerId
          : reviewerId // ignore: cast_nullable_to_non_nullable
              as String?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReportModelImplCopyWith<$Res>
    implements $ReportModelCopyWith<$Res> {
  factory _$$ReportModelImplCopyWith(
          _$ReportModelImpl value, $Res Function(_$ReportModelImpl) then) =
      __$$ReportModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String reportId,
      String reportedUserId,
      String reporterUserId,
      String reason,
      String? matchId,
      String? details,
      ReportStatus status,
      DateTime createdAt,
      DateTime? reviewedAt,
      String? reviewerId,
      String? action});
}

/// @nodoc
class __$$ReportModelImplCopyWithImpl<$Res>
    extends _$ReportModelCopyWithImpl<$Res, _$ReportModelImpl>
    implements _$$ReportModelImplCopyWith<$Res> {
  __$$ReportModelImplCopyWithImpl(
      _$ReportModelImpl _value, $Res Function(_$ReportModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReportModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reportId = null,
    Object? reportedUserId = null,
    Object? reporterUserId = null,
    Object? reason = null,
    Object? matchId = freezed,
    Object? details = freezed,
    Object? status = null,
    Object? createdAt = null,
    Object? reviewedAt = freezed,
    Object? reviewerId = freezed,
    Object? action = freezed,
  }) {
    return _then(_$ReportModelImpl(
      reportId: null == reportId
          ? _value.reportId
          : reportId // ignore: cast_nullable_to_non_nullable
              as String,
      reportedUserId: null == reportedUserId
          ? _value.reportedUserId
          : reportedUserId // ignore: cast_nullable_to_non_nullable
              as String,
      reporterUserId: null == reporterUserId
          ? _value.reporterUserId
          : reporterUserId // ignore: cast_nullable_to_non_nullable
              as String,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      matchId: freezed == matchId
          ? _value.matchId
          : matchId // ignore: cast_nullable_to_non_nullable
              as String?,
      details: freezed == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ReportStatus,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      reviewedAt: freezed == reviewedAt
          ? _value.reviewedAt
          : reviewedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reviewerId: freezed == reviewerId
          ? _value.reviewerId
          : reviewerId // ignore: cast_nullable_to_non_nullable
              as String?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReportModelImpl implements _ReportModel {
  const _$ReportModelImpl(
      {required this.reportId,
      required this.reportedUserId,
      required this.reporterUserId,
      required this.reason,
      this.matchId,
      this.details,
      this.status = ReportStatus.open,
      required this.createdAt,
      this.reviewedAt,
      this.reviewerId,
      this.action});

  factory _$ReportModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReportModelImplFromJson(json);

  @override
  final String reportId;
  @override
  final String reportedUserId;
  @override
  final String reporterUserId;
  @override
  final String reason;
  @override
  final String? matchId;
  @override
  final String? details;
  @override
  @JsonKey()
  final ReportStatus status;
  @override
  final DateTime createdAt;
  @override
  final DateTime? reviewedAt;
  @override
  final String? reviewerId;
  @override
  final String? action;

  @override
  String toString() {
    return 'ReportModel(reportId: $reportId, reportedUserId: $reportedUserId, reporterUserId: $reporterUserId, reason: $reason, matchId: $matchId, details: $details, status: $status, createdAt: $createdAt, reviewedAt: $reviewedAt, reviewerId: $reviewerId, action: $action)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportModelImpl &&
            (identical(other.reportId, reportId) ||
                other.reportId == reportId) &&
            (identical(other.reportedUserId, reportedUserId) ||
                other.reportedUserId == reportedUserId) &&
            (identical(other.reporterUserId, reporterUserId) ||
                other.reporterUserId == reporterUserId) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.matchId, matchId) || other.matchId == matchId) &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.reviewedAt, reviewedAt) ||
                other.reviewedAt == reviewedAt) &&
            (identical(other.reviewerId, reviewerId) ||
                other.reviewerId == reviewerId) &&
            (identical(other.action, action) || other.action == action));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      reportId,
      reportedUserId,
      reporterUserId,
      reason,
      matchId,
      details,
      status,
      createdAt,
      reviewedAt,
      reviewerId,
      action);

  /// Create a copy of ReportModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportModelImplCopyWith<_$ReportModelImpl> get copyWith =>
      __$$ReportModelImplCopyWithImpl<_$ReportModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReportModelImplToJson(
      this,
    );
  }
}

abstract class _ReportModel implements ReportModel {
  const factory _ReportModel(
      {required final String reportId,
      required final String reportedUserId,
      required final String reporterUserId,
      required final String reason,
      final String? matchId,
      final String? details,
      final ReportStatus status,
      required final DateTime createdAt,
      final DateTime? reviewedAt,
      final String? reviewerId,
      final String? action}) = _$ReportModelImpl;

  factory _ReportModel.fromJson(Map<String, dynamic> json) =
      _$ReportModelImpl.fromJson;

  @override
  String get reportId;
  @override
  String get reportedUserId;
  @override
  String get reporterUserId;
  @override
  String get reason;
  @override
  String? get matchId;
  @override
  String? get details;
  @override
  ReportStatus get status;
  @override
  DateTime get createdAt;
  @override
  DateTime? get reviewedAt;
  @override
  String? get reviewerId;
  @override
  String? get action;

  /// Create a copy of ReportModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReportModelImplCopyWith<_$ReportModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
