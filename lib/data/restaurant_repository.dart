import 'package:meshidoko/data/mock/mock_restaurant.dart';
import 'package:meshidoko/entity/condition_entity.dart';
import 'package:meshidoko/entity/restaurant_entity.dart';
import 'package:meshidoko/provider/use_mock_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part "gen/restaurant_repository.g.dart";

/// レストランリポジトリのプロバイダ
@riverpod
RestaurantRepository restaurantRepository(RestaurantRepositoryRef ref) {
  return ref.watch(useMockProvider)
      ? RestaurantRepositoryMock()
      : RestaurantRepositoryImpl();
}

/// レストランリポジトリ
abstract class RestaurantRepository {
  /// 取得する
  Future<RestaurantEntity> get({required ConditionEntity condition});
}

class RestaurantRepositoryMock implements RestaurantRepository {
  @override
  Future<RestaurantEntity> get({required ConditionEntity condition}) async {
    await Future.delayed(const Duration(milliseconds: 2000));
    return RestaurantEntity.fromJson(MockRestaurant.get);
  }
}

class RestaurantRepositoryImpl implements RestaurantRepository {
  @override
  Future<RestaurantEntity> get({required ConditionEntity condition}) {
    // TODO: implement get
    throw UnimplementedError();
  }
}
