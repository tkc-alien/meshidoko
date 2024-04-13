import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:meshidoko/entity/location_entity.dart';

/// マップビュー操作用コントローラ
class AppMapViewController {
  AppMapViewController();

  /// ライブラリ操作用のコントローラ
  final Completer<GoogleMapController> _internal =
      Completer<GoogleMapController>();

  /// マップを指定位置までスクロール
  Future<void> animateTo(LocationEntity to) async {
    final controller = await _internal.future;
    await controller.animateCamera(CameraUpdate.newLatLng(
      LatLng(to.lat, to.lng),
    ));
  }

  /// ズームイン
  Future<void> zoomIn() async {
    final controller = await _internal.future;
    await controller.animateCamera(CameraUpdate.zoomIn());
  }

  /// ズームアウト
  Future<void> zoomOut() async {
    final controller = await _internal.future;
    await controller.animateCamera(CameraUpdate.zoomOut());
  }

  /// 破棄
  Future<void> dispose() async {
    final controller = await _internal.future;
    controller.dispose();
  }
}

/// マップビューマーカー
class AppMapViewMarker {
  const AppMapViewMarker({
    required this.location,
    this.onTap,
  });

  /// 位置情報
  final LocationEntity location;

  /// タップイベントのコールバック
  final void Function()? onTap;

  /// 一意のIDを生成
  String _createId() => "m@${location.lat},${location.lng}";

  /// ライブラリクラスへ変換
  Marker _convert() {
    return Marker(
      markerId: MarkerId(_createId()),
      position: LatLng(location.lat, location.lng),
      onTap: onTap,
    );
  }
}

/// マップビューサークル
class AppMapViewCircle {
  const AppMapViewCircle({
    required this.center,
    required this.radius,
    this.fillColor = const Color(0x1A44D1FF),
    this.strokeColor = const Color(0xff5398ff),
  });

  /// 中心の位置情報
  final LocationEntity center;

  /// 半径(m)
  final double radius;

  /// サークル内の色
  final Color fillColor;

  /// ストロークの色
  final Color strokeColor;

  /// 一意のIDを生成
  String _createId() => "c@${center.lat},${center.lng}@$radius";

  /// ライブラリクラスへ変換
  Circle _convert() {
    return Circle(
      circleId: CircleId(_createId()),
      center: LatLng(center.lat, center.lng),
      radius: radius,
      fillColor: fillColor,
      strokeColor: strokeColor,
      strokeWidth: 1,
    );
  }
}

/// マップビュー
class AppMapView extends ConsumerWidget {
  const AppMapView({
    super.key,
    this.controller,
    required this.initialLocation,
    this.markers,
    this.circles,
  });

  /// マップ操作用コントローラ
  final AppMapViewController? controller;

  /// 初期表示位置
  final LocationEntity initialLocation;

  /// マップ上に表示するマーカーのリスト
  final List<AppMapViewMarker>? markers;

  /// マップ上に表示するサークルのリスト
  final List<AppMapViewCircle>? circles;

  /// 初期表示位置をライブラリクラスへ変換
  CameraPosition get _initialCameraPosition {
    return CameraPosition(
      target: LatLng(
        initialLocation.lat,
        initialLocation.lng,
      ),
      zoom: 16,
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GoogleMap(
      initialCameraPosition: _initialCameraPosition,
      mapType: MapType.normal,
      myLocationEnabled: true,
      myLocationButtonEnabled: false,
      onMapCreated: controller?._internal.complete,
      markers: markers?.map((e) => e._convert()).toSet() ?? {},
      circles: circles?.map((e) => e._convert()).toSet() ?? {},
    );
  }
}
