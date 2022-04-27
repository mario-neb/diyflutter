// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'locale_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LocaleEventTearOff {
  const _$LocaleEventTearOff();

  _LocaleChanged localeChanged(Locale locale) {
    return _LocaleChanged(
      locale,
    );
  }

  _LocaleSaved localeSaved(Locale locale) {
    return _LocaleSaved(
      locale,
    );
  }
}

/// @nodoc
const $LocaleEvent = _$LocaleEventTearOff();

/// @nodoc
mixin _$LocaleEvent {
  Locale get locale => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Locale locale) localeChanged,
    required TResult Function(Locale locale) localeSaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Locale locale)? localeChanged,
    TResult Function(Locale locale)? localeSaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Locale locale)? localeChanged,
    TResult Function(Locale locale)? localeSaved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocaleChanged value) localeChanged,
    required TResult Function(_LocaleSaved value) localeSaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LocaleChanged value)? localeChanged,
    TResult Function(_LocaleSaved value)? localeSaved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocaleChanged value)? localeChanged,
    TResult Function(_LocaleSaved value)? localeSaved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocaleEventCopyWith<LocaleEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocaleEventCopyWith<$Res> {
  factory $LocaleEventCopyWith(
          LocaleEvent value, $Res Function(LocaleEvent) then) =
      _$LocaleEventCopyWithImpl<$Res>;
  $Res call({Locale locale});
}

/// @nodoc
class _$LocaleEventCopyWithImpl<$Res> implements $LocaleEventCopyWith<$Res> {
  _$LocaleEventCopyWithImpl(this._value, this._then);

  final LocaleEvent _value;
  // ignore: unused_field
  final $Res Function(LocaleEvent) _then;

  @override
  $Res call({
    Object? locale = freezed,
  }) {
    return _then(_value.copyWith(
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc
abstract class _$LocaleChangedCopyWith<$Res>
    implements $LocaleEventCopyWith<$Res> {
  factory _$LocaleChangedCopyWith(
          _LocaleChanged value, $Res Function(_LocaleChanged) then) =
      __$LocaleChangedCopyWithImpl<$Res>;
  @override
  $Res call({Locale locale});
}

/// @nodoc
class __$LocaleChangedCopyWithImpl<$Res> extends _$LocaleEventCopyWithImpl<$Res>
    implements _$LocaleChangedCopyWith<$Res> {
  __$LocaleChangedCopyWithImpl(
      _LocaleChanged _value, $Res Function(_LocaleChanged) _then)
      : super(_value, (v) => _then(v as _LocaleChanged));

  @override
  _LocaleChanged get _value => super._value as _LocaleChanged;

  @override
  $Res call({
    Object? locale = freezed,
  }) {
    return _then(_LocaleChanged(
      locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc

class _$_LocaleChanged implements _LocaleChanged {
  const _$_LocaleChanged(this.locale);

  @override
  final Locale locale;

  @override
  String toString() {
    return 'LocaleEvent.localeChanged(locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocaleChanged &&
            (identical(other.locale, locale) ||
                const DeepCollectionEquality().equals(other.locale, locale)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(locale);

  @JsonKey(ignore: true)
  @override
  _$LocaleChangedCopyWith<_LocaleChanged> get copyWith =>
      __$LocaleChangedCopyWithImpl<_LocaleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Locale locale) localeChanged,
    required TResult Function(Locale locale) localeSaved,
  }) {
    return localeChanged(locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Locale locale)? localeChanged,
    TResult Function(Locale locale)? localeSaved,
  }) {
    return localeChanged?.call(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Locale locale)? localeChanged,
    TResult Function(Locale locale)? localeSaved,
    required TResult orElse(),
  }) {
    if (localeChanged != null) {
      return localeChanged(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocaleChanged value) localeChanged,
    required TResult Function(_LocaleSaved value) localeSaved,
  }) {
    return localeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LocaleChanged value)? localeChanged,
    TResult Function(_LocaleSaved value)? localeSaved,
  }) {
    return localeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocaleChanged value)? localeChanged,
    TResult Function(_LocaleSaved value)? localeSaved,
    required TResult orElse(),
  }) {
    if (localeChanged != null) {
      return localeChanged(this);
    }
    return orElse();
  }
}

abstract class _LocaleChanged implements LocaleEvent {
  const factory _LocaleChanged(Locale locale) = _$_LocaleChanged;

  @override
  Locale get locale => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LocaleChangedCopyWith<_LocaleChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LocaleSavedCopyWith<$Res>
    implements $LocaleEventCopyWith<$Res> {
  factory _$LocaleSavedCopyWith(
          _LocaleSaved value, $Res Function(_LocaleSaved) then) =
      __$LocaleSavedCopyWithImpl<$Res>;
  @override
  $Res call({Locale locale});
}

/// @nodoc
class __$LocaleSavedCopyWithImpl<$Res> extends _$LocaleEventCopyWithImpl<$Res>
    implements _$LocaleSavedCopyWith<$Res> {
  __$LocaleSavedCopyWithImpl(
      _LocaleSaved _value, $Res Function(_LocaleSaved) _then)
      : super(_value, (v) => _then(v as _LocaleSaved));

  @override
  _LocaleSaved get _value => super._value as _LocaleSaved;

  @override
  $Res call({
    Object? locale = freezed,
  }) {
    return _then(_LocaleSaved(
      locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc

class _$_LocaleSaved implements _LocaleSaved {
  const _$_LocaleSaved(this.locale);

  @override
  final Locale locale;

  @override
  String toString() {
    return 'LocaleEvent.localeSaved(locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocaleSaved &&
            (identical(other.locale, locale) ||
                const DeepCollectionEquality().equals(other.locale, locale)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(locale);

  @JsonKey(ignore: true)
  @override
  _$LocaleSavedCopyWith<_LocaleSaved> get copyWith =>
      __$LocaleSavedCopyWithImpl<_LocaleSaved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Locale locale) localeChanged,
    required TResult Function(Locale locale) localeSaved,
  }) {
    return localeSaved(locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Locale locale)? localeChanged,
    TResult Function(Locale locale)? localeSaved,
  }) {
    return localeSaved?.call(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Locale locale)? localeChanged,
    TResult Function(Locale locale)? localeSaved,
    required TResult orElse(),
  }) {
    if (localeSaved != null) {
      return localeSaved(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocaleChanged value) localeChanged,
    required TResult Function(_LocaleSaved value) localeSaved,
  }) {
    return localeSaved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LocaleChanged value)? localeChanged,
    TResult Function(_LocaleSaved value)? localeSaved,
  }) {
    return localeSaved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocaleChanged value)? localeChanged,
    TResult Function(_LocaleSaved value)? localeSaved,
    required TResult orElse(),
  }) {
    if (localeSaved != null) {
      return localeSaved(this);
    }
    return orElse();
  }
}

abstract class _LocaleSaved implements LocaleEvent {
  const factory _LocaleSaved(Locale locale) = _$_LocaleSaved;

  @override
  Locale get locale => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LocaleSavedCopyWith<_LocaleSaved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$LocaleStateTearOff {
  const _$LocaleStateTearOff();

  _LocaleState call({Locale? locale}) {
    return _LocaleState(
      locale: locale,
    );
  }
}

/// @nodoc
const $LocaleState = _$LocaleStateTearOff();

/// @nodoc
mixin _$LocaleState {
  Locale? get locale => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocaleStateCopyWith<LocaleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocaleStateCopyWith<$Res> {
  factory $LocaleStateCopyWith(
          LocaleState value, $Res Function(LocaleState) then) =
      _$LocaleStateCopyWithImpl<$Res>;
  $Res call({Locale? locale});
}

/// @nodoc
class _$LocaleStateCopyWithImpl<$Res> implements $LocaleStateCopyWith<$Res> {
  _$LocaleStateCopyWithImpl(this._value, this._then);

  final LocaleState _value;
  // ignore: unused_field
  final $Res Function(LocaleState) _then;

  @override
  $Res call({
    Object? locale = freezed,
  }) {
    return _then(_value.copyWith(
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale?,
    ));
  }
}

/// @nodoc
abstract class _$LocaleStateCopyWith<$Res>
    implements $LocaleStateCopyWith<$Res> {
  factory _$LocaleStateCopyWith(
          _LocaleState value, $Res Function(_LocaleState) then) =
      __$LocaleStateCopyWithImpl<$Res>;
  @override
  $Res call({Locale? locale});
}

/// @nodoc
class __$LocaleStateCopyWithImpl<$Res> extends _$LocaleStateCopyWithImpl<$Res>
    implements _$LocaleStateCopyWith<$Res> {
  __$LocaleStateCopyWithImpl(
      _LocaleState _value, $Res Function(_LocaleState) _then)
      : super(_value, (v) => _then(v as _LocaleState));

  @override
  _LocaleState get _value => super._value as _LocaleState;

  @override
  $Res call({
    Object? locale = freezed,
  }) {
    return _then(_LocaleState(
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale?,
    ));
  }
}

/// @nodoc

class _$_LocaleState implements _LocaleState {
  const _$_LocaleState({this.locale});

  @override
  final Locale? locale;

  @override
  String toString() {
    return 'LocaleState(locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocaleState &&
            (identical(other.locale, locale) ||
                const DeepCollectionEquality().equals(other.locale, locale)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(locale);

  @JsonKey(ignore: true)
  @override
  _$LocaleStateCopyWith<_LocaleState> get copyWith =>
      __$LocaleStateCopyWithImpl<_LocaleState>(this, _$identity);
}

abstract class _LocaleState implements LocaleState {
  const factory _LocaleState({Locale? locale}) = _$_LocaleState;

  @override
  Locale? get locale => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LocaleStateCopyWith<_LocaleState> get copyWith =>
      throw _privateConstructorUsedError;
}
