// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trade_last_price_update_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TradeLastPriceUpdateDto _$TradeLastPriceUpdateDtoFromJson(
    Map<String, dynamic> json) {
  return _TradeLastPriceUpdateDto.fromJson(json);
}

/// @nodoc
mixin _$TradeLastPriceUpdateDto {
  @JsonKey(name: 'p')
  double get price => throw _privateConstructorUsedError;
  @JsonKey(name: 's')
  String get symbol => throw _privateConstructorUsedError;
  @JsonKey(name: 't')
  int get timestamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'v')
  double get volume => throw _privateConstructorUsedError;

  /// Serializes this TradeLastPriceUpdateDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TradeLastPriceUpdateDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TradeLastPriceUpdateDtoCopyWith<TradeLastPriceUpdateDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TradeLastPriceUpdateDtoCopyWith<$Res> {
  factory $TradeLastPriceUpdateDtoCopyWith(TradeLastPriceUpdateDto value,
          $Res Function(TradeLastPriceUpdateDto) then) =
      _$TradeLastPriceUpdateDtoCopyWithImpl<$Res, TradeLastPriceUpdateDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'p') double price,
      @JsonKey(name: 's') String symbol,
      @JsonKey(name: 't') int timestamp,
      @JsonKey(name: 'v') double volume});
}

/// @nodoc
class _$TradeLastPriceUpdateDtoCopyWithImpl<$Res,
        $Val extends TradeLastPriceUpdateDto>
    implements $TradeLastPriceUpdateDtoCopyWith<$Res> {
  _$TradeLastPriceUpdateDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TradeLastPriceUpdateDto
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
              as int,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TradeLastPriceUpdateDtoImplCopyWith<$Res>
    implements $TradeLastPriceUpdateDtoCopyWith<$Res> {
  factory _$$TradeLastPriceUpdateDtoImplCopyWith(
          _$TradeLastPriceUpdateDtoImpl value,
          $Res Function(_$TradeLastPriceUpdateDtoImpl) then) =
      __$$TradeLastPriceUpdateDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'p') double price,
      @JsonKey(name: 's') String symbol,
      @JsonKey(name: 't') int timestamp,
      @JsonKey(name: 'v') double volume});
}

/// @nodoc
class __$$TradeLastPriceUpdateDtoImplCopyWithImpl<$Res>
    extends _$TradeLastPriceUpdateDtoCopyWithImpl<$Res,
        _$TradeLastPriceUpdateDtoImpl>
    implements _$$TradeLastPriceUpdateDtoImplCopyWith<$Res> {
  __$$TradeLastPriceUpdateDtoImplCopyWithImpl(
      _$TradeLastPriceUpdateDtoImpl _value,
      $Res Function(_$TradeLastPriceUpdateDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of TradeLastPriceUpdateDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? symbol = null,
    Object? timestamp = null,
    Object? volume = null,
  }) {
    return _then(_$TradeLastPriceUpdateDtoImpl(
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
              as int,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TradeLastPriceUpdateDtoImpl implements _TradeLastPriceUpdateDto {
  const _$TradeLastPriceUpdateDtoImpl(
      {@JsonKey(name: 'p') required this.price,
      @JsonKey(name: 's') required this.symbol,
      @JsonKey(name: 't') required this.timestamp,
      @JsonKey(name: 'v') required this.volume});

  factory _$TradeLastPriceUpdateDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TradeLastPriceUpdateDtoImplFromJson(json);

  @override
  @JsonKey(name: 'p')
  final double price;
  @override
  @JsonKey(name: 's')
  final String symbol;
  @override
  @JsonKey(name: 't')
  final int timestamp;
  @override
  @JsonKey(name: 'v')
  final double volume;

  @override
  String toString() {
    return 'TradeLastPriceUpdateDto(price: $price, symbol: $symbol, timestamp: $timestamp, volume: $volume)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TradeLastPriceUpdateDtoImpl &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.volume, volume) || other.volume == volume));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, price, symbol, timestamp, volume);

  /// Create a copy of TradeLastPriceUpdateDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TradeLastPriceUpdateDtoImplCopyWith<_$TradeLastPriceUpdateDtoImpl>
      get copyWith => __$$TradeLastPriceUpdateDtoImplCopyWithImpl<
          _$TradeLastPriceUpdateDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TradeLastPriceUpdateDtoImplToJson(
      this,
    );
  }
}

abstract class _TradeLastPriceUpdateDto implements TradeLastPriceUpdateDto {
  const factory _TradeLastPriceUpdateDto(
          {@JsonKey(name: 'p') required final double price,
          @JsonKey(name: 's') required final String symbol,
          @JsonKey(name: 't') required final int timestamp,
          @JsonKey(name: 'v') required final double volume}) =
      _$TradeLastPriceUpdateDtoImpl;

  factory _TradeLastPriceUpdateDto.fromJson(Map<String, dynamic> json) =
      _$TradeLastPriceUpdateDtoImpl.fromJson;

  @override
  @JsonKey(name: 'p')
  double get price;
  @override
  @JsonKey(name: 's')
  String get symbol;
  @override
  @JsonKey(name: 't')
  int get timestamp;
  @override
  @JsonKey(name: 'v')
  double get volume;

  /// Create a copy of TradeLastPriceUpdateDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TradeLastPriceUpdateDtoImplCopyWith<_$TradeLastPriceUpdateDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
