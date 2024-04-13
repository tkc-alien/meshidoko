import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meshidoko/entity/location_entity.dart';
import 'package:meshidoko/module/home/provider/initial_location_provider.dart';
import 'package:meshidoko/module/home/provider/map_view_controller_provider.dart';
import 'package:meshidoko/provider/current_condition_provider.dart';
import 'package:meshidoko/provider/selected_location_provider.dart';
import 'package:meshidoko/view/component/app_map_view.dart';

/// ホーム画面：マップビュー
class HomeMapView extends ConsumerWidget {
  const HomeMapView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // マップビューの初期位置を取得する
    final myLocationAsync = ref.watch(initialLocationProvider);

    return myLocationAsync.when(
      data: (location) {
        // 選択中の位置情報を取得する
        final selectedLocation = ref.watch(selectedLocationProvider);
        // 選択中の距離条件を取得する
        final distance = ref.watch(
          currentConditionProvider.select((value) => value.distance),
        );

        // マップに表示するサークルを作成する
        List<AppMapViewCircle>? circles;
        if (selectedLocation != null) {
          circles = [
            AppMapViewCircle(
              center: selectedLocation,
              radius: distance.toDouble(),
            ),
          ];
        }

        // マップビューを描画する
        return AppMapView(
          controller: ref.watch(mapViewControllerProvider),
          initialLocation: location,
          circles: circles,
          onTap: (location) => onTapMapView(context, ref, location),
        );
      },
      error: (error, _) => _buildError(context, error),
      loading: () => _buildLoading(context),
    );
  }

  /// エラー発生時のUIを描画する
  Widget _buildError(BuildContext context, Object error) {
    debugPrint("ERROR: $error");
    return const Center(
      child: Text("現在地を取得できませんでした。"),
    );
  }

  /// 読み込み中のUIを描画する
  Widget _buildLoading(BuildContext context) {
    return const SizedBox.shrink();
  }

  /// マップビュータップ時のアクション
  void onTapMapView(
    BuildContext context,
    WidgetRef ref,
    LocationEntity location,
  ) {
    // 選択中の位置情報を更新する
    ref.read(selectedLocationProvider.notifier).setLocation(location);
  }
}
