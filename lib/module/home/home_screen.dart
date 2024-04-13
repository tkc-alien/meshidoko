import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meshidoko/module/home/component/home_condition_view.dart';
import 'package:meshidoko/module/home/component/home_decide_button.dart';
import 'package:meshidoko/module/home/component/home_map_view.dart';
import 'package:meshidoko/module/home/component/home_my_location_button.dart';
import 'package:meshidoko/module/home/component/home_selected_location_button.dart';
import 'package:meshidoko/view/component/floating_view.dart';

/// ホーム画面
class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      body: Stack(
        alignment: Alignment.center,
        fit: StackFit.expand,
        children: [
          // メインのマップビュー
          HomeMapView(),

          // 条件表示ビュー
          Positioned(
            top: 12,
            width: 200,
            child: SafeArea(
              child: FloatingView(
                child: HomeConditionView(),
              ),
            ),
          ),

          // 下部ボタン群
          Positioned(
            left: 20,
            right: 20,
            bottom: 20,
            height: 64,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // 選択地点ボタン
                FloatingView(child: HomeSelectedLocationButton()),

                // 決定ボタン
                SizedBox(
                  width: 180,
                  child: FloatingView(
                    child: HomeDecideButton(),
                  ),
                ),

                // 現在地ボタン
                FloatingView(child: HomeMyLocationButton()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
