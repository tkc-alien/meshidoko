import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meshidoko/module/home/provider/map_view_controller_provider.dart';
import 'package:meshidoko/module/home/provider/selected_location_provider.dart';

/// ホーム画面：選択地点ボタン
class HomeSelectedLocationButton extends ConsumerWidget {
  const HomeSelectedLocationButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton.filledTonal(
      tooltip: "選択地点に戻る",
      onPressed: () => onPressed(context, ref),
      icon: const Icon(Icons.location_pin),
    );
  }

  /// ボタンタップ時のアクション
  void onPressed(BuildContext context, WidgetRef ref) async {
    // 表示中のマップビューのコントローラを取得する
    final controller = ref.read(mapViewControllerProvider);

    // 選択地点を取得する
    final selectedLocation = ref.read(selectedLocationProvider);
    if (selectedLocation != null) {
      // マップビューを選択地点までスクロールする
      controller.animateTo(selectedLocation);
    }
  }
}
