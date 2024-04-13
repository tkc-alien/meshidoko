import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meshidoko/module/home/home_screen.dart';

part "gen/routes.g.dart";

/// ホーム画面
@TypedGoRoute<HomeRoute>(path: "/")
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const HomeScreen();
}
