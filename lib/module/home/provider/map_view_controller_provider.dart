import 'package:meshidoko/view/component/app_map_view.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part "gen/map_view_controller_provider.g.dart";

/// マップビューのコントローラを管理するプロバイダ
@riverpod
AppMapViewController mapViewController(MapViewControllerRef ref) {
  return AppMapViewController();
}
