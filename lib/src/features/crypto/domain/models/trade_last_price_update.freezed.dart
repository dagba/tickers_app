// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trade_last_price_update.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TradeLastPriceUpdate {
  double get price => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  DateTime get timestamp => throw _privateConstructorUsedError;
  double get volume => throw _privateConstructorUsedError;

  /// Create a copy of TradeLastPriceUpdate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TradeLastPriceUpdateCopyWith<TradeLastPriceUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TradeLastPriceUpdateCopyWith<$Res> {
  factory $TradeLastPriceUpdateCopyWith(TradeLastPriceUpdate value,
          $Res Function(TradeLastPriceUpdate) then) =
      _$TradeLastPriceUpdateCopyWithImpl<$Res, TradeLastPriceUpdate>;
  @useResult
  $Res call({double price, String symbol, DateTime timestamp, double volume});
}

/// @nodoc
class _$TradeLastPriceUpdateCopyWithImpl<$Res,
        $Val extends TradeLastPriceUpdate>
    implements $TradeLastPriceUpdateCopyWith<$Res> {
  _$TradeLastPriceUpdateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TradeLastPriceUpdate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? symbol = null,
    Object? timestamp = null,
    Object? volume = null,
  }) {
    return _then(_value.copyWith(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TradeLastPriceUpdateImplCopyWith<$Res>
    implements $TradeLastPriceUpdateCopyWith<$Res> {
  factory _$$TradeLastPriceUpdateImplCopyWith(_$TradeLastPriceUpdateImpl value,
          $Res Function(_$TradeLastPriceUpdateImpl) then) =
      __$$TradeLastPriceUpdateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double price, String symbol, DateTime timestamp, double volume});
}

/// @nodoc
class __$$TradeLastPriceUpdateImplCopyWithImpl<$Res>
    extends _$TradeLastPriceUpdateCopyWithImpl<$Res, _$TradeLastPriceUpdateImpl>
    implements _$$TradeLastPriceUpdateImplCopyWith<$Res> {
  __$$TradeLastPriceUpdateImplCopyWithImpl(_$TradeLastPriceUpdateImpl _value,
      $Res Function(_$TradeLastPriceUpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TradeLastPriceUpdate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? symbol = null,
    Object? timestamp = null,
    Object? volume = null,
  }) {
    return _then(_$TradeLastPriceUpdateImpl(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$TradeLastPriceUpdateImpl implements _TradeLastPriceUpdate {
  const _$TradeLastPriceUpdateImpl(
      {required this.price,
      required this.symbol,
      required this.timestamp,
      required this.volume});

  @override
  final double price;
  @override
  final String symbol;
  @override
  final DateTime timestamp;
  @override
  final double volume;

  @override
  String toString() {
    return 'TradeLastPriceUpdate(price: $price, symbol: $symbol, timestamp: $timestamp, volume: $volume)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TradeLastPriceUpdateImpl &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.volume, volume) || other.volume == volume));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, price, symbol, timestamp, volume);

  /// Create a copy of TradeLastPriceUpdate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TradeLastPriceUpdateImplCopyWith<_$TradeLastPriceUpdateImpl>
      get copyWith =>
          __$$TradeLastPriceUpdateImplCopyWithImpl<_$TradeLastPriceUpdateImpl>(
              this, _$identity);
}

abstract class _TradeLastPriceUpdate implements TradeLastPriceUpdate {
  const factory _TradeLastPriceUpdate(
      {required final double price,
      required final String symbol,
      required final DateTime timestamp,
      required final double volume}) = _$TradeLastPriceUpdateImpl;

  @override
  double get price;
  @override
  String get symbol;
  @override
  DateTime get timestamp;
  @override
  double get volume;

  /// Create a copy of TradeLastPriceUpdate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TradeLastPriceUpdateImplCopyWith<_$TradeLastPriceUpdateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
