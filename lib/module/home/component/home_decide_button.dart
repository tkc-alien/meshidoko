import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// ホーム画面：決定ボタン
class HomeDecideButton extends ConsumerWidget {
  const HomeDecideButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FilledButton(
      onPressed: () => onPressed(context, ref),
      style: FilledButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 16,
        ),
      ),
      child: const Column(
        children: [
          Icon(Icons.restaurant, size: 28),
          Text(
            "決める",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  /// ボタンタップ時のアクション
  void onPressed(BuildContext context, WidgetRef ref) {
    // TODO implement
  }
}
