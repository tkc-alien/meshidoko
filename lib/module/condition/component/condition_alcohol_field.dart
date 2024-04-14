import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meshidoko/enum/alcohol_condition_type.dart';
import 'package:meshidoko/module/condition/provider/input_alcohol_provider.dart';

class ConditionAlcoholField extends ConsumerWidget {
  const ConditionAlcoholField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SegmentedButton(
      multiSelectionEnabled: false,
      emptySelectionAllowed: true,
      segments: const [
        ButtonSegment(
          value: AlcoholConditionType.notRequired,
          label: Text("いらない"),
        ),
        ButtonSegment(
          value: AlcoholConditionType.required,
          label: Text("飲みたい"),
        )
      ],
      selected: {ref.watch(inputAlcoholProvider)},
      onSelectionChanged: (selected) {
        ref.read(inputAlcoholProvider.notifier).setValue(selected.firstOrNull);
      },
    );
  }
}
