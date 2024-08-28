// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crypto_symbol.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CryptoSymbol {
  String get description => throw _privateConstructorUsedError;
  String get displaySymbol => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;

  /// Create a copy of CryptoSymbol
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CryptoSymbolCopyWith<CryptoSymbol> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptoSymbolCopyWith<$Res> {
  factory $CryptoSymbolCopyWith(
          CryptoSymbol value, $Res Function(CryptoSymbol) then) =
      _$CryptoSymbolCopyWithImpl<$Res, CryptoSymbol>;
  @useResult
  $Res call({String description, String displaySymbol, String symbol});
}

/// @nodoc
class _$CryptoSymbolCopyWithImpl<$Res, $Val extends CryptoSymbol>
    implements $CryptoSymbolCopyWith<$Res> {
  _$CryptoSymbolCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CryptoSymbol
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? displaySymbol = null,
    Object? symbol = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      displaySymbol: null == displaySymbol
          ? _value.displaySymbol
          : displaySymbol // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CryptoSymbolImplCopyWith<$Res>
    implements $CryptoSymbolCopyWith<$Res> {
  factory _$$CryptoSymbolImplCopyWith(
          _$CryptoSymbolImpl value, $Res Function(_$CryptoSymbolImpl) then) =
      __$$CryptoSymbolImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String description, String displaySymbol, String symbol});
}

/// @nodoc
class __$$CryptoSymbolImplCopyWithImpl<$Res>
    extends _$CryptoSymbolCopyWithImpl<$Res, _$CryptoSymbolImpl>
    implements _$$CryptoSymbolImplCopyWith<$Res> {
  __$$CryptoSymbolImplCopyWithImpl(
      _$CryptoSymbolImpl _value, $Res Function(_$CryptoSymbolImpl) _then)
      : super(_value, _then);

  /// Create a copy of CryptoSymbol
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? displaySymbol = null,
    Object? symbol = null,
  }) {
    return _then(_$CryptoSymbolImpl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      displaySymbol: null == displaySymbol
          ? _value.displaySymbol
          : displaySymbol // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CryptoSymbolImpl extends _CryptoSymbol {
  const _$CryptoSymbolImpl(
      {required this.description,
      required this.displaySymbol,
      required this.symbol})
      : super._();

  @override
  final String description;
  @override
  final String displaySymbol;
  @override
  final String symbol;

  @override
  String toString() {
    return 'CryptoSymbol(description: $description, displaySymbol: $displaySymbol, symbol: $symbol)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CryptoSymbolImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.displaySymbol, displaySymbol) ||
                other.displaySymbol == displaySymbol) &&
            (identical(other.symbol, symbol) || other.symbol == symbol));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, description, displaySymbol, symbol);

  /// Create a copy of CryptoSymbol
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CryptoSymbolImplCopyWith<_$CryptoSymbolImpl> get copyWith =>
      __$$CryptoSymbolImplCopyWithImpl<_$CryptoSymbolImpl>(this, _$identity);
}

abstract class _CryptoSymbol extends CryptoSymbol {
  const factory _CryptoSymbol(
      {required final String description,
      required final String displaySymbol,
      required final String symbol}) = _$CryptoSymbolImpl;
  const _CryptoSymbol._() : super._();

  @override
  String get description;
  @override
  String get displaySymbol;
  @override
  String get symbol;

  /// Create a copy of CryptoSymbol
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CryptoSymbolImplCopyWith<_$CryptoSymbolImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
