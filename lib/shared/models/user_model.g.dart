// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      userId: json['userId'] as String,
      displayName: json['displayName'] as String,
      avatarUrl: json['avatarUrl'] as String?,
      email: json['email'] as String?,
      provider: $enumDecode(_$AuthProviderEnumMap, json['provider']),
      coins: (json['coins'] as num?)?.toInt() ?? 0,
      rating: UserRating.fromJson(json['rating'] as Map<String, dynamic>),
      friends: (json['friends'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      createdAt: DateTime.parse(json['createdAt'] as String),
      lastActiveAt: DateTime.parse(json['lastActiveAt'] as String),
      country: json['country'] as String?,
      isBanned: json['isBanned'] as bool? ?? false,
      isVIP: json['isVIP'] as bool? ?? false,
      vipExpiryDate: json['vipExpiryDate'] == null
          ? null
          : DateTime.parse(json['vipExpiryDate'] as String),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'displayName': instance.displayName,
      'avatarUrl': instance.avatarUrl,
      'email': instance.email,
      'provider': _$AuthProviderEnumMap[instance.provider]!,
      'coins': instance.coins,
      'rating': instance.rating,
      'friends': instance.friends,
      'createdAt': instance.createdAt.toIso8601String(),
      'lastActiveAt': instance.lastActiveAt.toIso8601String(),
      'country': instance.country,
      'isBanned': instance.isBanned,
      'isVIP': instance.isVIP,
      'vipExpiryDate': instance.vipExpiryDate?.toIso8601String(),
    };

const _$AuthProviderEnumMap = {
  AuthProvider.google: 'google',
  AuthProvider.apple: 'apple',
  AuthProvider.facebook: 'facebook',
  AuthProvider.guest: 'guest',
};

_$UserRatingImpl _$$UserRatingImplFromJson(Map<String, dynamic> json) =>
    _$UserRatingImpl(
      chess: (json['chess'] as num?)?.toInt() ?? 1200,
      carrom: (json['carrom'] as num?)?.toInt() ?? 1000,
      ludo: (json['ludo'] as num?)?.toInt() ?? 1000,
    );

Map<String, dynamic> _$$UserRatingImplToJson(_$UserRatingImpl instance) =>
    <String, dynamic>{
      'chess': instance.chess,
      'carrom': instance.carrom,
      'ludo': instance.ludo,
    };
