import 'package:meshidoko/provider/current_condition_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part "gen/input_distance_provider.g.dart";

/// 距離条件の入力値のプロバイダ
@riverpod
class InputDistance extends _$InputDistance {
  @override
  double build() {
    return ref.watch(currentConditionProvider).distance.toDouble();
  }

  /// 値を変更する
  void setValue(double value) {
    state = value;
  }
}
