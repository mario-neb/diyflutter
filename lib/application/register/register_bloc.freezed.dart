// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RegisterEventTearOff {
  const _$RegisterEventTearOff();

  _RedirectToPage redirectToPage(RegisterPage? page) {
    return _RedirectToPage(
      page,
    );
  }

  _BackPressed backPressed() {
    return const _BackPressed();
  }

  _NextPressed nextPressed() {
    return const _NextPressed();
  }

  _RegisterDataSubmitted registerDataSubmitted(RegisterData registerData) {
    return _RegisterDataSubmitted(
      registerData,
    );
  }
}

/// @nodoc
const $RegisterEvent = _$RegisterEventTearOff();

/// @nodoc
mixin _$RegisterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegisterPage? page) redirectToPage,
    required TResult Function() backPressed,
    required TResult Function() nextPressed,
    required TResult Function(RegisterData registerData) registerDataSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RegisterPage? page)? redirectToPage,
    TResult Function()? backPressed,
    TResult Function()? nextPressed,
    TResult Function(RegisterData registerData)? registerDataSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegisterPage? page)? redirectToPage,
    TResult Function()? backPressed,
    TResult Function()? nextPressed,
    TResult Function(RegisterData registerData)? registerDataSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RedirectToPage value) redirectToPage,
    required TResult Function(_BackPressed value) backPressed,
    required TResult Function(_NextPressed value) nextPressed,
    required TResult Function(_RegisterDataSubmitted value)
        registerDataSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RedirectToPage value)? redirectToPage,
    TResult Function(_BackPressed value)? backPressed,
    TResult Function(_NextPressed value)? nextPressed,
    TResult Function(_RegisterDataSubmitted value)? registerDataSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RedirectToPage value)? redirectToPage,
    TResult Function(_BackPressed value)? backPressed,
    TResult Function(_NextPressed value)? nextPressed,
    TResult Function(_RegisterDataSubmitted value)? registerDataSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterEventCopyWith<$Res> {
  factory $RegisterEventCopyWith(
          RegisterEvent value, $Res Function(RegisterEvent) then) =
      _$RegisterEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterEventCopyWithImpl<$Res>
    implements $RegisterEventCopyWith<$Res> {
  _$RegisterEventCopyWithImpl(this._value, this._then);

  final RegisterEvent _value;
  // ignore: unused_field
  final $Res Function(RegisterEvent) _then;
}

/// @nodoc
abstract class _$RedirectToPageCopyWith<$Res> {
  factory _$RedirectToPageCopyWith(
          _RedirectToPage value, $Res Function(_RedirectToPage) then) =
      __$RedirectToPageCopyWithImpl<$Res>;
  $Res call({RegisterPage? page});
}

/// @nodoc
class __$RedirectToPageCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements _$RedirectToPageCopyWith<$Res> {
  __$RedirectToPageCopyWithImpl(
      _RedirectToPage _value, $Res Function(_RedirectToPage) _then)
      : super(_value, (v) => _then(v as _RedirectToPage));

  @override
  _RedirectToPage get _value => super._value as _RedirectToPage;

  @override
  $Res call({
    Object? page = freezed,
  }) {
    return _then(_RedirectToPage(
      page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as RegisterPage?,
    ));
  }
}

/// @nodoc

class _$_RedirectToPage implements _RedirectToPage {
  const _$_RedirectToPage(this.page);

  @override
  final RegisterPage? page;

  @override
  String toString() {
    return 'RegisterEvent.redirectToPage(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RedirectToPage &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(page);

  @JsonKey(ignore: true)
  @override
  _$RedirectToPageCopyWith<_RedirectToPage> get copyWith =>
      __$RedirectToPageCopyWithImpl<_RedirectToPage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegisterPage? page) redirectToPage,
    required TResult Function() backPressed,
    required TResult Function() nextPressed,
    required TResult Function(RegisterData registerData) registerDataSubmitted,
  }) {
    return redirectToPage(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RegisterPage? page)? redirectToPage,
    TResult Function()? backPressed,
    TResult Function()? nextPressed,
    TResult Function(RegisterData registerData)? registerDataSubmitted,
  }) {
    return redirectToPage?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegisterPage? page)? redirectToPage,
    TResult Function()? backPressed,
    TResult Function()? nextPressed,
    TResult Function(RegisterData registerData)? registerDataSubmitted,
    required TResult orElse(),
  }) {
    if (redirectToPage != null) {
      return redirectToPage(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RedirectToPage value) redirectToPage,
    required TResult Function(_BackPressed value) backPressed,
    required TResult Function(_NextPressed value) nextPressed,
    required TResult Function(_RegisterDataSubmitted value)
        registerDataSubmitted,
  }) {
    return redirectToPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RedirectToPage value)? redirectToPage,
    TResult Function(_BackPressed value)? backPressed,
    TResult Function(_NextPressed value)? nextPressed,
    TResult Function(_RegisterDataSubmitted value)? registerDataSubmitted,
  }) {
    return redirectToPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RedirectToPage value)? redirectToPage,
    TResult Function(_BackPressed value)? backPressed,
    TResult Function(_NextPressed value)? nextPressed,
    TResult Function(_RegisterDataSubmitted value)? registerDataSubmitted,
    required TResult orElse(),
  }) {
    if (redirectToPage != null) {
      return redirectToPage(this);
    }
    return orElse();
  }
}

abstract class _RedirectToPage implements RegisterEvent {
  const factory _RedirectToPage(RegisterPage? page) = _$_RedirectToPage;

  RegisterPage? get page => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RedirectToPageCopyWith<_RedirectToPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$BackPressedCopyWith<$Res> {
  factory _$BackPressedCopyWith(
          _BackPressed value, $Res Function(_BackPressed) then) =
      __$BackPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$BackPressedCopyWithImpl<$Res> extends _$RegisterEventCopyWithImpl<$Res>
    implements _$BackPressedCopyWith<$Res> {
  __$BackPressedCopyWithImpl(
      _BackPressed _value, $Res Function(_BackPressed) _then)
      : super(_value, (v) => _then(v as _BackPressed));

  @override
  _BackPressed get _value => super._value as _BackPressed;
}

/// @nodoc

class _$_BackPressed implements _BackPressed {
  const _$_BackPressed();

  @override
  String toString() {
    return 'RegisterEvent.backPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _BackPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegisterPage? page) redirectToPage,
    required TResult Function() backPressed,
    required TResult Function() nextPressed,
    required TResult Function(RegisterData registerData) registerDataSubmitted,
  }) {
    return backPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RegisterPage? page)? redirectToPage,
    TResult Function()? backPressed,
    TResult Function()? nextPressed,
    TResult Function(RegisterData registerData)? registerDataSubmitted,
  }) {
    return backPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegisterPage? page)? redirectToPage,
    TResult Function()? backPressed,
    TResult Function()? nextPressed,
    TResult Function(RegisterData registerData)? registerDataSubmitted,
    required TResult orElse(),
  }) {
    if (backPressed != null) {
      return backPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RedirectToPage value) redirectToPage,
    required TResult Function(_BackPressed value) backPressed,
    required TResult Function(_NextPressed value) nextPressed,
    required TResult Function(_RegisterDataSubmitted value)
        registerDataSubmitted,
  }) {
    return backPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RedirectToPage value)? redirectToPage,
    TResult Function(_BackPressed value)? backPressed,
    TResult Function(_NextPressed value)? nextPressed,
    TResult Function(_RegisterDataSubmitted value)? registerDataSubmitted,
  }) {
    return backPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RedirectToPage value)? redirectToPage,
    TResult Function(_BackPressed value)? backPressed,
    TResult Function(_NextPressed value)? nextPressed,
    TResult Function(_RegisterDataSubmitted value)? registerDataSubmitted,
    required TResult orElse(),
  }) {
    if (backPressed != null) {
      return backPressed(this);
    }
    return orElse();
  }
}

abstract class _BackPressed implements RegisterEvent {
  const factory _BackPressed() = _$_BackPressed;
}

/// @nodoc
abstract class _$NextPressedCopyWith<$Res> {
  factory _$NextPressedCopyWith(
          _NextPressed value, $Res Function(_NextPressed) then) =
      __$NextPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$NextPressedCopyWithImpl<$Res> extends _$RegisterEventCopyWithImpl<$Res>
    implements _$NextPressedCopyWith<$Res> {
  __$NextPressedCopyWithImpl(
      _NextPressed _value, $Res Function(_NextPressed) _then)
      : super(_value, (v) => _then(v as _NextPressed));

  @override
  _NextPressed get _value => super._value as _NextPressed;
}

/// @nodoc

class _$_NextPressed implements _NextPressed {
  const _$_NextPressed();

  @override
  String toString() {
    return 'RegisterEvent.nextPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NextPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegisterPage? page) redirectToPage,
    required TResult Function() backPressed,
    required TResult Function() nextPressed,
    required TResult Function(RegisterData registerData) registerDataSubmitted,
  }) {
    return nextPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RegisterPage? page)? redirectToPage,
    TResult Function()? backPressed,
    TResult Function()? nextPressed,
    TResult Function(RegisterData registerData)? registerDataSubmitted,
  }) {
    return nextPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegisterPage? page)? redirectToPage,
    TResult Function()? backPressed,
    TResult Function()? nextPressed,
    TResult Function(RegisterData registerData)? registerDataSubmitted,
    required TResult orElse(),
  }) {
    if (nextPressed != null) {
      return nextPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RedirectToPage value) redirectToPage,
    required TResult Function(_BackPressed value) backPressed,
    required TResult Function(_NextPressed value) nextPressed,
    required TResult Function(_RegisterDataSubmitted value)
        registerDataSubmitted,
  }) {
    return nextPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RedirectToPage value)? redirectToPage,
    TResult Function(_BackPressed value)? backPressed,
    TResult Function(_NextPressed value)? nextPressed,
    TResult Function(_RegisterDataSubmitted value)? registerDataSubmitted,
  }) {
    return nextPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RedirectToPage value)? redirectToPage,
    TResult Function(_BackPressed value)? backPressed,
    TResult Function(_NextPressed value)? nextPressed,
    TResult Function(_RegisterDataSubmitted value)? registerDataSubmitted,
    required TResult orElse(),
  }) {
    if (nextPressed != null) {
      return nextPressed(this);
    }
    return orElse();
  }
}

abstract class _NextPressed implements RegisterEvent {
  const factory _NextPressed() = _$_NextPressed;
}

/// @nodoc
abstract class _$RegisterDataSubmittedCopyWith<$Res> {
  factory _$RegisterDataSubmittedCopyWith(_RegisterDataSubmitted value,
          $Res Function(_RegisterDataSubmitted) then) =
      __$RegisterDataSubmittedCopyWithImpl<$Res>;
  $Res call({RegisterData registerData});

  $RegisterDataCopyWith<$Res> get registerData;
}

/// @nodoc
class __$RegisterDataSubmittedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements _$RegisterDataSubmittedCopyWith<$Res> {
  __$RegisterDataSubmittedCopyWithImpl(_RegisterDataSubmitted _value,
      $Res Function(_RegisterDataSubmitted) _then)
      : super(_value, (v) => _then(v as _RegisterDataSubmitted));

  @override
  _RegisterDataSubmitted get _value => super._value as _RegisterDataSubmitted;

  @override
  $Res call({
    Object? registerData = freezed,
  }) {
    return _then(_RegisterDataSubmitted(
      registerData == freezed
          ? _value.registerData
          : registerData // ignore: cast_nullable_to_non_nullable
              as RegisterData,
    ));
  }

  @override
  $RegisterDataCopyWith<$Res> get registerData {
    return $RegisterDataCopyWith<$Res>(_value.registerData, (value) {
      return _then(_value.copyWith(registerData: value));
    });
  }
}

/// @nodoc

class _$_RegisterDataSubmitted implements _RegisterDataSubmitted {
  const _$_RegisterDataSubmitted(this.registerData);

  @override
  final RegisterData registerData;

  @override
  String toString() {
    return 'RegisterEvent.registerDataSubmitted(registerData: $registerData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterDataSubmitted &&
            (identical(other.registerData, registerData) ||
                const DeepCollectionEquality()
                    .equals(other.registerData, registerData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(registerData);

  @JsonKey(ignore: true)
  @override
  _$RegisterDataSubmittedCopyWith<_RegisterDataSubmitted> get copyWith =>
      __$RegisterDataSubmittedCopyWithImpl<_RegisterDataSubmitted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RegisterPage? page) redirectToPage,
    required TResult Function() backPressed,
    required TResult Function() nextPressed,
    required TResult Function(RegisterData registerData) registerDataSubmitted,
  }) {
    return registerDataSubmitted(registerData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RegisterPage? page)? redirectToPage,
    TResult Function()? backPressed,
    TResult Function()? nextPressed,
    TResult Function(RegisterData registerData)? registerDataSubmitted,
  }) {
    return registerDataSubmitted?.call(registerData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RegisterPage? page)? redirectToPage,
    TResult Function()? backPressed,
    TResult Function()? nextPressed,
    TResult Function(RegisterData registerData)? registerDataSubmitted,
    required TResult orElse(),
  }) {
    if (registerDataSubmitted != null) {
      return registerDataSubmitted(registerData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RedirectToPage value) redirectToPage,
    required TResult Function(_BackPressed value) backPressed,
    required TResult Function(_NextPressed value) nextPressed,
    required TResult Function(_RegisterDataSubmitted value)
        registerDataSubmitted,
  }) {
    return registerDataSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RedirectToPage value)? redirectToPage,
    TResult Function(_BackPressed value)? backPressed,
    TResult Function(_NextPressed value)? nextPressed,
    TResult Function(_RegisterDataSubmitted value)? registerDataSubmitted,
  }) {
    return registerDataSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RedirectToPage value)? redirectToPage,
    TResult Function(_BackPressed value)? backPressed,
    TResult Function(_NextPressed value)? nextPressed,
    TResult Function(_RegisterDataSubmitted value)? registerDataSubmitted,
    required TResult orElse(),
  }) {
    if (registerDataSubmitted != null) {
      return registerDataSubmitted(this);
    }
    return orElse();
  }
}

abstract class _RegisterDataSubmitted implements RegisterEvent {
  const factory _RegisterDataSubmitted(RegisterData registerData) =
      _$_RegisterDataSubmitted;

  RegisterData get registerData => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RegisterDataSubmittedCopyWith<_RegisterDataSubmitted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$RegisterStateTearOff {
  const _$RegisterStateTearOff();

  _RegisterState call(
      {required RegisterPage page,
      required RegisterPage firstPage,
      required RegisterData registerData}) {
    return _RegisterState(
      page: page,
      firstPage: firstPage,
      registerData: registerData,
    );
  }
}

/// @nodoc
const $RegisterState = _$RegisterStateTearOff();

/// @nodoc
mixin _$RegisterState {
  RegisterPage get page => throw _privateConstructorUsedError;
  RegisterPage get firstPage => throw _privateConstructorUsedError;
  RegisterData get registerData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterStateCopyWith<RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res>;
  $Res call(
      {RegisterPage page, RegisterPage firstPage, RegisterData registerData});

  $RegisterDataCopyWith<$Res> get registerData;
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  final RegisterState _value;
  // ignore: unused_field
  final $Res Function(RegisterState) _then;

  @override
  $Res call({
    Object? page = freezed,
    Object? firstPage = freezed,
    Object? registerData = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as RegisterPage,
      firstPage: firstPage == freezed
          ? _value.firstPage
          : firstPage // ignore: cast_nullable_to_non_nullable
              as RegisterPage,
      registerData: registerData == freezed
          ? _value.registerData
          : registerData // ignore: cast_nullable_to_non_nullable
              as RegisterData,
    ));
  }

  @override
  $RegisterDataCopyWith<$Res> get registerData {
    return $RegisterDataCopyWith<$Res>(_value.registerData, (value) {
      return _then(_value.copyWith(registerData: value));
    });
  }
}

/// @nodoc
abstract class _$RegisterStateCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$RegisterStateCopyWith(
          _RegisterState value, $Res Function(_RegisterState) then) =
      __$RegisterStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {RegisterPage page, RegisterPage firstPage, RegisterData registerData});

  @override
  $RegisterDataCopyWith<$Res> get registerData;
}

/// @nodoc
class __$RegisterStateCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res>
    implements _$RegisterStateCopyWith<$Res> {
  __$RegisterStateCopyWithImpl(
      _RegisterState _value, $Res Function(_RegisterState) _then)
      : super(_value, (v) => _then(v as _RegisterState));

  @override
  _RegisterState get _value => super._value as _RegisterState;

  @override
  $Res call({
    Object? page = freezed,
    Object? firstPage = freezed,
    Object? registerData = freezed,
  }) {
    return _then(_RegisterState(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as RegisterPage,
      firstPage: firstPage == freezed
          ? _value.firstPage
          : firstPage // ignore: cast_nullable_to_non_nullable
              as RegisterPage,
      registerData: registerData == freezed
          ? _value.registerData
          : registerData // ignore: cast_nullable_to_non_nullable
              as RegisterData,
    ));
  }
}

/// @nodoc

class _$_RegisterState implements _RegisterState {
  const _$_RegisterState(
      {required this.page,
      required this.firstPage,
      required this.registerData});

  @override
  final RegisterPage page;
  @override
  final RegisterPage firstPage;
  @override
  final RegisterData registerData;

  @override
  String toString() {
    return 'RegisterState(page: $page, firstPage: $firstPage, registerData: $registerData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterState &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.firstPage, firstPage) ||
                const DeepCollectionEquality()
                    .equals(other.firstPage, firstPage)) &&
            (identical(other.registerData, registerData) ||
                const DeepCollectionEquality()
                    .equals(other.registerData, registerData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(firstPage) ^
      const DeepCollectionEquality().hash(registerData);

  @JsonKey(ignore: true)
  @override
  _$RegisterStateCopyWith<_RegisterState> get copyWith =>
      __$RegisterStateCopyWithImpl<_RegisterState>(this, _$identity);
}

abstract class _RegisterState implements RegisterState {
  const factory _RegisterState(
      {required RegisterPage page,
      required RegisterPage firstPage,
      required RegisterData registerData}) = _$_RegisterState;

  @override
  RegisterPage get page => throw _privateConstructorUsedError;
  @override
  RegisterPage get firstPage => throw _privateConstructorUsedError;
  @override
  RegisterData get registerData => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RegisterStateCopyWith<_RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}
