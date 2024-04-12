import 'package:freezed_annotation/freezed_annotation.dart';

part "gen/location_entity.freezed.dart";

@freezed
class LocationEntity with _$LocationEntity {
  const factory LocationEntity({
    required double lat,
    required double lng,
  }) = _LocationEntity;
}
