import 'dart:async';

import 'package:meshidoko/data/restaurant_repository.dart';
import 'package:meshidoko/entity/condition_entity.dart';
import 'package:meshidoko/entity/restaurant_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part "gen/restaurant_provider.g.dart";

@riverpod
Future<RestaurantEntity> restaurant(
  RestaurantRef ref, {
  required ConditionEntity condition,
}) async {
  // リポジトリを取得する
  final repository = ref.watch(restaurantRepositoryProvider);
  // レストラン情報を取得して返却する
  return repository.get(condition: condition);
}
