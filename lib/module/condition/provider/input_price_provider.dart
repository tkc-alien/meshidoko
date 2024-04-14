import 'package:meshidoko/enum/price_condition_type.dart';
import 'package:meshidoko/provider/current_condition_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part "gen/input_price_provider.g.dart";

@riverpod
class InputPrice extends _$InputPrice {
  @override
  Set<PriceConditionType> build() {
    return ref.watch(currentConditionProvider).price;
  }

  void setValue(Set<PriceConditionType> value) {
    state = value;
  }
}
