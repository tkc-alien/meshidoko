import 'package:freezed_annotation/freezed_annotation.dart';

part "gen/restaurant_entity.freezed.dart";
part "gen/restaurant_entity.g.dart";

/// レストラン情報
@freezed
class RestaurantEntity with _$RestaurantEntity {
  const factory RestaurantEntity({
    /// ID
    required String id,

    /// 店名
    required String name,

    /// 画像URL
    required String? imageUrl,

    /// 緯度
    required double latitude,

    /// 経度
    required double longitude,

    /// 指定地点からの距離
    required double distance,

    /// 予算(下限値)
    int? priceMin,

    /// 予算(上限値)
    int? priceMax,
  }) = _RestaurantEntity;

  factory RestaurantEntity.fromJson(Map<String, dynamic> json) =>
      _$RestaurantEntityFromJson(json);
}
