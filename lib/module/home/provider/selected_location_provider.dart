import 'package:meshidoko/entity/location_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part "gen/selected_location_provider.g.dart";

/// 選択中の位置情報を管理するプロバイダ
@riverpod
class SelectedLocation extends _$SelectedLocation {
  @override
  LocationEntity? build() {
    return null;
  }

  /// 選択中の位置情報を変更する
  void setLocation(LocationEntity? value) {
    state = value;
  }
}
