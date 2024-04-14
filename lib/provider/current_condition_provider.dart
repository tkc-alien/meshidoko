import 'package:meshidoko/entity/condition_entity.dart';
import 'package:meshidoko/enum/alcohol_condition_type.dart';
import 'package:meshidoko/enum/price_condition_type.dart';
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
      price: {},
      alcohol: null,
    );
  }

  /// 条件を変更する
  void setValue(ConditionEntity value) => state = value;

  /// 距離条件を変更する
  void setDistance(int value) {
    state = state.copyWith(distance: value);
  }

  /// 価格帯条件を変更する
  void setPrice(Set<PriceConditionType> value) {
    state = state.copyWith(price: value);
  }

  /// アルコール提供条件を変更する
  void setAlcohol(AlcoholConditionType? value) {
    state = state.copyWith(alcohol: value);
  }
}
