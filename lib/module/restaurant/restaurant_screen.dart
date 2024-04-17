import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:meshidoko/entity/restaurant_entity.dart';
import 'package:meshidoko/module/restaurant/component/restaurant_image_view.dart';
import 'package:meshidoko/module/restaurant/component/restaurant_info_label.dart';
import 'package:meshidoko/module/restaurant/component/restaurant_name_label.dart';
import 'package:meshidoko/module/restaurant/component/restaurant_open_map_button.dart';
import 'package:meshidoko/module/restaurant/provider/restaurant_provider.dart';
import 'package:meshidoko/provider/current_condition_provider.dart';

/// レストラン画面
class RestaurantScreen extends ConsumerWidget {
  const RestaurantScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final condition = ref.watch(currentConditionProvider);
    final restaurantAsync = ref.watch(restaurantProvider(condition: condition));

    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: AppBar(),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: restaurantAsync.when(
              data: (restaurant) => ListView(
                children: [
                  // 店舗画像
                  RestaurantImageView(imageUrl: restaurant.imageUrl),

                  const Gap(20),

                  // 店名
                  RestaurantNameLabel(name: restaurant.name),

                  const Gap(20),

                  const Align(
                    alignment: Alignment.center,
                    child: RestaurantOpenMapButton(),
                  ),

                  const Gap(20),

                  const Divider(height: 1),

                  const Gap(20),

                  // 距離ラベル
                  RestaurantInfoLabel(
                    icon: Icons.location_pin,
                    label: "指定地点から ${restaurant.distance.floor()}m",
                  ),

                  const Gap(20),

                  // 予算ラベル
                  RestaurantInfoLabel(
                    icon: Icons.monetization_on,
                    label: _priceLabel(restaurant),
                  ),
                ],
              ),
              error: (error, _) => _buildError(context, error),
              loading: () => _buildLoading(context),
            ),
          ),
        ),
      ),
    );
  }

  /// 予算ラベルの文言を生成する
  String _priceLabel(RestaurantEntity restaurant) {
    final prices = [restaurant.priceMin, restaurant.priceMax].whereType<int>();
    if (prices.isNotEmpty) {
      return "およそ ${prices.join(" ~ ")}円";
    } else {
      return "予算情報なし";
    }
  }

  /// エラー発生時のUIを描画する
  Widget _buildError(BuildContext context, Object error) {
    debugPrint("ERROR: $error");
    return const Center(
      child: Column(
        children: [
          Icon(Icons.error_outline, size: 40),
          Text("エラーが発生しました。\nアプリを再起動して再度お試しください。")
        ],
      ),
    );
  }

  /// 読み込み中のUIを描画する
  Widget _buildLoading(BuildContext context) {
    return const Center(
      child: SizedBox.square(
        dimension: 200,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned.fill(
              child: CircularProgressIndicator(
                color: Colors.orange,
                strokeWidth: 6,
              ),
            ),
            Positioned(
              width: 130,
              height: 130,
              child: FittedBox(
                child: Icon(
                  Icons.restaurant,
                  color: Colors.orange,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
