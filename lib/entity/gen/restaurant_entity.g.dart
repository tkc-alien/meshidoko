// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../restaurant_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RestaurantEntityImpl _$$RestaurantEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$RestaurantEntityImpl(
      id: json['id'] as String,
      mapUrl: json['mapUrl'] as String,
      name: json['name'] as String,
      imageUrl: json['imageUrl'] as String?,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      distance: (json['distance'] as num).toDouble(),
      priceMin: json['priceMin'] as int?,
      priceMax: json['priceMax'] as int?,
    );

Map<String, dynamic> _$$RestaurantEntityImplToJson(
        _$RestaurantEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'mapUrl': instance.mapUrl,
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'distance': instance.distance,
      'priceMin': instance.priceMin,
      'priceMax': instance.priceMax,
    };
