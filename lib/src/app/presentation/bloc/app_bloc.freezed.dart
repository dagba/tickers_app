// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAppEvent value) init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAppEvent value)? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAppEvent value)? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res, AppEvent>;
}

/// @nodoc
class _$AppEventCopyWithImpl<$Res, $Val extends AppEvent>
    implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitAppEventImplCopyWith<$Res> {
  factory _$$InitAppEventImplCopyWith(
          _$InitAppEventImpl value, $Res Function(_$InitAppEventImpl) then) =
      __$$InitAppEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitAppEventImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$InitAppEventImpl>
    implements _$$InitAppEventImplCopyWith<$Res> {
  __$$InitAppEventImplCopyWithImpl(
      _$InitAppEventImpl _value, $Res Function(_$InitAppEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitAppEventImpl with DiagnosticableTreeMixin implements InitAppEvent {
  _$InitAppEventImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppEvent.init()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AppEvent.init'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitAppEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitAppEvent value) init,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitAppEvent value)? init,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitAppEvent value)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitAppEvent implements AppEvent {
  factory InitAppEvent() = _$InitAppEventImpl;
}

/// @nodoc
mixin _$AppState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
    required TResult Function() initial,
    required TResult Function(bool hasInternetConnection) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? initial,
    TResult? Function(bool hasInternetConnection)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function()? initial,
    TResult Function(bool hasInternetConnection)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingAppState value) loading,
    required TResult Function(ErrorAppState value) error,
    required TResult Function(InitialAppState value) initial,
    required TResult Function(LoadedAppState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingAppState value)? loading,
    TResult? Function(ErrorAppState value)? error,
    TResult? Function(InitialAppState value)? initial,
    TResult? Function(LoadedAppState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingAppState value)? loading,
    TResult Function(ErrorAppState value)? error,
    TResult Function(InitialAppState value)? initial,
    TResult Function(LoadedAppState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadingAppStateImplCopyWith<$Res> {
  factory _$$LoadingAppStateImplCopyWith(_$LoadingAppStateImpl value,
          $Res Function(_$LoadingAppStateImpl) then) =
      __$$LoadingAppStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingAppStateImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$LoadingAppStateImpl>
    implements _$$LoadingAppStateImplCopyWith<$Res> {
  __$$LoadingAppStateImplCopyWithImpl(
      _$LoadingAppStateImpl _value, $Res Function(_$LoadingAppStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingAppStateImpl
    with DiagnosticableTreeMixin
    implements LoadingAppState {
  _$LoadingAppStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AppState.loading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingAppStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
    required TResult Function() initial,
    required TResult Function(bool hasInternetConnection) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? initial,
    TResult? Function(bool hasInternetConnection)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function()? initial,
    TResult Function(bool hasInternetConnection)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingAppState value) loading,
    required TResult Function(ErrorAppState value) error,
    required TResult Function(InitialAppState value) initial,
    required TResult Function(LoadedAppState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingAppState value)? loading,
    TResult? Function(ErrorAppState value)? error,
    TResult? Function(InitialAppState value)? initial,
    TResult? Function(LoadedAppState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingAppState value)? loading,
    TResult Function(ErrorAppState value)? error,
    TResult Function(InitialAppState value)? initial,
    TResult Function(LoadedAppState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingAppState implements AppState {
  factory LoadingAppState() = _$LoadingAppStateImpl;
}

/// @nodoc
abstract class _$$ErrorAppStateImplCopyWith<$Res> {
  factory _$$ErrorAppStateImplCopyWith(
          _$ErrorAppStateImpl value, $Res Function(_$ErrorAppStateImpl) then) =
      __$$ErrorAppStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$ErrorAppStateImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$ErrorAppStateImpl>
    implements _$$ErrorAppStateImplCopyWith<$Res> {
  __$$ErrorAppStateImplCopyWithImpl(
      _$ErrorAppStateImpl _value, $Res Function(_$ErrorAppStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$ErrorAppStateImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorAppStateImpl
    with DiagnosticableTreeMixin
    implements ErrorAppState {
  _$ErrorAppStateImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppState.error(errorMessage: $errorMessage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppState.error'))
      ..add(DiagnosticsProperty('errorMessage', errorMessage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorAppStateImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorAppStateImplCopyWith<_$ErrorAppStateImpl> get copyWith =>
      __$$ErrorAppStateImplCopyWithImpl<_$ErrorAppStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
    required TResult Function() initial,
    required TResult Function(bool hasInternetConnection) loaded,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? initial,
    TResult? Function(bool hasInternetConnection)? loaded,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function()? initial,
    TResult Function(bool hasInternetConnection)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingAppState value) loading,
    required TResult Function(ErrorAppState value) error,
    required TResult Function(InitialAppState value) initial,
    required TResult Function(LoadedAppState value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingAppState value)? loading,
    TResult? Function(ErrorAppState value)? error,
    TResult? Function(InitialAppState value)? initial,
    TResult? Function(LoadedAppState value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingAppState value)? loading,
    TResult Function(ErrorAppState value)? error,
    TResult Function(InitialAppState value)? initial,
    TResult Function(LoadedAppState value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorAppState implements AppState {
  factory ErrorAppState(final String errorMessage) = _$ErrorAppStateImpl;

  String get errorMessage;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorAppStateImplCopyWith<_$ErrorAppStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitialAppStateImplCopyWith<$Res> {
  factory _$$InitialAppStateImplCopyWith(_$InitialAppStateImpl value,
          $Res Function(_$InitialAppStateImpl) then) =
      __$$InitialAppStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialAppStateImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$InitialAppStateImpl>
    implements _$$InitialAppStateImplCopyWith<$Res> {
  __$$InitialAppStateImplCopyWithImpl(
      _$InitialAppStateImpl _value, $Res Function(_$InitialAppStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialAppStateImpl
    with DiagnosticableTreeMixin
    implements InitialAppState {
  _$InitialAppStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AppState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialAppStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
    required TResult Function() initial,
    required TResult Function(bool hasInternetConnection) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? initial,
    TResult? Function(bool hasInternetConnection)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function()? initial,
    TResult Function(bool hasInternetConnection)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingAppState value) loading,
    required TResult Function(ErrorAppState value) error,
    required TResult Function(InitialAppState value) initial,
    required TResult Function(LoadedAppState value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingAppState value)? loading,
    TResult? Function(ErrorAppState value)? error,
    TResult? Function(InitialAppState value)? initial,
    TResult? Function(LoadedAppState value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingAppState value)? loading,
    TResult Function(ErrorAppState value)? error,
    TResult Function(InitialAppState value)? initial,
    TResult Function(LoadedAppState value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialAppState implements AppState {
  factory InitialAppState() = _$InitialAppStateImpl;
}

/// @nodoc
abstract class _$$LoadedAppStateImplCopyWith<$Res> {
  factory _$$LoadedAppStateImplCopyWith(_$LoadedAppStateImpl value,
          $Res Function(_$LoadedAppStateImpl) then) =
      __$$LoadedAppStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool hasInternetConnection});
}

/// @nodoc
class __$$LoadedAppStateImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$LoadedAppStateImpl>
    implements _$$LoadedAppStateImplCopyWith<$Res> {
  __$$LoadedAppStateImplCopyWithImpl(
      _$LoadedAppStateImpl _value, $Res Function(_$LoadedAppStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasInternetConnection = null,
  }) {
    return _then(_$LoadedAppStateImpl(
      hasInternetConnection: null == hasInternetConnection
          ? _value.hasInternetConnection
          : hasInternetConnection // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoadedAppStateImpl
    with DiagnosticableTreeMixin
    implements LoadedAppState {
  _$LoadedAppStateImpl({this.hasInternetConnection = true});

  @override
  @JsonKey()
  final bool hasInternetConnection;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppState.loaded(hasInternetConnection: $hasInternetConnection)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppState.loaded'))
      ..add(
          DiagnosticsProperty('hasInternetConnection', hasInternetConnection));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedAppStateImpl &&
            (identical(other.hasInternetConnection, hasInternetConnection) ||
                other.hasInternetConnection == hasInternetConnection));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hasInternetConnection);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedAppStateImplCopyWith<_$LoadedAppStateImpl> get copyWith =>
      __$$LoadedAppStateImplCopyWithImpl<_$LoadedAppStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
    required TResult Function() initial,
    required TResult Function(bool hasInternetConnection) loaded,
  }) {
    return loaded(hasInternetConnection);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? initial,
    TResult? Function(bool hasInternetConnection)? loaded,
  }) {
    return loaded?.call(hasInternetConnection);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function()? initial,
    TResult Function(bool hasInternetConnection)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(hasInternetConnection);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingAppState value) loading,
    required TResult Function(ErrorAppState value) error,
    required TResult Function(InitialAppState value) initial,
    required TResult Function(LoadedAppState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingAppState value)? loading,
    TResult? Function(ErrorAppState value)? error,
    TResult? Function(InitialAppState value)? initial,
    TResult? Function(LoadedAppState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingAppState value)? loading,
    TResult Function(ErrorAppState value)? error,
    TResult Function(InitialAppState value)? initial,
    TResult Function(LoadedAppState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedAppState implements AppState {
  factory LoadedAppState({final bool hasInternetConnection}) =
      _$LoadedAppStateImpl;

  bool get hasInternetConnection;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedAppStateImplCopyWith<_$LoadedAppStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
