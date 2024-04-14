// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../condition_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ConditionEntity {
  /// 距離条件
  int get distance => throw _privateConstructorUsedError;

  /// 価格帯条件
  Set<PriceConditionType> get price => throw _privateConstructorUsedError;

  /// アルコール提供条件
  AlcoholConditionType? get alcohol => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConditionEntityCopyWith<ConditionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConditionEntityCopyWith<$Res> {
  factory $ConditionEntityCopyWith(
          ConditionEntity value, $Res Function(ConditionEntity) then) =
      _$ConditionEntityCopyWithImpl<$Res, ConditionEntity>;
  @useResult
  $Res call(
      {int distance,
      Set<PriceConditionType> price,
      AlcoholConditionType? alcohol});
}

/// @nodoc
class _$ConditionEntityCopyWithImpl<$Res, $Val extends ConditionEntity>
    implements $ConditionEntityCopyWith<$Res> {
  _$ConditionEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distance = null,
    Object? price = null,
    Object? alcohol = freezed,
  }) {
    return _then(_value.copyWith(
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Set<PriceConditionType>,
      alcohol: freezed == alcohol
          ? _value.alcohol
          : alcohol // ignore: cast_nullable_to_non_nullable
              as AlcoholConditionType?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConditionEntityImplCopyWith<$Res>
    implements $ConditionEntityCopyWith<$Res> {
  factory _$$ConditionEntityImplCopyWith(_$ConditionEntityImpl value,
          $Res Function(_$ConditionEntityImpl) then) =
      __$$ConditionEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int distance,
      Set<PriceConditionType> price,
      AlcoholConditionType? alcohol});
}

/// @nodoc
class __$$ConditionEntityImplCopyWithImpl<$Res>
    extends _$ConditionEntityCopyWithImpl<$Res, _$ConditionEntityImpl>
    implements _$$ConditionEntityImplCopyWith<$Res> {
  __$$ConditionEntityImplCopyWithImpl(
      _$ConditionEntityImpl _value, $Res Function(_$ConditionEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? distance = null,
    Object? price = null,
    Object? alcohol = freezed,
  }) {
    return _then(_$ConditionEntityImpl(
      distance: null == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value._price
          : price // ignore: cast_nullable_to_non_nullable
              as Set<PriceConditionType>,
      alcohol: freezed == alcohol
          ? _value.alcohol
          : alcohol // ignore: cast_nullable_to_non_nullable
              as AlcoholConditionType?,
    ));
  }
}

/// @nodoc

class _$ConditionEntityImpl implements _ConditionEntity {
  const _$ConditionEntityImpl(
      {required this.distance,
      required final Set<PriceConditionType> price,
      required this.alcohol})
      : _price = price;

  /// 距離条件
  @override
  final int distance;

  /// 価格帯条件
  final Set<PriceConditionType> _price;

  /// 価格帯条件
  @override
  Set<PriceConditionType> get price {
    if (_price is EqualUnmodifiableSetView) return _price;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_price);
  }

  /// アルコール提供条件
  @override
  final AlcoholConditionType? alcohol;

  @override
  String toString() {
    return 'ConditionEntity(distance: $distance, price: $price, alcohol: $alcohol)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConditionEntityImpl &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            const DeepCollectionEquality().equals(other._price, _price) &&
            (identical(other.alcohol, alcohol) || other.alcohol == alcohol));
  }

  @override
  int get hashCode => Object.hash(runtimeType, distance,
      const DeepCollectionEquality().hash(_price), alcohol);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConditionEntityImplCopyWith<_$ConditionEntityImpl> get copyWith =>
      __$$ConditionEntityImplCopyWithImpl<_$ConditionEntityImpl>(
          this, _$identity);
}

abstract class _ConditionEntity implements ConditionEntity {
  const factory _ConditionEntity(
      {required final int distance,
      required final Set<PriceConditionType> price,
      required final AlcoholConditionType? alcohol}) = _$ConditionEntityImpl;

  @override

  /// 距離条件
  int get distance;
  @override

  /// 価格帯条件
  Set<PriceConditionType> get price;
  @override

  /// アルコール提供条件
  AlcoholConditionType? get alcohol;
  @override
  @JsonKey(ignore: true)
  _$$ConditionEntityImplCopyWith<_$ConditionEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
