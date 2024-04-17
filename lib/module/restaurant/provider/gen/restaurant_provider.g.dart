// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../restaurant_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$restaurantHash() => r'5936db34f55bd41698fd5ea487b0e53523b12089';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [restaurant].
@ProviderFor(restaurant)
const restaurantProvider = RestaurantFamily();

/// See also [restaurant].
class RestaurantFamily extends Family<AsyncValue<RestaurantEntity>> {
  /// See also [restaurant].
  const RestaurantFamily();

  /// See also [restaurant].
  RestaurantProvider call({
    required ConditionEntity condition,
  }) {
    return RestaurantProvider(
      condition: condition,
    );
  }

  @override
  RestaurantProvider getProviderOverride(
    covariant RestaurantProvider provider,
  ) {
    return call(
      condition: provider.condition,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'restaurantProvider';
}

/// See also [restaurant].
class RestaurantProvider extends AutoDisposeFutureProvider<RestaurantEntity> {
  /// See also [restaurant].
  RestaurantProvider({
    required ConditionEntity condition,
  }) : this._internal(
          (ref) => restaurant(
            ref as RestaurantRef,
            condition: condition,
          ),
          from: restaurantProvider,
          name: r'restaurantProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$restaurantHash,
          dependencies: RestaurantFamily._dependencies,
          allTransitiveDependencies:
              RestaurantFamily._allTransitiveDependencies,
          condition: condition,
        );

  RestaurantProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.condition,
  }) : super.internal();

  final ConditionEntity condition;

  @override
  Override overrideWith(
    FutureOr<RestaurantEntity> Function(RestaurantRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: RestaurantProvider._internal(
        (ref) => create(ref as RestaurantRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        condition: condition,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<RestaurantEntity> createElement() {
    return _RestaurantProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RestaurantProvider && other.condition == condition;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, condition.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin RestaurantRef on AutoDisposeFutureProviderRef<RestaurantEntity> {
  /// The parameter `condition` of this provider.
  ConditionEntity get condition;
}

class _RestaurantProviderElement
    extends AutoDisposeFutureProviderElement<RestaurantEntity>
    with RestaurantRef {
  _RestaurantProviderElement(super.provider);

  @override
  ConditionEntity get condition => (origin as RestaurantProvider).condition;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
