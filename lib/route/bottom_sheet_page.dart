import 'package:flutter/material.dart';

class BottomSheetPage<T> extends Page<T> {
  final WidgetBuilder builder;
  final double? minHeight;
  final double? maxHeight;

  const BottomSheetPage({
    required this.builder,
    this.minHeight,
    this.maxHeight,
  });

  @override
  Route<T> createRoute(BuildContext context) {
    return ModalBottomSheetRoute(
      settings: this,
      builder: builder,
      isScrollControlled: true,
      constraints: BoxConstraints(maxHeight: maxHeight ?? double.infinity),
      useSafeArea: true,
      showDragHandle: true,
      elevation: 2.0,
    );
  }
}
