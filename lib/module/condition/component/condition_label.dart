import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

/// 条件変更モーダル：ヘルプ付き項目ラベル
class ConditionLabel extends ConsumerWidget {
  const ConditionLabel({
    super.key,
    required this.title,
    required this.tooltip,
  });

  final String title;
  final String tooltip;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        // 項目名
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium,
        ),

        const Gap(20),

        // ヘルプ
        Tooltip(
          message: tooltip,
          triggerMode: TooltipTriggerMode.tap,
          child: const Icon(
            Icons.help_outline,
            size: 18,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
