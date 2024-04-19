// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../restaurant_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RestaurantEntity _$RestaurantEntityFromJson(Map<String, dynamic> json) {
  return _RestaurantEntity.fromJson(json);
}

/// @nodoc
mixin _$RestaurantEntity {
  /// ID
  String get id => throw _privateConstructorUsedError;

  /// 地図URL
  String get mapUrl => throw _privateConstructorUsedError;

  /// 店名
  String get name => throw _privateConstructorUsedError;

  /// 画像URL
  String? get imageUrl => throw _privateConstructorUsedError;

  /// 緯度
  double get latitude => throw _privateConstructorUsedError;

  /// 経度
  double get longitude => throw _privateConstructorUsedError;

  /// 指定地点からの距離
  double get distance => throw _privateConstructorUsedError;

  /// 予算(下限値)
  int? get priceMin => throw _privateConstructorUsedError;

  /// 予算(上限値)
  int? get priceMax => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RestaurantEntityCopyWith<RestaurantEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantEntityCopyWith<$Res> {
  factory $RestaurantEntityCopyWith(
          RestaurantEntity value, $Res Function(RestaurantEntity) then) =
      _$RestaurantEntityCopyWithImpl<$Res, RestaurantEntity>;
  @useResult
  $Res call(
      {String id,
      String mapUrl,
      String name,
      String? imageUrl,
      double latitude,
      double longitude,
      double distance,
      int? priceMin,
      int? priceMax});
}

/// @nodoc
class _$RestaurantEntityCopyWithImpl<$Res, $Val extends RestaurantEntity>
    implements $RestaurantEntityCopyWith<$Res> {
  _$RestaurantEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? mapUrl = null,
    Object? name = null,
    Object? imageUrl = freezed,
    Object? latitude = null,
    Object? longitude = null,
    Object? distance = null,
    Object? priceMin = freezed,
    Object? priceMax = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      mapUrl: null == mapUrl
          ? _value.mapUrl
          : mapUrl // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      priceMin: freezed == priceMin
          ? _value.priceMin
          : priceMin // ignore: cast_nullable_to_non_nullable
              as int?,
      priceMax: freezed == priceMax
          ? _value.priceMax
          : priceMax // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RestaurantEntityImplCopyWith<$Res>
    implements $RestaurantEntityCopyWith<$Res> {
  factory _$$RestaurantEntityImplCopyWith(_$RestaurantEntityImpl value,
          $Res Function(_$RestaurantEntityImpl) then) =
      __$$RestaurantEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String mapUrl,
      String name,
      String? imageUrl,
      double latitude,
      double longitude,
      double distance,
      int? priceMin,
      int? priceMax});
}

/// @nodoc
class __$$RestaurantEntityImplCopyWithImpl<$Res>
    extends _$RestaurantEntityCopyWithImpl<$Res, _$RestaurantEntityImpl>
    implements _$$RestaurantEntityImplCopyWith<$Res> {
  __$$RestaurantEntityImplCopyWithImpl(_$RestaurantEntityImpl _value,
      $Res Function(_$RestaurantEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? mapUrl = null,
    Object? name = null,
    Object? imageUrl = freezed,
    Object? latitude = null,
    Object? longitude = null,
    Object? distance = null,
    Object? priceMin = freezed,
    Object? priceMax = freezed,
  }) {
    return _then(_$RestaurantEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      mapUrl: null == mapUrl
          ? _value.mapUrl
          : mapUrl // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double,
      priceMin: freezed == priceMin
          ? _value.priceMin
          : priceMin // ignore: cast_nullable_to_non_nullable
              as int?,
      priceMax: freezed == priceMax
          ? _value.priceMax
          : priceMax // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RestaurantEntityImpl implements _RestaurantEntity {
  const _$RestaurantEntityImpl(
      {required this.id,
      required this.mapUrl,
      required this.name,
      required this.imageUrl,
      required this.latitude,
      required this.longitude,
      required this.distance,
      this.priceMin,
      this.priceMax});

  factory _$RestaurantEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$RestaurantEntityImplFromJson(json);

  /// ID
  @override
  final String id;

  /// 地図URL
  @override
  final String mapUrl;

  /// 店名
  @override
  final String name;

  /// 画像URL
  @override
  final String? imageUrl;

  /// 緯度
  @override
  final double latitude;

  /// 経度
  @override
  final double longitude;

  /// 指定地点からの距離
  @override
  final double distance;

  /// 予算(下限値)
  @override
  final int? priceMin;

  /// 予算(上限値)
  @override
  final int? priceMax;

  @override
  String toString() {
    return 'RestaurantEntity(id: $id, mapUrl: $mapUrl, name: $name, imageUrl: $imageUrl, latitude: $latitude, longitude: $longitude, distance: $distance, priceMin: $priceMin, priceMax: $priceMax)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestaurantEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.mapUrl, mapUrl) || other.mapUrl == mapUrl) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.priceMin, priceMin) ||
                other.priceMin == priceMin) &&
            (identical(other.priceMax, priceMax) ||
                other.priceMax == priceMax));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, mapUrl, name, imageUrl,
      latitude, longitude, distance, priceMin, priceMax);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RestaurantEntityImplCopyWith<_$RestaurantEntityImpl> get copyWith =>
      __$$RestaurantEntityImplCopyWithImpl<_$RestaurantEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RestaurantEntityImplToJson(
      this,
    );
  }
}

abstract class _RestaurantEntity implements RestaurantEntity {
  const factory _RestaurantEntity(
      {required final String id,
      required final String mapUrl,
      required final String name,
      required final String? imageUrl,
      required final double latitude,
      required final double longitude,
      required final double distance,
      final int? priceMin,
      final int? priceMax}) = _$RestaurantEntityImpl;

  factory _RestaurantEntity.fromJson(Map<String, dynamic> json) =
      _$RestaurantEntityImpl.fromJson;

  @override

  /// ID
  String get id;
  @override

  /// 地図URL
  String get mapUrl;
  @override

  /// 店名
  String get name;
  @override

  /// 画像URL
  String? get imageUrl;
  @override

  /// 緯度
  double get latitude;
  @override

  /// 経度
  double get longitude;
  @override

  /// 指定地点からの距離
  double get distance;
  @override

  /// 予算(下限値)
  int? get priceMin;
  @override

  /// 予算(上限値)
  int? get priceMax;
  @override
  @JsonKey(ignore: true)
  _$$RestaurantEntityImplCopyWith<_$RestaurantEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
