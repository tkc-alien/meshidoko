import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:meshidoko/provider/current_condition_provider.dart';
import 'package:meshidoko/route/routes.dart';

/// ホーム画面：条件表示コンポーネント
class HomeConditionView extends ConsumerWidget {
  const HomeConditionView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 48,
      padding: const EdgeInsets.all(4),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(24),
        ),
      ),
      child: Row(
        children: [
          // 距離条件ラベル
          Expanded(
            child: Text(
              "${ref.watch(currentConditionProvider.select((value) => value.distance))}m",
              textAlign: TextAlign.end,
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
          ),

          // 区切り線
          const VerticalDivider(
            width: 24,
            indent: 6,
            endIndent: 6,
          ),

          // 価格帯条件アイコン
          _buildConditionIcon(
            context,
            isActive: ref.watch(
              currentConditionProvider.select(
                (value) => value.price.isNotEmpty,
              ),
            ),
            activeIcon: Icons.monetization_on_outlined,
            inactiveIcon: Icons.monetization_on_outlined,
          ),

          const Gap(4),

          // アルコール提供条件アイコン
          _buildConditionIcon(
            context,
            isActive: ref.watch(
              currentConditionProvider.select((value) => value.alcohol != null),
            ),
            activeIcon: Icons.sports_bar_outlined,
            inactiveIcon: Icons.sports_bar_outlined,
          ),

          const Gap(4),

          // 変更モーダル開くボタン
          SizedBox.square(
            dimension: 40,
            child: IconButton(
              onPressed: () => onPressedOpen(context, ref),
              icon: const Icon(Icons.arrow_drop_down),
            ),
          ),
        ],
      ),
    );
  }

  /// 条件アイコンを描画する
  Widget _buildConditionIcon(
    BuildContext context, {
    required bool isActive,
    required IconData activeIcon,
    required IconData inactiveIcon,
  }) {
    return Icon(
      isActive ? activeIcon : inactiveIcon,
      color: isActive ? Theme.of(context).primaryColor : Colors.grey.shade200,
    );
  }

  /// ボタンタップ時のアクション
  void onPressedOpen(BuildContext context, WidgetRef ref) {
    // 条件変更モーダルを表示する
    const ConditionRoute().push(context);
  }
}
