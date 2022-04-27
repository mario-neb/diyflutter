// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

  _NotAuthorized notAuthorized() {
    return const _NotAuthorized();
  }

  _UsernameExists usernameExists() {
    return const _UsernameExists();
  }

  _ExpiredRefreshToken expiredRefreshToken() {
    return const _ExpiredRefreshToken();
  }

  _Unexpected unexpected() {
    return const _Unexpected();
  }

  _InvalidPassword invalidPassword() {
    return const _InvalidPassword();
  }

  _InvalidValueInputted invalidValueInputted() {
    return const _InvalidValueInputted();
  }
}

/// @nodoc
const $AuthFailure = _$AuthFailureTearOff();

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function() usernameExists,
    required TResult Function() expiredRefreshToken,
    required TResult Function() unexpected,
    required TResult Function() invalidPassword,
    required TResult Function() invalidValueInputted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? usernameExists,
    TResult Function()? expiredRefreshToken,
    TResult Function()? unexpected,
    TResult Function()? invalidPassword,
    TResult Function()? invalidValueInputted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? usernameExists,
    TResult Function()? expiredRefreshToken,
    TResult Function()? unexpected,
    TResult Function()? invalidPassword,
    TResult Function()? invalidValueInputted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotAuthorized value) notAuthorized,
    required TResult Function(_UsernameExists value) usernameExists,
    required TResult Function(_ExpiredRefreshToken value) expiredRefreshToken,
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_InvalidPassword value) invalidPassword,
    required TResult Function(_InvalidValueInputted value) invalidValueInputted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NotAuthorized value)? notAuthorized,
    TResult Function(_UsernameExists value)? usernameExists,
    TResult Function(_ExpiredRefreshToken value)? expiredRefreshToken,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InvalidPassword value)? invalidPassword,
    TResult Function(_InvalidValueInputted value)? invalidValueInputted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotAuthorized value)? notAuthorized,
    TResult Function(_UsernameExists value)? usernameExists,
    TResult Function(_ExpiredRefreshToken value)? expiredRefreshToken,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InvalidPassword value)? invalidPassword,
    TResult Function(_InvalidValueInputted value)? invalidValueInputted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

/// @nodoc
abstract class _$NotAuthorizedCopyWith<$Res> {
  factory _$NotAuthorizedCopyWith(
          _NotAuthorized value, $Res Function(_NotAuthorized) then) =
      __$NotAuthorizedCopyWithImpl<$Res>;
}

/// @nodoc
class __$NotAuthorizedCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$NotAuthorizedCopyWith<$Res> {
  __$NotAuthorizedCopyWithImpl(
      _NotAuthorized _value, $Res Function(_NotAuthorized) _then)
      : super(_value, (v) => _then(v as _NotAuthorized));

  @override
  _NotAuthorized get _value => super._value as _NotAuthorized;
}

/// @nodoc

class _$_NotAuthorized implements _NotAuthorized {
  const _$_NotAuthorized();

  @override
  String toString() {
    return 'AuthFailure.notAuthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NotAuthorized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function() usernameExists,
    required TResult Function() expiredRefreshToken,
    required TResult Function() unexpected,
    required TResult Function() invalidPassword,
    required TResult Function() invalidValueInputted,
  }) {
    return notAuthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? usernameExists,
    TResult Function()? expiredRefreshToken,
    TResult Function()? unexpected,
    TResult Function()? invalidPassword,
    TResult Function()? invalidValueInputted,
  }) {
    return notAuthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? usernameExists,
    TResult Function()? expiredRefreshToken,
    TResult Function()? unexpected,
    TResult Function()? invalidPassword,
    TResult Function()? invalidValueInputted,
    required TResult orElse(),
  }) {
    if (notAuthorized != null) {
      return notAuthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotAuthorized value) notAuthorized,
    required TResult Function(_UsernameExists value) usernameExists,
    required TResult Function(_ExpiredRefreshToken value) expiredRefreshToken,
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_InvalidPassword value) invalidPassword,
    required TResult Function(_InvalidValueInputted value) invalidValueInputted,
  }) {
    return notAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NotAuthorized value)? notAuthorized,
    TResult Function(_UsernameExists value)? usernameExists,
    TResult Function(_ExpiredRefreshToken value)? expiredRefreshToken,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InvalidPassword value)? invalidPassword,
    TResult Function(_InvalidValueInputted value)? invalidValueInputted,
  }) {
    return notAuthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotAuthorized value)? notAuthorized,
    TResult Function(_UsernameExists value)? usernameExists,
    TResult Function(_ExpiredRefreshToken value)? expiredRefreshToken,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InvalidPassword value)? invalidPassword,
    TResult Function(_InvalidValueInputted value)? invalidValueInputted,
    required TResult orElse(),
  }) {
    if (notAuthorized != null) {
      return notAuthorized(this);
    }
    return orElse();
  }
}

abstract class _NotAuthorized implements AuthFailure {
  const factory _NotAuthorized() = _$_NotAuthorized;
}

/// @nodoc
abstract class _$UsernameExistsCopyWith<$Res> {
  factory _$UsernameExistsCopyWith(
          _UsernameExists value, $Res Function(_UsernameExists) then) =
      __$UsernameExistsCopyWithImpl<$Res>;
}

/// @nodoc
class __$UsernameExistsCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements _$UsernameExistsCopyWith<$Res> {
  __$UsernameExistsCopyWithImpl(
      _UsernameExists _value, $Res Function(_UsernameExists) _then)
      : super(_value, (v) => _then(v as _UsernameExists));

  @override
  _UsernameExists get _value => super._value as _UsernameExists;
}

/// @nodoc

class _$_UsernameExists implements _UsernameExists {
  const _$_UsernameExists();

  @override
  String toString() {
    return 'AuthFailure.usernameExists()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UsernameExists);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function() usernameExists,
    required TResult Function() expiredRefreshToken,
    required TResult Function() unexpected,
    required TResult Function() invalidPassword,
    required TResult Function() invalidValueInputted,
  }) {
    return usernameExists();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? usernameExists,
    TResult Function()? expiredRefreshToken,
    TResult Function()? unexpected,
    TResult Function()? invalidPassword,
    TResult Function()? invalidValueInputted,
  }) {
    return usernameExists?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? usernameExists,
    TResult Function()? expiredRefreshToken,
    TResult Function()? unexpected,
    TResult Function()? invalidPassword,
    TResult Function()? invalidValueInputted,
    required TResult orElse(),
  }) {
    if (usernameExists != null) {
      return usernameExists();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotAuthorized value) notAuthorized,
    required TResult Function(_UsernameExists value) usernameExists,
    required TResult Function(_ExpiredRefreshToken value) expiredRefreshToken,
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_InvalidPassword value) invalidPassword,
    required TResult Function(_InvalidValueInputted value) invalidValueInputted,
  }) {
    return usernameExists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NotAuthorized value)? notAuthorized,
    TResult Function(_UsernameExists value)? usernameExists,
    TResult Function(_ExpiredRefreshToken value)? expiredRefreshToken,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InvalidPassword value)? invalidPassword,
    TResult Function(_InvalidValueInputted value)? invalidValueInputted,
  }) {
    return usernameExists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotAuthorized value)? notAuthorized,
    TResult Function(_UsernameExists value)? usernameExists,
    TResult Function(_ExpiredRefreshToken value)? expiredRefreshToken,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InvalidPassword value)? invalidPassword,
    TResult Function(_InvalidValueInputted value)? invalidValueInputted,
    required TResult orElse(),
  }) {
    if (usernameExists != null) {
      return usernameExists(this);
    }
    return orElse();
  }
}

abstract class _UsernameExists implements AuthFailure {
  const factory _UsernameExists() = _$_UsernameExists;
}

/// @nodoc
abstract class _$ExpiredRefreshTokenCopyWith<$Res> {
  factory _$ExpiredRefreshTokenCopyWith(_ExpiredRefreshToken value,
          $Res Function(_ExpiredRefreshToken) then) =
      __$ExpiredRefreshTokenCopyWithImpl<$Res>;
}

/// @nodoc
class __$ExpiredRefreshTokenCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements _$ExpiredRefreshTokenCopyWith<$Res> {
  __$ExpiredRefreshTokenCopyWithImpl(
      _ExpiredRefreshToken _value, $Res Function(_ExpiredRefreshToken) _then)
      : super(_value, (v) => _then(v as _ExpiredRefreshToken));

  @override
  _ExpiredRefreshToken get _value => super._value as _ExpiredRefreshToken;
}

/// @nodoc

class _$_ExpiredRefreshToken implements _ExpiredRefreshToken {
  const _$_ExpiredRefreshToken();

  @override
  String toString() {
    return 'AuthFailure.expiredRefreshToken()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ExpiredRefreshToken);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function() usernameExists,
    required TResult Function() expiredRefreshToken,
    required TResult Function() unexpected,
    required TResult Function() invalidPassword,
    required TResult Function() invalidValueInputted,
  }) {
    return expiredRefreshToken();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? usernameExists,
    TResult Function()? expiredRefreshToken,
    TResult Function()? unexpected,
    TResult Function()? invalidPassword,
    TResult Function()? invalidValueInputted,
  }) {
    return expiredRefreshToken?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? usernameExists,
    TResult Function()? expiredRefreshToken,
    TResult Function()? unexpected,
    TResult Function()? invalidPassword,
    TResult Function()? invalidValueInputted,
    required TResult orElse(),
  }) {
    if (expiredRefreshToken != null) {
      return expiredRefreshToken();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotAuthorized value) notAuthorized,
    required TResult Function(_UsernameExists value) usernameExists,
    required TResult Function(_ExpiredRefreshToken value) expiredRefreshToken,
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_InvalidPassword value) invalidPassword,
    required TResult Function(_InvalidValueInputted value) invalidValueInputted,
  }) {
    return expiredRefreshToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NotAuthorized value)? notAuthorized,
    TResult Function(_UsernameExists value)? usernameExists,
    TResult Function(_ExpiredRefreshToken value)? expiredRefreshToken,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InvalidPassword value)? invalidPassword,
    TResult Function(_InvalidValueInputted value)? invalidValueInputted,
  }) {
    return expiredRefreshToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotAuthorized value)? notAuthorized,
    TResult Function(_UsernameExists value)? usernameExists,
    TResult Function(_ExpiredRefreshToken value)? expiredRefreshToken,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InvalidPassword value)? invalidPassword,
    TResult Function(_InvalidValueInputted value)? invalidValueInputted,
    required TResult orElse(),
  }) {
    if (expiredRefreshToken != null) {
      return expiredRefreshToken(this);
    }
    return orElse();
  }
}

abstract class _ExpiredRefreshToken implements AuthFailure {
  const factory _ExpiredRefreshToken() = _$_ExpiredRefreshToken;
}

/// @nodoc
abstract class _$UnexpectedCopyWith<$Res> {
  factory _$UnexpectedCopyWith(
          _Unexpected value, $Res Function(_Unexpected) then) =
      __$UnexpectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnexpectedCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$UnexpectedCopyWith<$Res> {
  __$UnexpectedCopyWithImpl(
      _Unexpected _value, $Res Function(_Unexpected) _then)
      : super(_value, (v) => _then(v as _Unexpected));

  @override
  _Unexpected get _value => super._value as _Unexpected;
}

/// @nodoc

class _$_Unexpected implements _Unexpected {
  const _$_Unexpected();

  @override
  String toString() {
    return 'AuthFailure.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Unexpected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function() usernameExists,
    required TResult Function() expiredRefreshToken,
    required TResult Function() unexpected,
    required TResult Function() invalidPassword,
    required TResult Function() invalidValueInputted,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? usernameExists,
    TResult Function()? expiredRefreshToken,
    TResult Function()? unexpected,
    TResult Function()? invalidPassword,
    TResult Function()? invalidValueInputted,
  }) {
    return unexpected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? usernameExists,
    TResult Function()? expiredRefreshToken,
    TResult Function()? unexpected,
    TResult Function()? invalidPassword,
    TResult Function()? invalidValueInputted,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotAuthorized value) notAuthorized,
    required TResult Function(_UsernameExists value) usernameExists,
    required TResult Function(_ExpiredRefreshToken value) expiredRefreshToken,
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_InvalidPassword value) invalidPassword,
    required TResult Function(_InvalidValueInputted value) invalidValueInputted,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NotAuthorized value)? notAuthorized,
    TResult Function(_UsernameExists value)? usernameExists,
    TResult Function(_ExpiredRefreshToken value)? expiredRefreshToken,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InvalidPassword value)? invalidPassword,
    TResult Function(_InvalidValueInputted value)? invalidValueInputted,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotAuthorized value)? notAuthorized,
    TResult Function(_UsernameExists value)? usernameExists,
    TResult Function(_ExpiredRefreshToken value)? expiredRefreshToken,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InvalidPassword value)? invalidPassword,
    TResult Function(_InvalidValueInputted value)? invalidValueInputted,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected implements AuthFailure {
  const factory _Unexpected() = _$_Unexpected;
}

/// @nodoc
abstract class _$InvalidPasswordCopyWith<$Res> {
  factory _$InvalidPasswordCopyWith(
          _InvalidPassword value, $Res Function(_InvalidPassword) then) =
      __$InvalidPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$InvalidPasswordCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements _$InvalidPasswordCopyWith<$Res> {
  __$InvalidPasswordCopyWithImpl(
      _InvalidPassword _value, $Res Function(_InvalidPassword) _then)
      : super(_value, (v) => _then(v as _InvalidPassword));

  @override
  _InvalidPassword get _value => super._value as _InvalidPassword;
}

/// @nodoc

class _$_InvalidPassword implements _InvalidPassword {
  const _$_InvalidPassword();

  @override
  String toString() {
    return 'AuthFailure.invalidPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InvalidPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function() usernameExists,
    required TResult Function() expiredRefreshToken,
    required TResult Function() unexpected,
    required TResult Function() invalidPassword,
    required TResult Function() invalidValueInputted,
  }) {
    return invalidPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? usernameExists,
    TResult Function()? expiredRefreshToken,
    TResult Function()? unexpected,
    TResult Function()? invalidPassword,
    TResult Function()? invalidValueInputted,
  }) {
    return invalidPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? usernameExists,
    TResult Function()? expiredRefreshToken,
    TResult Function()? unexpected,
    TResult Function()? invalidPassword,
    TResult Function()? invalidValueInputted,
    required TResult orElse(),
  }) {
    if (invalidPassword != null) {
      return invalidPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotAuthorized value) notAuthorized,
    required TResult Function(_UsernameExists value) usernameExists,
    required TResult Function(_ExpiredRefreshToken value) expiredRefreshToken,
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_InvalidPassword value) invalidPassword,
    required TResult Function(_InvalidValueInputted value) invalidValueInputted,
  }) {
    return invalidPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NotAuthorized value)? notAuthorized,
    TResult Function(_UsernameExists value)? usernameExists,
    TResult Function(_ExpiredRefreshToken value)? expiredRefreshToken,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InvalidPassword value)? invalidPassword,
    TResult Function(_InvalidValueInputted value)? invalidValueInputted,
  }) {
    return invalidPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotAuthorized value)? notAuthorized,
    TResult Function(_UsernameExists value)? usernameExists,
    TResult Function(_ExpiredRefreshToken value)? expiredRefreshToken,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InvalidPassword value)? invalidPassword,
    TResult Function(_InvalidValueInputted value)? invalidValueInputted,
    required TResult orElse(),
  }) {
    if (invalidPassword != null) {
      return invalidPassword(this);
    }
    return orElse();
  }
}

abstract class _InvalidPassword implements AuthFailure {
  const factory _InvalidPassword() = _$_InvalidPassword;
}

/// @nodoc
abstract class _$InvalidValueInputtedCopyWith<$Res> {
  factory _$InvalidValueInputtedCopyWith(_InvalidValueInputted value,
          $Res Function(_InvalidValueInputted) then) =
      __$InvalidValueInputtedCopyWithImpl<$Res>;
}

/// @nodoc
class __$InvalidValueInputtedCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements _$InvalidValueInputtedCopyWith<$Res> {
  __$InvalidValueInputtedCopyWithImpl(
      _InvalidValueInputted _value, $Res Function(_InvalidValueInputted) _then)
      : super(_value, (v) => _then(v as _InvalidValueInputted));

  @override
  _InvalidValueInputted get _value => super._value as _InvalidValueInputted;
}

/// @nodoc

class _$_InvalidValueInputted implements _InvalidValueInputted {
  const _$_InvalidValueInputted();

  @override
  String toString() {
    return 'AuthFailure.invalidValueInputted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InvalidValueInputted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function() usernameExists,
    required TResult Function() expiredRefreshToken,
    required TResult Function() unexpected,
    required TResult Function() invalidPassword,
    required TResult Function() invalidValueInputted,
  }) {
    return invalidValueInputted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? usernameExists,
    TResult Function()? expiredRefreshToken,
    TResult Function()? unexpected,
    TResult Function()? invalidPassword,
    TResult Function()? invalidValueInputted,
  }) {
    return invalidValueInputted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function()? usernameExists,
    TResult Function()? expiredRefreshToken,
    TResult Function()? unexpected,
    TResult Function()? invalidPassword,
    TResult Function()? invalidValueInputted,
    required TResult orElse(),
  }) {
    if (invalidValueInputted != null) {
      return invalidValueInputted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotAuthorized value) notAuthorized,
    required TResult Function(_UsernameExists value) usernameExists,
    required TResult Function(_ExpiredRefreshToken value) expiredRefreshToken,
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_InvalidPassword value) invalidPassword,
    required TResult Function(_InvalidValueInputted value) invalidValueInputted,
  }) {
    return invalidValueInputted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NotAuthorized value)? notAuthorized,
    TResult Function(_UsernameExists value)? usernameExists,
    TResult Function(_ExpiredRefreshToken value)? expiredRefreshToken,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InvalidPassword value)? invalidPassword,
    TResult Function(_InvalidValueInputted value)? invalidValueInputted,
  }) {
    return invalidValueInputted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotAuthorized value)? notAuthorized,
    TResult Function(_UsernameExists value)? usernameExists,
    TResult Function(_ExpiredRefreshToken value)? expiredRefreshToken,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_InvalidPassword value)? invalidPassword,
    TResult Function(_InvalidValueInputted value)? invalidValueInputted,
    required TResult orElse(),
  }) {
    if (invalidValueInputted != null) {
      return invalidValueInputted(this);
    }
    return orElse();
  }
}

abstract class _InvalidValueInputted implements AuthFailure {
  const factory _InvalidValueInputted() = _$_InvalidValueInputted;
}
