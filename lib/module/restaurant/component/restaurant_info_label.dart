import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

/// レストラン画面：汎用のレストラン情報ラベル
class RestaurantInfoLabel extends ConsumerWidget {
  const RestaurantInfoLabel({
    super.key,
    required this.icon,
    required this.label,
  });

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        Icon(icon),
        const Gap(8),
        Text(label, style: Theme.of(context).textTheme.bodyLarge),
      ],
    );
  }
}
