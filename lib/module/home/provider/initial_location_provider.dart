import 'package:meshidoko/data/my_location_repository.dart';
import 'package:meshidoko/entity/location_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part "gen/initial_location_provider.g.dart";

/// マップの初期表示位置を取得するプロバイダ
@riverpod
Future<LocationEntity> initialLocation(InitialLocationRef ref) async {
  // 現在地を取得して返却する
  final repository = ref.watch(myLocationRepositoryProvider);
  return await repository.get();
}
