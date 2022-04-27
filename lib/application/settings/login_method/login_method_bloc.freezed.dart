// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_method_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginMethodEventTearOff {
  const _$LoginMethodEventTearOff();

  _LoginMethodChanged loginMethodChanged(LoginMethod loginMethod) {
    return _LoginMethodChanged(
      loginMethod,
    );
  }

  _LoginMethodSaved loginMethodSaved(LoginMethod loginMethod) {
    return _LoginMethodSaved(
      loginMethod,
    );
  }

  _AvailableLoginMethodsChanged availableLoginMethodsChanged(
      List<LoginMethod> availableLoginMethods) {
    return _AvailableLoginMethodsChanged(
      availableLoginMethods,
    );
  }
}

/// @nodoc
const $LoginMethodEvent = _$LoginMethodEventTearOff();

/// @nodoc
mixin _$LoginMethodEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginMethod loginMethod) loginMethodChanged,
    required TResult Function(LoginMethod loginMethod) loginMethodSaved,
    required TResult Function(List<LoginMethod> availableLoginMethods)
        availableLoginMethodsChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LoginMethod loginMethod)? loginMethodChanged,
    TResult Function(LoginMethod loginMethod)? loginMethodSaved,
    TResult Function(List<LoginMethod> availableLoginMethods)?
        availableLoginMethodsChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginMethod loginMethod)? loginMethodChanged,
    TResult Function(LoginMethod loginMethod)? loginMethodSaved,
    TResult Function(List<LoginMethod> availableLoginMethods)?
        availableLoginMethodsChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginMethodChanged value) loginMethodChanged,
    required TResult Function(_LoginMethodSaved value) loginMethodSaved,
    required TResult Function(_AvailableLoginMethodsChanged value)
        availableLoginMethodsChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoginMethodChanged value)? loginMethodChanged,
    TResult Function(_LoginMethodSaved value)? loginMethodSaved,
    TResult Function(_AvailableLoginMethodsChanged value)?
        availableLoginMethodsChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginMethodChanged value)? loginMethodChanged,
    TResult Function(_LoginMethodSaved value)? loginMethodSaved,
    TResult Function(_AvailableLoginMethodsChanged value)?
        availableLoginMethodsChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginMethodEventCopyWith<$Res> {
  factory $LoginMethodEventCopyWith(
          LoginMethodEvent value, $Res Function(LoginMethodEvent) then) =
      _$LoginMethodEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginMethodEventCopyWithImpl<$Res>
    implements $LoginMethodEventCopyWith<$Res> {
  _$LoginMethodEventCopyWithImpl(this._value, this._then);

  final LoginMethodEvent _value;
  // ignore: unused_field
  final $Res Function(LoginMethodEvent) _then;
}

/// @nodoc
abstract class _$LoginMethodChangedCopyWith<$Res> {
  factory _$LoginMethodChangedCopyWith(
          _LoginMethodChanged value, $Res Function(_LoginMethodChanged) then) =
      __$LoginMethodChangedCopyWithImpl<$Res>;
  $Res call({LoginMethod loginMethod});
}

/// @nodoc
class __$LoginMethodChangedCopyWithImpl<$Res>
    extends _$LoginMethodEventCopyWithImpl<$Res>
    implements _$LoginMethodChangedCopyWith<$Res> {
  __$LoginMethodChangedCopyWithImpl(
      _LoginMethodChanged _value, $Res Function(_LoginMethodChanged) _then)
      : super(_value, (v) => _then(v as _LoginMethodChanged));

  @override
  _LoginMethodChanged get _value => super._value as _LoginMethodChanged;

  @override
  $Res call({
    Object? loginMethod = freezed,
  }) {
    return _then(_LoginMethodChanged(
      loginMethod == freezed
          ? _value.loginMethod
          : loginMethod // ignore: cast_nullable_to_non_nullable
              as LoginMethod,
    ));
  }
}

/// @nodoc

class _$_LoginMethodChanged implements _LoginMethodChanged {
  const _$_LoginMethodChanged(this.loginMethod);

  @override
  final LoginMethod loginMethod;

  @override
  String toString() {
    return 'LoginMethodEvent.loginMethodChanged(loginMethod: $loginMethod)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginMethodChanged &&
            (identical(other.loginMethod, loginMethod) ||
                const DeepCollectionEquality()
                    .equals(other.loginMethod, loginMethod)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(loginMethod);

  @JsonKey(ignore: true)
  @override
  _$LoginMethodChangedCopyWith<_LoginMethodChanged> get copyWith =>
      __$LoginMethodChangedCopyWithImpl<_LoginMethodChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginMethod loginMethod) loginMethodChanged,
    required TResult Function(LoginMethod loginMethod) loginMethodSaved,
    required TResult Function(List<LoginMethod> availableLoginMethods)
        availableLoginMethodsChanged,
  }) {
    return loginMethodChanged(loginMethod);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LoginMethod loginMethod)? loginMethodChanged,
    TResult Function(LoginMethod loginMethod)? loginMethodSaved,
    TResult Function(List<LoginMethod> availableLoginMethods)?
        availableLoginMethodsChanged,
  }) {
    return loginMethodChanged?.call(loginMethod);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginMethod loginMethod)? loginMethodChanged,
    TResult Function(LoginMethod loginMethod)? loginMethodSaved,
    TResult Function(List<LoginMethod> availableLoginMethods)?
        availableLoginMethodsChanged,
    required TResult orElse(),
  }) {
    if (loginMethodChanged != null) {
      return loginMethodChanged(loginMethod);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginMethodChanged value) loginMethodChanged,
    required TResult Function(_LoginMethodSaved value) loginMethodSaved,
    required TResult Function(_AvailableLoginMethodsChanged value)
        availableLoginMethodsChanged,
  }) {
    return loginMethodChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoginMethodChanged value)? loginMethodChanged,
    TResult Function(_LoginMethodSaved value)? loginMethodSaved,
    TResult Function(_AvailableLoginMethodsChanged value)?
        availableLoginMethodsChanged,
  }) {
    return loginMethodChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginMethodChanged value)? loginMethodChanged,
    TResult Function(_LoginMethodSaved value)? loginMethodSaved,
    TResult Function(_AvailableLoginMethodsChanged value)?
        availableLoginMethodsChanged,
    required TResult orElse(),
  }) {
    if (loginMethodChanged != null) {
      return loginMethodChanged(this);
    }
    return orElse();
  }
}

abstract class _LoginMethodChanged implements LoginMethodEvent {
  const factory _LoginMethodChanged(LoginMethod loginMethod) =
      _$_LoginMethodChanged;

  LoginMethod get loginMethod => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoginMethodChangedCopyWith<_LoginMethodChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoginMethodSavedCopyWith<$Res> {
  factory _$LoginMethodSavedCopyWith(
          _LoginMethodSaved value, $Res Function(_LoginMethodSaved) then) =
      __$LoginMethodSavedCopyWithImpl<$Res>;
  $Res call({LoginMethod loginMethod});
}

/// @nodoc
class __$LoginMethodSavedCopyWithImpl<$Res>
    extends _$LoginMethodEventCopyWithImpl<$Res>
    implements _$LoginMethodSavedCopyWith<$Res> {
  __$LoginMethodSavedCopyWithImpl(
      _LoginMethodSaved _value, $Res Function(_LoginMethodSaved) _then)
      : super(_value, (v) => _then(v as _LoginMethodSaved));

  @override
  _LoginMethodSaved get _value => super._value as _LoginMethodSaved;

  @override
  $Res call({
    Object? loginMethod = freezed,
  }) {
    return _then(_LoginMethodSaved(
      loginMethod == freezed
          ? _value.loginMethod
          : loginMethod // ignore: cast_nullable_to_non_nullable
              as LoginMethod,
    ));
  }
}

/// @nodoc

class _$_LoginMethodSaved implements _LoginMethodSaved {
  const _$_LoginMethodSaved(this.loginMethod);

  @override
  final LoginMethod loginMethod;

  @override
  String toString() {
    return 'LoginMethodEvent.loginMethodSaved(loginMethod: $loginMethod)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginMethodSaved &&
            (identical(other.loginMethod, loginMethod) ||
                const DeepCollectionEquality()
                    .equals(other.loginMethod, loginMethod)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(loginMethod);

  @JsonKey(ignore: true)
  @override
  _$LoginMethodSavedCopyWith<_LoginMethodSaved> get copyWith =>
      __$LoginMethodSavedCopyWithImpl<_LoginMethodSaved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginMethod loginMethod) loginMethodChanged,
    required TResult Function(LoginMethod loginMethod) loginMethodSaved,
    required TResult Function(List<LoginMethod> availableLoginMethods)
        availableLoginMethodsChanged,
  }) {
    return loginMethodSaved(loginMethod);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LoginMethod loginMethod)? loginMethodChanged,
    TResult Function(LoginMethod loginMethod)? loginMethodSaved,
    TResult Function(List<LoginMethod> availableLoginMethods)?
        availableLoginMethodsChanged,
  }) {
    return loginMethodSaved?.call(loginMethod);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginMethod loginMethod)? loginMethodChanged,
    TResult Function(LoginMethod loginMethod)? loginMethodSaved,
    TResult Function(List<LoginMethod> availableLoginMethods)?
        availableLoginMethodsChanged,
    required TResult orElse(),
  }) {
    if (loginMethodSaved != null) {
      return loginMethodSaved(loginMethod);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginMethodChanged value) loginMethodChanged,
    required TResult Function(_LoginMethodSaved value) loginMethodSaved,
    required TResult Function(_AvailableLoginMethodsChanged value)
        availableLoginMethodsChanged,
  }) {
    return loginMethodSaved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoginMethodChanged value)? loginMethodChanged,
    TResult Function(_LoginMethodSaved value)? loginMethodSaved,
    TResult Function(_AvailableLoginMethodsChanged value)?
        availableLoginMethodsChanged,
  }) {
    return loginMethodSaved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginMethodChanged value)? loginMethodChanged,
    TResult Function(_LoginMethodSaved value)? loginMethodSaved,
    TResult Function(_AvailableLoginMethodsChanged value)?
        availableLoginMethodsChanged,
    required TResult orElse(),
  }) {
    if (loginMethodSaved != null) {
      return loginMethodSaved(this);
    }
    return orElse();
  }
}

abstract class _LoginMethodSaved implements LoginMethodEvent {
  const factory _LoginMethodSaved(LoginMethod loginMethod) =
      _$_LoginMethodSaved;

  LoginMethod get loginMethod => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoginMethodSavedCopyWith<_LoginMethodSaved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AvailableLoginMethodsChangedCopyWith<$Res> {
  factory _$AvailableLoginMethodsChangedCopyWith(
          _AvailableLoginMethodsChanged value,
          $Res Function(_AvailableLoginMethodsChanged) then) =
      __$AvailableLoginMethodsChangedCopyWithImpl<$Res>;
  $Res call({List<LoginMethod> availableLoginMethods});
}

/// @nodoc
class __$AvailableLoginMethodsChangedCopyWithImpl<$Res>
    extends _$LoginMethodEventCopyWithImpl<$Res>
    implements _$AvailableLoginMethodsChangedCopyWith<$Res> {
  __$AvailableLoginMethodsChangedCopyWithImpl(
      _AvailableLoginMethodsChanged _value,
      $Res Function(_AvailableLoginMethodsChanged) _then)
      : super(_value, (v) => _then(v as _AvailableLoginMethodsChanged));

  @override
  _AvailableLoginMethodsChanged get _value =>
      super._value as _AvailableLoginMethodsChanged;

  @override
  $Res call({
    Object? availableLoginMethods = freezed,
  }) {
    return _then(_AvailableLoginMethodsChanged(
      availableLoginMethods == freezed
          ? _value.availableLoginMethods
          : availableLoginMethods // ignore: cast_nullable_to_non_nullable
              as List<LoginMethod>,
    ));
  }
}

/// @nodoc

class _$_AvailableLoginMethodsChanged implements _AvailableLoginMethodsChanged {
  const _$_AvailableLoginMethodsChanged(this.availableLoginMethods);

  @override
  final List<LoginMethod> availableLoginMethods;

  @override
  String toString() {
    return 'LoginMethodEvent.availableLoginMethodsChanged(availableLoginMethods: $availableLoginMethods)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AvailableLoginMethodsChanged &&
            (identical(other.availableLoginMethods, availableLoginMethods) ||
                const DeepCollectionEquality().equals(
                    other.availableLoginMethods, availableLoginMethods)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(availableLoginMethods);

  @JsonKey(ignore: true)
  @override
  _$AvailableLoginMethodsChangedCopyWith<_AvailableLoginMethodsChanged>
      get copyWith => __$AvailableLoginMethodsChangedCopyWithImpl<
          _AvailableLoginMethodsChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginMethod loginMethod) loginMethodChanged,
    required TResult Function(LoginMethod loginMethod) loginMethodSaved,
    required TResult Function(List<LoginMethod> availableLoginMethods)
        availableLoginMethodsChanged,
  }) {
    return availableLoginMethodsChanged(availableLoginMethods);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LoginMethod loginMethod)? loginMethodChanged,
    TResult Function(LoginMethod loginMethod)? loginMethodSaved,
    TResult Function(List<LoginMethod> availableLoginMethods)?
        availableLoginMethodsChanged,
  }) {
    return availableLoginMethodsChanged?.call(availableLoginMethods);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginMethod loginMethod)? loginMethodChanged,
    TResult Function(LoginMethod loginMethod)? loginMethodSaved,
    TResult Function(List<LoginMethod> availableLoginMethods)?
        availableLoginMethodsChanged,
    required TResult orElse(),
  }) {
    if (availableLoginMethodsChanged != null) {
      return availableLoginMethodsChanged(availableLoginMethods);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginMethodChanged value) loginMethodChanged,
    required TResult Function(_LoginMethodSaved value) loginMethodSaved,
    required TResult Function(_AvailableLoginMethodsChanged value)
        availableLoginMethodsChanged,
  }) {
    return availableLoginMethodsChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoginMethodChanged value)? loginMethodChanged,
    TResult Function(_LoginMethodSaved value)? loginMethodSaved,
    TResult Function(_AvailableLoginMethodsChanged value)?
        availableLoginMethodsChanged,
  }) {
    return availableLoginMethodsChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginMethodChanged value)? loginMethodChanged,
    TResult Function(_LoginMethodSaved value)? loginMethodSaved,
    TResult Function(_AvailableLoginMethodsChanged value)?
        availableLoginMethodsChanged,
    required TResult orElse(),
  }) {
    if (availableLoginMethodsChanged != null) {
      return availableLoginMethodsChanged(this);
    }
    return orElse();
  }
}

abstract class _AvailableLoginMethodsChanged implements LoginMethodEvent {
  const factory _AvailableLoginMethodsChanged(
          List<LoginMethod> availableLoginMethods) =
      _$_AvailableLoginMethodsChanged;

  List<LoginMethod> get availableLoginMethods =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$AvailableLoginMethodsChangedCopyWith<_AvailableLoginMethodsChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$LoginMethodStateTearOff {
  const _$LoginMethodStateTearOff();

  _LoginMethodState call(
      {required LoginMethod loginMethod,
      required List<LoginMethod> availableLoginMethods}) {
    return _LoginMethodState(
      loginMethod: loginMethod,
      availableLoginMethods: availableLoginMethods,
    );
  }
}

/// @nodoc
const $LoginMethodState = _$LoginMethodStateTearOff();

/// @nodoc
mixin _$LoginMethodState {
  LoginMethod get loginMethod => throw _privateConstructorUsedError;
  List<LoginMethod> get availableLoginMethods =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginMethodStateCopyWith<LoginMethodState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginMethodStateCopyWith<$Res> {
  factory $LoginMethodStateCopyWith(
          LoginMethodState value, $Res Function(LoginMethodState) then) =
      _$LoginMethodStateCopyWithImpl<$Res>;
  $Res call({LoginMethod loginMethod, List<LoginMethod> availableLoginMethods});
}

/// @nodoc
class _$LoginMethodStateCopyWithImpl<$Res>
    implements $LoginMethodStateCopyWith<$Res> {
  _$LoginMethodStateCopyWithImpl(this._value, this._then);

  final LoginMethodState _value;
  // ignore: unused_field
  final $Res Function(LoginMethodState) _then;

  @override
  $Res call({
    Object? loginMethod = freezed,
    Object? availableLoginMethods = freezed,
  }) {
    return _then(_value.copyWith(
      loginMethod: loginMethod == freezed
          ? _value.loginMethod
          : loginMethod // ignore: cast_nullable_to_non_nullable
              as LoginMethod,
      availableLoginMethods: availableLoginMethods == freezed
          ? _value.availableLoginMethods
          : availableLoginMethods // ignore: cast_nullable_to_non_nullable
              as List<LoginMethod>,
    ));
  }
}

/// @nodoc
abstract class _$LoginMethodStateCopyWith<$Res>
    implements $LoginMethodStateCopyWith<$Res> {
  factory _$LoginMethodStateCopyWith(
          _LoginMethodState value, $Res Function(_LoginMethodState) then) =
      __$LoginMethodStateCopyWithImpl<$Res>;
  @override
  $Res call({LoginMethod loginMethod, List<LoginMethod> availableLoginMethods});
}

/// @nodoc
class __$LoginMethodStateCopyWithImpl<$Res>
    extends _$LoginMethodStateCopyWithImpl<$Res>
    implements _$LoginMethodStateCopyWith<$Res> {
  __$LoginMethodStateCopyWithImpl(
      _LoginMethodState _value, $Res Function(_LoginMethodState) _then)
      : super(_value, (v) => _then(v as _LoginMethodState));

  @override
  _LoginMethodState get _value => super._value as _LoginMethodState;

  @override
  $Res call({
    Object? loginMethod = freezed,
    Object? availableLoginMethods = freezed,
  }) {
    return _then(_LoginMethodState(
      loginMethod: loginMethod == freezed
          ? _value.loginMethod
          : loginMethod // ignore: cast_nullable_to_non_nullable
              as LoginMethod,
      availableLoginMethods: availableLoginMethods == freezed
          ? _value.availableLoginMethods
          : availableLoginMethods // ignore: cast_nullable_to_non_nullable
              as List<LoginMethod>,
    ));
  }
}

/// @nodoc

class _$_LoginMethodState implements _LoginMethodState {
  const _$_LoginMethodState(
      {required this.loginMethod, required this.availableLoginMethods});

  @override
  final LoginMethod loginMethod;
  @override
  final List<LoginMethod> availableLoginMethods;

  @override
  String toString() {
    return 'LoginMethodState(loginMethod: $loginMethod, availableLoginMethods: $availableLoginMethods)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginMethodState &&
            (identical(other.loginMethod, loginMethod) ||
                const DeepCollectionEquality()
                    .equals(other.loginMethod, loginMethod)) &&
            (identical(other.availableLoginMethods, availableLoginMethods) ||
                const DeepCollectionEquality().equals(
                    other.availableLoginMethods, availableLoginMethods)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(loginMethod) ^
      const DeepCollectionEquality().hash(availableLoginMethods);

  @JsonKey(ignore: true)
  @override
  _$LoginMethodStateCopyWith<_LoginMethodState> get copyWith =>
      __$LoginMethodStateCopyWithImpl<_LoginMethodState>(this, _$identity);
}

abstract class _LoginMethodState implements LoginMethodState {
  const factory _LoginMethodState(
      {required LoginMethod loginMethod,
      required List<LoginMethod> availableLoginMethods}) = _$_LoginMethodState;

  @override
  LoginMethod get loginMethod => throw _privateConstructorUsedError;
  @override
  List<LoginMethod> get availableLoginMethods =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoginMethodStateCopyWith<_LoginMethodState> get copyWith =>
      throw _privateConstructorUsedError;
}
