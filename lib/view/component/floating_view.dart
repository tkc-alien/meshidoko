import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const _kDefaultBorderRadius = BorderRadius.all(Radius.circular(32));

/// 周囲に薄い影をつけるコンポーネント
///
/// マップビューに重ねたコンポーネントの視認性を上げるために使用する。
class FloatingView extends ConsumerWidget {
  const FloatingView({
    super.key,
    required this.child,
    this.borderRadius = _kDefaultBorderRadius,
  });

  final Widget child;
  final BorderRadius borderRadius;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 8,
          ),
        ],
      ),
      child: child,
    );
  }
}
