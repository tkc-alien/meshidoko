import 'package:geolocator/geolocator.dart';
import 'package:meshidoko/entity/location_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part "gen/initial_location_provider.g.dart";

/// マップの初期表示位置を取得するプロバイダ
@riverpod
Future<LocationEntity> initialLocation(InitialLocationRef ref) async {
  // パーミッションを確認する
  final permission = await Geolocator.checkPermission();
  // 位置情報へのアクセスが許可されていない場合、権限を要求する
  if (permission == LocationPermission.denied) {
    await Geolocator.requestPermission();
  }

  // 現在位置を取得する
  final currentPosition = await Geolocator.getCurrentPosition();

  // 変換して返却する
  return LocationEntity(
    lat: currentPosition.latitude,
    lng: currentPosition.longitude,
  );
}
