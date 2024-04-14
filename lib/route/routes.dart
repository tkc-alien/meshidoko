import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meshidoko/module/condition/condition_modal.dart';
import 'package:meshidoko/module/home/home_screen.dart';
import 'package:meshidoko/route/bottom_sheet_page.dart';

part "gen/routes.g.dart";

/// ホーム画面
@TypedGoRoute<HomeRoute>(
  path: "/",
  routes: [TypedGoRoute<ConditionRoute>(path: "condition")],
)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const HomeScreen();
}

/// 条件設定画面
class ConditionRoute extends GoRouteData {
  const ConditionRoute();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return BottomSheetPage(
      builder: (context) => const ConditionModal(),
      maxHeight: MediaQuery.of(context).size.height * 0.7,
    );
  }
}
