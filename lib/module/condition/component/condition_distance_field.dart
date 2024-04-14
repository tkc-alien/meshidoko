import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meshidoko/module/condition/provider/input_distance_provider.dart';

const _min = 100.0;
const _max = 3000.0;

/// 条件変更モーダル：距離条件フィールド
class ConditionDistanceField extends ConsumerWidget {
  const ConditionDistanceField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Slider(
      value: ref.watch(inputDistanceProvider),
      onChanged: ref.read(inputDistanceProvider.notifier).setValue,
      min: _min,
      max: _max,
      divisions: ((_max - _min) / 100).floor(),
      label: "${ref.watch(inputDistanceProvider).round()}m",
    );
  }
}
