import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:meshidoko/route/routes.dart';

final _routerConfig = GoRouter(routes: $appRoutes);

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      routerConfig: _routerConfig,
      title: "メシドコ",
    );
  }
}
