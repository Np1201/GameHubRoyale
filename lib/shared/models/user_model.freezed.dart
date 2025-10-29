// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  String get userId => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  AuthProvider get provider => throw _privateConstructorUsedError;
  int get coins => throw _privateConstructorUsedError;
  UserRating get rating => throw _privateConstructorUsedError;
  List<String> get friends => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get lastActiveAt => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  bool get isBanned => throw _privateConstructorUsedError;
  bool get isVIP => throw _privateConstructorUsedError;
  DateTime? get vipExpiryDate => throw _privateConstructorUsedError;

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {String userId,
      String displayName,
      String? avatarUrl,
      String? email,
      AuthProvider provider,
      int coins,
      UserRating rating,
      List<String> friends,
      DateTime createdAt,
      DateTime lastActiveAt,
      String? country,
      bool isBanned,
      bool isVIP,
      DateTime? vipExpiryDate});

  $UserRatingCopyWith<$Res> get rating;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? displayName = null,
    Object? avatarUrl = freezed,
    Object? email = freezed,
    Object? provider = null,
    Object? coins = null,
    Object? rating = null,
    Object? friends = null,
    Object? createdAt = null,
    Object? lastActiveAt = null,
    Object? country = freezed,
    Object? isBanned = null,
    Object? isVIP = null,
    Object? vipExpiryDate = freezed,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as AuthProvider,
      coins: null == coins
          ? _value.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as UserRating,
      friends: null == friends
          ? _value.friends
          : friends // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastActiveAt: null == lastActiveAt
          ? _value.lastActiveAt
          : lastActiveAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      isBanned: null == isBanned
          ? _value.isBanned
          : isBanned // ignore: cast_nullable_to_non_nullable
              as bool,
      isVIP: null == isVIP
          ? _value.isVIP
          : isVIP // ignore: cast_nullable_to_non_nullable
              as bool,
      vipExpiryDate: freezed == vipExpiryDate
          ? _value.vipExpiryDate
          : vipExpiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserRatingCopyWith<$Res> get rating {
    return $UserRatingCopyWith<$Res>(_value.rating, (value) {
      return _then(_value.copyWith(rating: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String displayName,
      String? avatarUrl,
      String? email,
      AuthProvider provider,
      int coins,
      UserRating rating,
      List<String> friends,
      DateTime createdAt,
      DateTime lastActiveAt,
      String? country,
      bool isBanned,
      bool isVIP,
      DateTime? vipExpiryDate});

  @override
  $UserRatingCopyWith<$Res> get rating;
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? displayName = null,
    Object? avatarUrl = freezed,
    Object? email = freezed,
    Object? provider = null,
    Object? coins = null,
    Object? rating = null,
    Object? friends = null,
    Object? createdAt = null,
    Object? lastActiveAt = null,
    Object? country = freezed,
    Object? isBanned = null,
    Object? isVIP = null,
    Object? vipExpiryDate = freezed,
  }) {
    return _then(_$UserModelImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as AuthProvider,
      coins: null == coins
          ? _value.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as int,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as UserRating,
      friends: null == friends
          ? _value._friends
          : friends // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lastActiveAt: null == lastActiveAt
          ? _value.lastActiveAt
          : lastActiveAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      isBanned: null == isBanned
          ? _value.isBanned
          : isBanned // ignore: cast_nullable_to_non_nullable
              as bool,
      isVIP: null == isVIP
          ? _value.isVIP
          : isVIP // ignore: cast_nullable_to_non_nullable
              as bool,
      vipExpiryDate: freezed == vipExpiryDate
          ? _value.vipExpiryDate
          : vipExpiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl(
      {required this.userId,
      required this.displayName,
      this.avatarUrl,
      this.email,
      required this.provider,
      this.coins = 0,
      required this.rating,
      final List<String> friends = const [],
      required this.createdAt,
      required this.lastActiveAt,
      this.country,
      this.isBanned = false,
      this.isVIP = false,
      this.vipExpiryDate})
      : _friends = friends;

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  final String userId;
  @override
  final String displayName;
  @override
  final String? avatarUrl;
  @override
  final String? email;
  @override
  final AuthProvider provider;
  @override
  @JsonKey()
  final int coins;
  @override
  final UserRating rating;
  final List<String> _friends;
  @override
  @JsonKey()
  List<String> get friends {
    if (_friends is EqualUnmodifiableListView) return _friends;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_friends);
  }

  @override
  final DateTime createdAt;
  @override
  final DateTime lastActiveAt;
  @override
  final String? country;
  @override
  @JsonKey()
  final bool isBanned;
  @override
  @JsonKey()
  final bool isVIP;
  @override
  final DateTime? vipExpiryDate;

  @override
  String toString() {
    return 'UserModel(userId: $userId, displayName: $displayName, avatarUrl: $avatarUrl, email: $email, provider: $provider, coins: $coins, rating: $rating, friends: $friends, createdAt: $createdAt, lastActiveAt: $lastActiveAt, country: $country, isBanned: $isBanned, isVIP: $isVIP, vipExpiryDate: $vipExpiryDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.coins, coins) || other.coins == coins) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            const DeepCollectionEquality().equals(other._friends, _friends) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.lastActiveAt, lastActiveAt) ||
                other.lastActiveAt == lastActiveAt) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.isBanned, isBanned) ||
                other.isBanned == isBanned) &&
            (identical(other.isVIP, isVIP) || other.isVIP == isVIP) &&
            (identical(other.vipExpiryDate, vipExpiryDate) ||
                other.vipExpiryDate == vipExpiryDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      displayName,
      avatarUrl,
      email,
      provider,
      coins,
      rating,
      const DeepCollectionEquality().hash(_friends),
      createdAt,
      lastActiveAt,
      country,
      isBanned,
      isVIP,
      vipExpiryDate);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {required final String userId,
      required final String displayName,
      final String? avatarUrl,
      final String? email,
      required final AuthProvider provider,
      final int coins,
      required final UserRating rating,
      final List<String> friends,
      required final DateTime createdAt,
      required final DateTime lastActiveAt,
      final String? country,
      final bool isBanned,
      final bool isVIP,
      final DateTime? vipExpiryDate}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  String get userId;
  @override
  String get displayName;
  @override
  String? get avatarUrl;
  @override
  String? get email;
  @override
  AuthProvider get provider;
  @override
  int get coins;
  @override
  UserRating get rating;
  @override
  List<String> get friends;
  @override
  DateTime get createdAt;
  @override
  DateTime get lastActiveAt;
  @override
  String? get country;
  @override
  bool get isBanned;
  @override
  bool get isVIP;
  @override
  DateTime? get vipExpiryDate;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserRating _$UserRatingFromJson(Map<String, dynamic> json) {
  return _UserRating.fromJson(json);
}

/// @nodoc
mixin _$UserRating {
  int get chess => throw _privateConstructorUsedError;
  int get carrom => throw _privateConstructorUsedError;
  int get ludo => throw _privateConstructorUsedError;

  /// Serializes this UserRating to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserRating
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserRatingCopyWith<UserRating> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRatingCopyWith<$Res> {
  factory $UserRatingCopyWith(
          UserRating value, $Res Function(UserRating) then) =
      _$UserRatingCopyWithImpl<$Res, UserRating>;
  @useResult
  $Res call({int chess, int carrom, int ludo});
}

/// @nodoc
class _$UserRatingCopyWithImpl<$Res, $Val extends UserRating>
    implements $UserRatingCopyWith<$Res> {
  _$UserRatingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserRating
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chess = null,
    Object? carrom = null,
    Object? ludo = null,
  }) {
    return _then(_value.copyWith(
      chess: null == chess
          ? _value.chess
          : chess // ignore: cast_nullable_to_non_nullable
              as int,
      carrom: null == carrom
          ? _value.carrom
          : carrom // ignore: cast_nullable_to_non_nullable
              as int,
      ludo: null == ludo
          ? _value.ludo
          : ludo // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserRatingImplCopyWith<$Res>
    implements $UserRatingCopyWith<$Res> {
  factory _$$UserRatingImplCopyWith(
          _$UserRatingImpl value, $Res Function(_$UserRatingImpl) then) =
      __$$UserRatingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int chess, int carrom, int ludo});
}

/// @nodoc
class __$$UserRatingImplCopyWithImpl<$Res>
    extends _$UserRatingCopyWithImpl<$Res, _$UserRatingImpl>
    implements _$$UserRatingImplCopyWith<$Res> {
  __$$UserRatingImplCopyWithImpl(
      _$UserRatingImpl _value, $Res Function(_$UserRatingImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserRating
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chess = null,
    Object? carrom = null,
    Object? ludo = null,
  }) {
    return _then(_$UserRatingImpl(
      chess: null == chess
          ? _value.chess
          : chess // ignore: cast_nullable_to_non_nullable
              as int,
      carrom: null == carrom
          ? _value.carrom
          : carrom // ignore: cast_nullable_to_non_nullable
              as int,
      ludo: null == ludo
          ? _value.ludo
          : ludo // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserRatingImpl implements _UserRating {
  const _$UserRatingImpl(
      {this.chess = 1200, this.carrom = 1000, this.ludo = 1000});

  factory _$UserRatingImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserRatingImplFromJson(json);

  @override
  @JsonKey()
  final int chess;
  @override
  @JsonKey()
  final int carrom;
  @override
  @JsonKey()
  final int ludo;

  @override
  String toString() {
    return 'UserRating(chess: $chess, carrom: $carrom, ludo: $ludo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRatingImpl &&
            (identical(other.chess, chess) || other.chess == chess) &&
            (identical(other.carrom, carrom) || other.carrom == carrom) &&
            (identical(other.ludo, ludo) || other.ludo == ludo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, chess, carrom, ludo);

  /// Create a copy of UserRating
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRatingImplCopyWith<_$UserRatingImpl> get copyWith =>
      __$$UserRatingImplCopyWithImpl<_$UserRatingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserRatingImplToJson(
      this,
    );
  }
}

abstract class _UserRating implements UserRating {
  const factory _UserRating(
      {final int chess, final int carrom, final int ludo}) = _$UserRatingImpl;

  factory _UserRating.fromJson(Map<String, dynamic> json) =
      _$UserRatingImpl.fromJson;

  @override
  int get chess;
  @override
  int get carrom;
  @override
  int get ludo;

  /// Create a copy of UserRating
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserRatingImplCopyWith<_$UserRatingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
