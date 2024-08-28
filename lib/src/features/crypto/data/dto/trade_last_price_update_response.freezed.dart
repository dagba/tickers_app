// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trade_last_price_update_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TradeLastPriceUpdateResponse _$TradeLastPriceUpdateResponseFromJson(
    Map<String, dynamic> json) {
  return _TradeLastPriceUpdateResponse.fromJson(json);
}

/// @nodoc
mixin _$TradeLastPriceUpdateResponse {
  List<TradeLastPriceUpdateDto>? get data => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  /// Serializes this TradeLastPriceUpdateResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TradeLastPriceUpdateResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TradeLastPriceUpdateResponseCopyWith<TradeLastPriceUpdateResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TradeLastPriceUpdateResponseCopyWith<$Res> {
  factory $TradeLastPriceUpdateResponseCopyWith(
          TradeLastPriceUpdateResponse value,
          $Res Function(TradeLastPriceUpdateResponse) then) =
      _$TradeLastPriceUpdateResponseCopyWithImpl<$Res,
          TradeLastPriceUpdateResponse>;
  @useResult
  $Res call({List<TradeLastPriceUpdateDto>? data, String? type});
}

/// @nodoc
class _$TradeLastPriceUpdateResponseCopyWithImpl<$Res,
        $Val extends TradeLastPriceUpdateResponse>
    implements $TradeLastPriceUpdateResponseCopyWith<$Res> {
  _$TradeLastPriceUpdateResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TradeLastPriceUpdateResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TradeLastPriceUpdateDto>?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TradeLastPriceUpdateResponseImplCopyWith<$Res>
    implements $TradeLastPriceUpdateResponseCopyWith<$Res> {
  factory _$$TradeLastPriceUpdateResponseImplCopyWith(
          _$TradeLastPriceUpdateResponseImpl value,
          $Res Function(_$TradeLastPriceUpdateResponseImpl) then) =
      __$$TradeLastPriceUpdateResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TradeLastPriceUpdateDto>? data, String? type});
}

/// @nodoc
class __$$TradeLastPriceUpdateResponseImplCopyWithImpl<$Res>
    extends _$TradeLastPriceUpdateResponseCopyWithImpl<$Res,
        _$TradeLastPriceUpdateResponseImpl>
    implements _$$TradeLastPriceUpdateResponseImplCopyWith<$Res> {
  __$$TradeLastPriceUpdateResponseImplCopyWithImpl(
      _$TradeLastPriceUpdateResponseImpl _value,
      $Res Function(_$TradeLastPriceUpdateResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of TradeLastPriceUpdateResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? type = freezed,
  }) {
    return _then(_$TradeLastPriceUpdateResponseImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TradeLastPriceUpdateDto>?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TradeLastPriceUpdateResponseImpl
    implements _TradeLastPriceUpdateResponse {
  const _$TradeLastPriceUpdateResponseImpl(
      {final List<TradeLastPriceUpdateDto>? data, this.type})
      : _data = data;

  factory _$TradeLastPriceUpdateResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TradeLastPriceUpdateResponseImplFromJson(json);

  final List<TradeLastPriceUpdateDto>? _data;
  @override
  List<TradeLastPriceUpdateDto>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? type;

  @override
  String toString() {
    return 'TradeLastPriceUpdateResponse(data: $data, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TradeLastPriceUpdateResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), type);

  /// Create a copy of TradeLastPriceUpdateResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TradeLastPriceUpdateResponseImplCopyWith<
          _$TradeLastPriceUpdateResponseImpl>
      get copyWith => __$$TradeLastPriceUpdateResponseImplCopyWithImpl<
          _$TradeLastPriceUpdateResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TradeLastPriceUpdateResponseImplToJson(
      this,
    );
  }
}

abstract class _TradeLastPriceUpdateResponse
    implements TradeLastPriceUpdateResponse {
  const factory _TradeLastPriceUpdateResponse(
      {final List<TradeLastPriceUpdateDto>? data,
      final String? type}) = _$TradeLastPriceUpdateResponseImpl;

  factory _TradeLastPriceUpdateResponse.fromJson(Map<String, dynamic> json) =
      _$TradeLastPriceUpdateResponseImpl.fromJson;

  @override
  List<TradeLastPriceUpdateDto>? get data;
  @override
  String? get type;

  /// Create a copy of TradeLastPriceUpdateResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TradeLastPriceUpdateResponseImplCopyWith<
          _$TradeLastPriceUpdateResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
