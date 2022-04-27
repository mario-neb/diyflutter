// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'terms_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TermsEventTearOff {
  const _$TermsEventTearOff();

  _WebsitePressed websitePressed(String url) {
    return _WebsitePressed(
      url,
    );
  }
}

/// @nodoc
const $TermsEvent = _$TermsEventTearOff();

/// @nodoc
mixin _$TermsEvent {
  String get url => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) websitePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String url)? websitePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? websitePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WebsitePressed value) websitePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WebsitePressed value)? websitePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WebsitePressed value)? websitePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TermsEventCopyWith<TermsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TermsEventCopyWith<$Res> {
  factory $TermsEventCopyWith(
          TermsEvent value, $Res Function(TermsEvent) then) =
      _$TermsEventCopyWithImpl<$Res>;
  $Res call({String url});
}

/// @nodoc
class _$TermsEventCopyWithImpl<$Res> implements $TermsEventCopyWith<$Res> {
  _$TermsEventCopyWithImpl(this._value, this._then);

  final TermsEvent _value;
  // ignore: unused_field
  final $Res Function(TermsEvent) _then;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$WebsitePressedCopyWith<$Res>
    implements $TermsEventCopyWith<$Res> {
  factory _$WebsitePressedCopyWith(
          _WebsitePressed value, $Res Function(_WebsitePressed) then) =
      __$WebsitePressedCopyWithImpl<$Res>;
  @override
  $Res call({String url});
}

/// @nodoc
class __$WebsitePressedCopyWithImpl<$Res> extends _$TermsEventCopyWithImpl<$Res>
    implements _$WebsitePressedCopyWith<$Res> {
  __$WebsitePressedCopyWithImpl(
      _WebsitePressed _value, $Res Function(_WebsitePressed) _then)
      : super(_value, (v) => _then(v as _WebsitePressed));

  @override
  _WebsitePressed get _value => super._value as _WebsitePressed;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_WebsitePressed(
      url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WebsitePressed implements _WebsitePressed {
  const _$_WebsitePressed(this.url);

  @override
  final String url;

  @override
  String toString() {
    return 'TermsEvent.websitePressed(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WebsitePressed &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(url);

  @JsonKey(ignore: true)
  @override
  _$WebsitePressedCopyWith<_WebsitePressed> get copyWith =>
      __$WebsitePressedCopyWithImpl<_WebsitePressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url) websitePressed,
  }) {
    return websitePressed(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String url)? websitePressed,
  }) {
    return websitePressed?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url)? websitePressed,
    required TResult orElse(),
  }) {
    if (websitePressed != null) {
      return websitePressed(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WebsitePressed value) websitePressed,
  }) {
    return websitePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WebsitePressed value)? websitePressed,
  }) {
    return websitePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WebsitePressed value)? websitePressed,
    required TResult orElse(),
  }) {
    if (websitePressed != null) {
      return websitePressed(this);
    }
    return orElse();
  }
}

abstract class _WebsitePressed implements TermsEvent {
  const factory _WebsitePressed(String url) = _$_WebsitePressed;

  @override
  String get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WebsitePressedCopyWith<_WebsitePressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$TermsStateTearOff {
  const _$TermsStateTearOff();

  _Initial initial() {
    return const _Initial();
  }
}

/// @nodoc
const $TermsState = _$TermsStateTearOff();

/// @nodoc
mixin _$TermsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TermsStateCopyWith<$Res> {
  factory $TermsStateCopyWith(
          TermsState value, $Res Function(TermsState) then) =
      _$TermsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TermsStateCopyWithImpl<$Res> implements $TermsStateCopyWith<$Res> {
  _$TermsStateCopyWithImpl(this._value, this._then);

  final TermsState _value;
  // ignore: unused_field
  final $Res Function(TermsState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$TermsStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'TermsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
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
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TermsState {
  const factory _Initial() = _$_Initial;
}
