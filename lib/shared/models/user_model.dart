import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:equatable/equatable.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String userId,
    required String displayName,
    String? avatarUrl,
    String? email,
    required AuthProvider provider,
    @Default(0) int coins,
    required UserRating rating,
    @Default([]) List<String> friends,
    required DateTime createdAt,
    required DateTime lastActiveAt,
    String? country,
    @Default(false) bool isBanned,
    @Default(false) bool isVIP,
    DateTime? vipExpiryDate,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

@freezed
class UserRating with _$UserRating {
  const factory UserRating({
    @Default(1200) int chess,
    @Default(1000) int carrom,
    @Default(1000) int ludo,
  }) = _UserRating;

  factory UserRating.fromJson(Map<String, dynamic> json) =>
      _$UserRatingFromJson(json);
}

enum AuthProvider {
  @JsonValue('google')
  google,
  @JsonValue('apple')
  apple,
  @JsonValue('facebook')
  facebook,
  @JsonValue('guest')
  guest,
}
