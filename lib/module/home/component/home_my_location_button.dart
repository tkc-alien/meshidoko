import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meshidoko/data/my_location_repository.dart';
import 'package:meshidoko/module/home/provider/map_view_controller_provider.dart';

/// ホーム画面：現在地ボタン
class HomeMyLocationButton extends ConsumerWidget {
  const HomeMyLocationButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton.filledTonal(
      tooltip: "現在地に戻る",
      onPressed: () => onPressed(context, ref),
      icon: const Icon(Icons.my_location),
    );
  }

  /// ボタンタップ時のアクション
  void onPressed(BuildContext context, WidgetRef ref) async {
    // 表示中のマップビューのコントローラを取得する
    final controller = ref.read(mapViewControllerProvider);

    AsyncValue.guard<void>(() async {
      // 現在地を取得する
      final myLocation = await ref.watch(myLocationRepositoryProvider).get();
      // マップビューを現在地までスクロールする
      controller.animateTo(myLocation);
    });
  }
}
