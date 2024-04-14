import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:meshidoko/entity/condition_entity.dart';
import 'package:meshidoko/module/condition/provider/input_alcohol_provider.dart';
import 'package:meshidoko/module/condition/provider/input_distance_provider.dart';
import 'package:meshidoko/module/condition/provider/input_price_provider.dart';
import 'package:meshidoko/provider/current_condition_provider.dart';

/// 条件変更モーダル：反映ボタン
class ConditionApplyButton extends ConsumerWidget {
  const ConditionApplyButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FilledButton.icon(
      onPressed: () => onPressed(context, ref),
      icon: const Icon(Icons.done),
      label: const Text("条件を変更する"),
    );
  }

  /// ボタンタップ時のアクション
  void onPressed(BuildContext context, WidgetRef ref) {
    // 入力値を取得
    final distance = ref.read(inputDistanceProvider);
    final price = ref.read(inputPriceProvider);
    final alcohol = ref.read(inputAlcoholProvider);
    // 値を更新する
    ref.read(currentConditionProvider.notifier).setValue(
          ConditionEntity(
            distance: distance.floor(),
            price: price,
            alcohol: alcohol,
          ),
        );
    // モーダルを閉じる
    context.pop();
  }
}
