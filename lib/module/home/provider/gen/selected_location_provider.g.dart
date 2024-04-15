// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../selected_location_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$selectedLocationHash() => r'f89106d504693c9139e246ac95cb77e64a9d1a4c';

/// 選択中の位置情報を管理するプロバイダ
///
/// Copied from [SelectedLocation].
@ProviderFor(SelectedLocation)
final selectedLocationProvider =
    AutoDisposeNotifierProvider<SelectedLocation, LocationEntity?>.internal(
  SelectedLocation.new,
  name: r'selectedLocationProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$selectedLocationHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SelectedLocation = AutoDisposeNotifier<LocationEntity?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
