// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../initial_location_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$initialLocationHash() => r'71b82948159f8cb66a00df36c134d70c9f5ca08b';

/// マップの初期表示位置を取得するプロバイダ
///
/// Copied from [initialLocation].
@ProviderFor(initialLocation)
final initialLocationProvider =
    AutoDisposeFutureProvider<LocationEntity>.internal(
  initialLocation,
  name: r'initialLocationProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$initialLocationHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef InitialLocationRef = AutoDisposeFutureProviderRef<LocationEntity>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
