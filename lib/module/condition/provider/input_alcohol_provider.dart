import 'package:meshidoko/enum/alcohol_condition_type.dart';
import 'package:meshidoko/provider/current_condition_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part "gen/input_alcohol_provider.g.dart";

@riverpod
class InputAlcohol extends _$InputAlcohol {
  @override
  AlcoholConditionType? build() {
    return ref.watch(currentConditionProvider).alcohol;
  }

  void setValue(AlcoholConditionType? value) => state = value;
}
