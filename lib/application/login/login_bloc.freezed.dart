// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginEventTearOff {
  const _$LoginEventTearOff();

  _LoginSelected emailPasswordEntered(String email, String password) {
    return _LoginSelected(
      email,
      password,
    );
  }

  _FingerprintScanned fingerprintScanned() {
    return const _FingerprintScanned();
  }

  _FaceScanned faceScanned() {
    return const _FaceScanned();
  }
}

/// @nodoc
const $LoginEvent = _$LoginEventTearOff();

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
        emailPasswordEntered,
    required TResult Function() fingerprintScanned,
    required TResult Function() faceScanned,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? emailPasswordEntered,
    TResult Function()? fingerprintScanned,
    TResult Function()? faceScanned,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? emailPasswordEntered,
    TResult Function()? fingerprintScanned,
    TResult Function()? faceScanned,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginSelected value) emailPasswordEntered,
    required TResult Function(_FingerprintScanned value) fingerprintScanned,
    required TResult Function(_FaceScanned value) faceScanned,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoginSelected value)? emailPasswordEntered,
    TResult Function(_FingerprintScanned value)? fingerprintScanned,
    TResult Function(_FaceScanned value)? faceScanned,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginSelected value)? emailPasswordEntered,
    TResult Function(_FingerprintScanned value)? fingerprintScanned,
    TResult Function(_FaceScanned value)? faceScanned,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res> implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  final LoginEvent _value;
  // ignore: unused_field
  final $Res Function(LoginEvent) _then;
}

/// @nodoc
abstract class _$LoginSelectedCopyWith<$Res> {
  factory _$LoginSelectedCopyWith(
          _LoginSelected value, $Res Function(_LoginSelected) then) =
      __$LoginSelectedCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class __$LoginSelectedCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements _$LoginSelectedCopyWith<$Res> {
  __$LoginSelectedCopyWithImpl(
      _LoginSelected _value, $Res Function(_LoginSelected) _then)
      : super(_value, (v) => _then(v as _LoginSelected));

  @override
  _LoginSelected get _value => super._value as _LoginSelected;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_LoginSelected(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoginSelected implements _LoginSelected {
  const _$_LoginSelected(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginEvent.emailPasswordEntered(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginSelected &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$LoginSelectedCopyWith<_LoginSelected> get copyWith =>
      __$LoginSelectedCopyWithImpl<_LoginSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
        emailPasswordEntered,
    required TResult Function() fingerprintScanned,
    required TResult Function() faceScanned,
  }) {
    return emailPasswordEntered(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? emailPasswordEntered,
    TResult Function()? fingerprintScanned,
    TResult Function()? faceScanned,
  }) {
    return emailPasswordEntered?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? emailPasswordEntered,
    TResult Function()? fingerprintScanned,
    TResult Function()? faceScanned,
    required TResult orElse(),
  }) {
    if (emailPasswordEntered != null) {
      return emailPasswordEntered(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginSelected value) emailPasswordEntered,
    required TResult Function(_FingerprintScanned value) fingerprintScanned,
    required TResult Function(_FaceScanned value) faceScanned,
  }) {
    return emailPasswordEntered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoginSelected value)? emailPasswordEntered,
    TResult Function(_FingerprintScanned value)? fingerprintScanned,
    TResult Function(_FaceScanned value)? faceScanned,
  }) {
    return emailPasswordEntered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginSelected value)? emailPasswordEntered,
    TResult Function(_FingerprintScanned value)? fingerprintScanned,
    TResult Function(_FaceScanned value)? faceScanned,
    required TResult orElse(),
  }) {
    if (emailPasswordEntered != null) {
      return emailPasswordEntered(this);
    }
    return orElse();
  }
}

abstract class _LoginSelected implements LoginEvent {
  const factory _LoginSelected(String email, String password) =
      _$_LoginSelected;

  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoginSelectedCopyWith<_LoginSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FingerprintScannedCopyWith<$Res> {
  factory _$FingerprintScannedCopyWith(
          _FingerprintScanned value, $Res Function(_FingerprintScanned) then) =
      __$FingerprintScannedCopyWithImpl<$Res>;
}

/// @nodoc
class __$FingerprintScannedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements _$FingerprintScannedCopyWith<$Res> {
  __$FingerprintScannedCopyWithImpl(
      _FingerprintScanned _value, $Res Function(_FingerprintScanned) _then)
      : super(_value, (v) => _then(v as _FingerprintScanned));

  @override
  _FingerprintScanned get _value => super._value as _FingerprintScanned;
}

/// @nodoc

class _$_FingerprintScanned implements _FingerprintScanned {
  const _$_FingerprintScanned();

  @override
  String toString() {
    return 'LoginEvent.fingerprintScanned()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FingerprintScanned);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
        emailPasswordEntered,
    required TResult Function() fingerprintScanned,
    required TResult Function() faceScanned,
  }) {
    return fingerprintScanned();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? emailPasswordEntered,
    TResult Function()? fingerprintScanned,
    TResult Function()? faceScanned,
  }) {
    return fingerprintScanned?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? emailPasswordEntered,
    TResult Function()? fingerprintScanned,
    TResult Function()? faceScanned,
    required TResult orElse(),
  }) {
    if (fingerprintScanned != null) {
      return fingerprintScanned();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginSelected value) emailPasswordEntered,
    required TResult Function(_FingerprintScanned value) fingerprintScanned,
    required TResult Function(_FaceScanned value) faceScanned,
  }) {
    return fingerprintScanned(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoginSelected value)? emailPasswordEntered,
    TResult Function(_FingerprintScanned value)? fingerprintScanned,
    TResult Function(_FaceScanned value)? faceScanned,
  }) {
    return fingerprintScanned?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginSelected value)? emailPasswordEntered,
    TResult Function(_FingerprintScanned value)? fingerprintScanned,
    TResult Function(_FaceScanned value)? faceScanned,
    required TResult orElse(),
  }) {
    if (fingerprintScanned != null) {
      return fingerprintScanned(this);
    }
    return orElse();
  }
}

abstract class _FingerprintScanned implements LoginEvent {
  const factory _FingerprintScanned() = _$_FingerprintScanned;
}

/// @nodoc
abstract class _$FaceScannedCopyWith<$Res> {
  factory _$FaceScannedCopyWith(
          _FaceScanned value, $Res Function(_FaceScanned) then) =
      __$FaceScannedCopyWithImpl<$Res>;
}

/// @nodoc
class __$FaceScannedCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements _$FaceScannedCopyWith<$Res> {
  __$FaceScannedCopyWithImpl(
      _FaceScanned _value, $Res Function(_FaceScanned) _then)
      : super(_value, (v) => _then(v as _FaceScanned));

  @override
  _FaceScanned get _value => super._value as _FaceScanned;
}

/// @nodoc

class _$_FaceScanned implements _FaceScanned {
  const _$_FaceScanned();

  @override
  String toString() {
    return 'LoginEvent.faceScanned()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FaceScanned);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
        emailPasswordEntered,
    required TResult Function() fingerprintScanned,
    required TResult Function() faceScanned,
  }) {
    return faceScanned();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)? emailPasswordEntered,
    TResult Function()? fingerprintScanned,
    TResult Function()? faceScanned,
  }) {
    return faceScanned?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? emailPasswordEntered,
    TResult Function()? fingerprintScanned,
    TResult Function()? faceScanned,
    required TResult orElse(),
  }) {
    if (faceScanned != null) {
      return faceScanned();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginSelected value) emailPasswordEntered,
    required TResult Function(_FingerprintScanned value) fingerprintScanned,
    required TResult Function(_FaceScanned value) faceScanned,
  }) {
    return faceScanned(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoginSelected value)? emailPasswordEntered,
    TResult Function(_FingerprintScanned value)? fingerprintScanned,
    TResult Function(_FaceScanned value)? faceScanned,
  }) {
    return faceScanned?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginSelected value)? emailPasswordEntered,
    TResult Function(_FingerprintScanned value)? fingerprintScanned,
    TResult Function(_FaceScanned value)? faceScanned,
    required TResult orElse(),
  }) {
    if (faceScanned != null) {
      return faceScanned(this);
    }
    return orElse();
  }
}

abstract class _FaceScanned implements LoginEvent {
  const factory _FaceScanned() = _$_FaceScanned;
}

/// @nodoc
class _$LoginStateTearOff {
  const _$LoginStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading() {
    return const _Loading();
  }

  _Error error(LoginFailure failure) {
    return _Error(
      failure,
    );
  }

  _Success success(LoginStep loginStep) {
    return _Success(
      loginStep,
    );
  }

  _Unconfirmed unconfirmed() {
    return const _Unconfirmed();
  }
}

/// @nodoc
const $LoginState = _$LoginStateTearOff();

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LoginFailure failure) error,
    required TResult Function(LoginStep loginStep) success,
    required TResult Function() unconfirmed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginFailure failure)? error,
    TResult Function(LoginStep loginStep)? success,
    TResult Function()? unconfirmed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginFailure failure)? error,
    TResult Function(LoginStep loginStep)? success,
    TResult Function()? unconfirmed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
    required TResult Function(_Unconfirmed value) unconfirmed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_Unconfirmed value)? unconfirmed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_Unconfirmed value)? unconfirmed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
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
    return 'LoginState.initial()';
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
    required TResult Function() loading,
    required TResult Function(LoginFailure failure) error,
    required TResult Function(LoginStep loginStep) success,
    required TResult Function() unconfirmed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginFailure failure)? error,
    TResult Function(LoginStep loginStep)? success,
    TResult Function()? unconfirmed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginFailure failure)? error,
    TResult Function(LoginStep loginStep)? success,
    TResult Function()? unconfirmed,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
    required TResult Function(_Unconfirmed value) unconfirmed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_Unconfirmed value)? unconfirmed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_Unconfirmed value)? unconfirmed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LoginState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'LoginState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LoginFailure failure) error,
    required TResult Function(LoginStep loginStep) success,
    required TResult Function() unconfirmed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginFailure failure)? error,
    TResult Function(LoginStep loginStep)? success,
    TResult Function()? unconfirmed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginFailure failure)? error,
    TResult Function(LoginStep loginStep)? success,
    TResult Function()? unconfirmed,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
    required TResult Function(_Unconfirmed value) unconfirmed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_Unconfirmed value)? unconfirmed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_Unconfirmed value)? unconfirmed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements LoginState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({LoginFailure failure});

  $LoginFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_Error(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as LoginFailure,
    ));
  }

  @override
  $LoginFailureCopyWith<$Res> get failure {
    return $LoginFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.failure);

  @override
  final LoginFailure failure;

  @override
  String toString() {
    return 'LoginState.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LoginFailure failure) error,
    required TResult Function(LoginStep loginStep) success,
    required TResult Function() unconfirmed,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginFailure failure)? error,
    TResult Function(LoginStep loginStep)? success,
    TResult Function()? unconfirmed,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginFailure failure)? error,
    TResult Function(LoginStep loginStep)? success,
    TResult Function()? unconfirmed,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
    required TResult Function(_Unconfirmed value) unconfirmed,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_Unconfirmed value)? unconfirmed,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_Unconfirmed value)? unconfirmed,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements LoginState {
  const factory _Error(LoginFailure failure) = _$_Error;

  LoginFailure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SuccessCopyWith<$Res> {
  factory _$SuccessCopyWith(_Success value, $Res Function(_Success) then) =
      __$SuccessCopyWithImpl<$Res>;
  $Res call({LoginStep loginStep});
}

/// @nodoc
class __$SuccessCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$SuccessCopyWith<$Res> {
  __$SuccessCopyWithImpl(_Success _value, $Res Function(_Success) _then)
      : super(_value, (v) => _then(v as _Success));

  @override
  _Success get _value => super._value as _Success;

  @override
  $Res call({
    Object? loginStep = freezed,
  }) {
    return _then(_Success(
      loginStep == freezed
          ? _value.loginStep
          : loginStep // ignore: cast_nullable_to_non_nullable
              as LoginStep,
    ));
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success(this.loginStep);

  @override
  final LoginStep loginStep;

  @override
  String toString() {
    return 'LoginState.success(loginStep: $loginStep)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Success &&
            (identical(other.loginStep, loginStep) ||
                const DeepCollectionEquality()
                    .equals(other.loginStep, loginStep)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(loginStep);

  @JsonKey(ignore: true)
  @override
  _$SuccessCopyWith<_Success> get copyWith =>
      __$SuccessCopyWithImpl<_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LoginFailure failure) error,
    required TResult Function(LoginStep loginStep) success,
    required TResult Function() unconfirmed,
  }) {
    return success(loginStep);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginFailure failure)? error,
    TResult Function(LoginStep loginStep)? success,
    TResult Function()? unconfirmed,
  }) {
    return success?.call(loginStep);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginFailure failure)? error,
    TResult Function(LoginStep loginStep)? success,
    TResult Function()? unconfirmed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(loginStep);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
    required TResult Function(_Unconfirmed value) unconfirmed,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_Unconfirmed value)? unconfirmed,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_Unconfirmed value)? unconfirmed,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements LoginState {
  const factory _Success(LoginStep loginStep) = _$_Success;

  LoginStep get loginStep => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SuccessCopyWith<_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UnconfirmedCopyWith<$Res> {
  factory _$UnconfirmedCopyWith(
          _Unconfirmed value, $Res Function(_Unconfirmed) then) =
      __$UnconfirmedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnconfirmedCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$UnconfirmedCopyWith<$Res> {
  __$UnconfirmedCopyWithImpl(
      _Unconfirmed _value, $Res Function(_Unconfirmed) _then)
      : super(_value, (v) => _then(v as _Unconfirmed));

  @override
  _Unconfirmed get _value => super._value as _Unconfirmed;
}

/// @nodoc

class _$_Unconfirmed implements _Unconfirmed {
  const _$_Unconfirmed();

  @override
  String toString() {
    return 'LoginState.unconfirmed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Unconfirmed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LoginFailure failure) error,
    required TResult Function(LoginStep loginStep) success,
    required TResult Function() unconfirmed,
  }) {
    return unconfirmed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginFailure failure)? error,
    TResult Function(LoginStep loginStep)? success,
    TResult Function()? unconfirmed,
  }) {
    return unconfirmed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginFailure failure)? error,
    TResult Function(LoginStep loginStep)? success,
    TResult Function()? unconfirmed,
    required TResult orElse(),
  }) {
    if (unconfirmed != null) {
      return unconfirmed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
    required TResult Function(_Unconfirmed value) unconfirmed,
  }) {
    return unconfirmed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_Unconfirmed value)? unconfirmed,
  }) {
    return unconfirmed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_Unconfirmed value)? unconfirmed,
    required TResult orElse(),
  }) {
    if (unconfirmed != null) {
      return unconfirmed(this);
    }
    return orElse();
  }
}

abstract class _Unconfirmed implements LoginState {
  const factory _Unconfirmed() = _$_Unconfirmed;
}
