import 'package:meshidoko/entity/condition_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part "gen/current_condition_provider.g.dart";

/// 指定中の条件を管理するプロバイダ
@riverpod
class CurrentCondition extends _$CurrentCondition {
  @override
  ConditionEntity build() {
    // デフォルト条件
    return const ConditionEntity(
      distance: 300,
      price: null,
      alcohol: null,
    );
  }

  /// 距離条件を変更する
  void setDistance(int value) {
    state = state.copyWith(distance: value);
  }
}
