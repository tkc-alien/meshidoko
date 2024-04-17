import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RestaurantOpenMapButton extends ConsumerWidget {
  const RestaurantOpenMapButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FilledButton.tonalIcon(
      onPressed: () => onPressed(context, ref),
      icon: const Icon(Icons.map),
      label: const Text("地図アプリで開く"),
    );
  }

  void onPressed(BuildContext context, WidgetRef ref) {
    // TODO implement
  }
}
