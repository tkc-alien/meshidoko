import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meshidoko/enum/alcohol_condition_type.dart';
import 'package:meshidoko/enum/price_condition_type.dart';

part "gen/condition_entity.freezed.dart";

/// 条件情報
@freezed
class ConditionEntity with _$ConditionEntity {
  const factory ConditionEntity({
    /// 距離条件
    required int distance,

    /// 価格帯条件
    required PriceConditionType? price,

    /// アルコール提供条件
    required AlcoholConditionType? alcohol,
  }) = _ConditionEntity;
}
