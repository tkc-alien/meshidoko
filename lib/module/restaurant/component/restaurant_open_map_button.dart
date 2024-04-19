import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

class RestaurantOpenMapButton extends ConsumerWidget {
  const RestaurantOpenMapButton({super.key, required this.mapUrl});

  final String mapUrl;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FilledButton.tonalIcon(
      onPressed: () => onPressed(context, ref),
      icon: const Icon(Icons.map),
      label: const Text("地図アプリで開く"),
    );
  }

  /// ボタンタップ時のアクション
  void onPressed(BuildContext context, WidgetRef ref) {
    // レストランの地図URLを開く
    launchUrl(
      Uri.parse(mapUrl),
      mode: LaunchMode.externalApplication,
    );
  }
}
