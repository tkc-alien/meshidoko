import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// レストラン画面：店舗画像
class RestaurantImageView extends ConsumerWidget {
  const RestaurantImageView({super.key, required this.imageUrl});

  final String? imageUrl;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 描画するコンテンツを決定する
    final Widget child;
    final imageUrl = this.imageUrl;
    if (imageUrl != null) {
      // 画像URLがある場合は、画像を描画する
      child = CachedNetworkImage(
        imageUrl: imageUrl,
        fit: BoxFit.cover,
        errorWidget: (context, _, error) => _buildError(context, error),
      );
    } else {
      // 画像URLがない場合は、アイコンを表示する
      child = Ink(
        color: Colors.grey,
        child: const Icon(
          Icons.hide_image_outlined,
          size: 40,
        ),
      );
    }

    return AspectRatio(
      aspectRatio: 4 / 3,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        child: child,
      ),
    );
  }

  /// エラー発生時のUIを描画する
  Widget _buildError(BuildContext context, Object error) {
    debugPrint("ERROR: $error");
    return Ink(
      color: Colors.grey,
      child: const Icon(
        Icons.error_outline,
        size: 40,
      ),
    );
  }
}
