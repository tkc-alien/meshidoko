import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:meshidoko/module/condition/component/condition_alcohol_field.dart';
import 'package:meshidoko/module/condition/component/condition_apply_button.dart';
import 'package:meshidoko/module/condition/component/condition_distance_field.dart';
import 'package:meshidoko/module/condition/component/condition_label.dart';
import 'package:meshidoko/module/condition/component/condition_price_field.dart';

/// 条件変更モーダル
class ConditionModal extends ConsumerWidget {
  const ConditionModal({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // 距離条件
          ConditionLabel(
            title: "距離",
            tooltip: "指定した地点からお店までの最大距離を指定できます。",
          ),
          ConditionDistanceField(),

          Gap(20),

          // 価格帯条件
          ConditionLabel(
            title: "価格帯",
            tooltip: "お店の価格帯を指定できます。",
          ),
          Gap(5),
          ConditionPriceField(),

          Gap(20),

          // アルコール提供条件
          ConditionLabel(
            title: "お酒",
            tooltip: "アルコールの提供がある店だけ選ばれるよう指定できます。",
          ),
          Gap(5),
          ConditionAlcoholField(),

          Gap(40),

          // 反映ボタン
          ConditionApplyButton(),
        ],
      ),
    );
  }
}
