import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meshidoko/entity/location_entity.dart';
import 'package:meshidoko/module/home/provider/initial_location_provider.dart';
import 'package:meshidoko/view/component/app_map_view.dart';

class HomeMapView extends ConsumerWidget {
  const HomeMapView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final initialLocationAsync = ref.watch(initialLocationProvider);

    return initialLocationAsync.when(
      data: (location) => _buildData(context, location),
      error: (error, _) => _buildError(context, error),
      loading: () => _buildLoading(context),
    );
  }

  Widget _buildData(BuildContext context, LocationEntity location) {
    return AppMapView(initialLocation: location);
  }

  Widget _buildError(BuildContext context, Object error) {
    debugPrint("ERROR: $error");
    return const Center(
      child: Text("現在地を取得できませんでした。"),
    );
  }

  Widget _buildLoading(BuildContext context) {
    return const SizedBox.shrink();
  }
}
