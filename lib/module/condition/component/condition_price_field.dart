import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meshidoko/enum/price_condition_type.dart';
import 'package:meshidoko/module/condition/provider/input_price_provider.dart';

class ConditionPriceField extends ConsumerWidget {
  const ConditionPriceField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SegmentedButton(
      multiSelectionEnabled: true,
      emptySelectionAllowed: true,
      segments: const [
        ButtonSegment(
          value: PriceConditionType.inexpensive,
          label: Text("安め"),
        ),
        ButtonSegment(
          value: PriceConditionType.moderate,
          label: Text("普通"),
        ),
        ButtonSegment(
          value: PriceConditionType.expensive,
          label: Text("高め"),
        ),
        ButtonSegment(
          value: PriceConditionType.veryExpensive,
          label: Text("高級"),
        ),
      ],
      selected: ref.watch(inputPriceProvider),
      onSelectionChanged: ref.read(inputPriceProvider.notifier).setValue,
    );
  }
}
