// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crypto_symbol_subscribe_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CryptoSymbolSubscribeMessage {
  String get symbol => throw _privateConstructorUsedError;

  /// Create a copy of CryptoSymbolSubscribeMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CryptoSymbolSubscribeMessageCopyWith<CryptoSymbolSubscribeMessage>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptoSymbolSubscribeMessageCopyWith<$Res> {
  factory $CryptoSymbolSubscribeMessageCopyWith(
          CryptoSymbolSubscribeMessage value,
          $Res Function(CryptoSymbolSubscribeMessage) then) =
      _$CryptoSymbolSubscribeMessageCopyWithImpl<$Res,
          CryptoSymbolSubscribeMessage>;
  @useResult
  $Res call({String symbol});
}

/// @nodoc
class _$CryptoSymbolSubscribeMessageCopyWithImpl<$Res,
        $Val extends CryptoSymbolSubscribeMessage>
    implements $CryptoSymbolSubscribeMessageCopyWith<$Res> {
  _$CryptoSymbolSubscribeMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CryptoSymbolSubscribeMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
  }) {
    return _then(_value.copyWith(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CryptoSymbolSubscribeMessageImplCopyWith<$Res>
    implements $CryptoSymbolSubscribeMessageCopyWith<$Res> {
  factory _$$CryptoSymbolSubscribeMessageImplCopyWith(
          _$CryptoSymbolSubscribeMessageImpl value,
          $Res Function(_$CryptoSymbolSubscribeMessageImpl) then) =
      __$$CryptoSymbolSubscribeMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String symbol});
}

/// @nodoc
class __$$CryptoSymbolSubscribeMessageImplCopyWithImpl<$Res>
    extends _$CryptoSymbolSubscribeMessageCopyWithImpl<$Res,
        _$CryptoSymbolSubscribeMessageImpl>
    implements _$$CryptoSymbolSubscribeMessageImplCopyWith<$Res> {
  __$$CryptoSymbolSubscribeMessageImplCopyWithImpl(
      _$CryptoSymbolSubscribeMessageImpl _value,
      $Res Function(_$CryptoSymbolSubscribeMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of CryptoSymbolSubscribeMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
  }) {
    return _then(_$CryptoSymbolSubscribeMessageImpl(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CryptoSymbolSubscribeMessageImpl
    implements _CryptoSymbolSubscribeMessage {
  const _$CryptoSymbolSubscribeMessageImpl({required this.symbol});

  @override
  final String symbol;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CryptoSymbolSubscribeMessageImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol));
  }

  @override
  int get hashCode => Object.hash(runtimeType, symbol);

  /// Create a copy of CryptoSymbolSubscribeMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CryptoSymbolSubscribeMessageImplCopyWith<
          _$CryptoSymbolSubscribeMessageImpl>
      get copyWith => __$$CryptoSymbolSubscribeMessageImplCopyWithImpl<
          _$CryptoSymbolSubscribeMessageImpl>(this, _$identity);
}

abstract class _CryptoSymbolSubscribeMessage
    implements CryptoSymbolSubscribeMessage {
  const factory _CryptoSymbolSubscribeMessage({required final String symbol}) =
      _$CryptoSymbolSubscribeMessageImpl;

  @override
  String get symbol;

  /// Create a copy of CryptoSymbolSubscribeMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CryptoSymbolSubscribeMessageImplCopyWith<
          _$CryptoSymbolSubscribeMessageImpl>
      get copyWith => throw _privateConstructorUsedError;
}
