// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crypto_symbol_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CryptoSymbolDto _$CryptoSymbolDtoFromJson(Map<String, dynamic> json) {
  return _CryptoSymbolDto.fromJson(json);
}

/// @nodoc
mixin _$CryptoSymbolDto {
  String get description => throw _privateConstructorUsedError;
  String get displaySymbol => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;

  /// Serializes this CryptoSymbolDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CryptoSymbolDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CryptoSymbolDtoCopyWith<CryptoSymbolDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptoSymbolDtoCopyWith<$Res> {
  factory $CryptoSymbolDtoCopyWith(
          CryptoSymbolDto value, $Res Function(CryptoSymbolDto) then) =
      _$CryptoSymbolDtoCopyWithImpl<$Res, CryptoSymbolDto>;
  @useResult
  $Res call({String description, String displaySymbol, String symbol});
}

/// @nodoc
class _$CryptoSymbolDtoCopyWithImpl<$Res, $Val extends CryptoSymbolDto>
    implements $CryptoSymbolDtoCopyWith<$Res> {
  _$CryptoSymbolDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CryptoSymbolDto
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
abstract class _$$CryptoSymbolDtoImplCopyWith<$Res>
    implements $CryptoSymbolDtoCopyWith<$Res> {
  factory _$$CryptoSymbolDtoImplCopyWith(_$CryptoSymbolDtoImpl value,
          $Res Function(_$CryptoSymbolDtoImpl) then) =
      __$$CryptoSymbolDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String description, String displaySymbol, String symbol});
}

/// @nodoc
class __$$CryptoSymbolDtoImplCopyWithImpl<$Res>
    extends _$CryptoSymbolDtoCopyWithImpl<$Res, _$CryptoSymbolDtoImpl>
    implements _$$CryptoSymbolDtoImplCopyWith<$Res> {
  __$$CryptoSymbolDtoImplCopyWithImpl(
      _$CryptoSymbolDtoImpl _value, $Res Function(_$CryptoSymbolDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CryptoSymbolDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? displaySymbol = null,
    Object? symbol = null,
  }) {
    return _then(_$CryptoSymbolDtoImpl(
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
@JsonSerializable()
class _$CryptoSymbolDtoImpl implements _CryptoSymbolDto {
  const _$CryptoSymbolDtoImpl(
      {required this.description,
      required this.displaySymbol,
      required this.symbol});

  factory _$CryptoSymbolDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CryptoSymbolDtoImplFromJson(json);

  @override
  final String description;
  @override
  final String displaySymbol;
  @override
  final String symbol;

  @override
  String toString() {
    return 'CryptoSymbolDto(description: $description, displaySymbol: $displaySymbol, symbol: $symbol)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CryptoSymbolDtoImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.displaySymbol, displaySymbol) ||
                other.displaySymbol == displaySymbol) &&
            (identical(other.symbol, symbol) || other.symbol == symbol));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, description, displaySymbol, symbol);

  /// Create a copy of CryptoSymbolDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CryptoSymbolDtoImplCopyWith<_$CryptoSymbolDtoImpl> get copyWith =>
      __$$CryptoSymbolDtoImplCopyWithImpl<_$CryptoSymbolDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CryptoSymbolDtoImplToJson(
      this,
    );
  }
}

abstract class _CryptoSymbolDto implements CryptoSymbolDto {
  const factory _CryptoSymbolDto(
      {required final String description,
      required final String displaySymbol,
      required final String symbol}) = _$CryptoSymbolDtoImpl;

  factory _CryptoSymbolDto.fromJson(Map<String, dynamic> json) =
      _$CryptoSymbolDtoImpl.fromJson;

  @override
  String get description;
  @override
  String get displaySymbol;
  @override
  String get symbol;

  /// Create a copy of CryptoSymbolDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CryptoSymbolDtoImplCopyWith<_$CryptoSymbolDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
