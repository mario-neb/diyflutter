// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

  InvalidEmail<T> invalidEmail<T>({required T failedValue}) {
    return InvalidEmail<T>(
      failedValue: failedValue,
    );
  }

  Empty<T> empty<T>({required T failedValue}) {
    return Empty<T>(
      failedValue: failedValue,
    );
  }

  Missing<T> missing<T>() {
    return Missing<T>();
  }

  WrongLength<T> wrongLength<T>({required T failedValue}) {
    return WrongLength<T>(
      failedValue: failedValue,
    );
  }

  InvalidConfirmationCode<T> invalidConfirmationCode<T>(
      {required T failedValue}) {
    return InvalidConfirmationCode<T>(
      failedValue: failedValue,
    );
  }

  InvalidValue<T> invalidValue<T>({required T failedValue}) {
    return InvalidValue<T>(
      failedValue: failedValue,
    );
  }
}

/// @nodoc
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) empty,
    required TResult Function() missing,
    required TResult Function(T failedValue) wrongLength,
    required TResult Function(T failedValue) invalidConfirmationCode,
    required TResult Function(T failedValue) invalidValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? empty,
    TResult Function()? missing,
    TResult Function(T failedValue)? wrongLength,
    TResult Function(T failedValue)? invalidConfirmationCode,
    TResult Function(T failedValue)? invalidValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? empty,
    TResult Function()? missing,
    TResult Function(T failedValue)? wrongLength,
    TResult Function(T failedValue)? invalidConfirmationCode,
    TResult Function(T failedValue)? invalidValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Missing<T> value) missing,
    required TResult Function(WrongLength<T> value) wrongLength,
    required TResult Function(InvalidConfirmationCode<T> value)
        invalidConfirmationCode,
    required TResult Function(InvalidValue<T> value) invalidValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Missing<T> value)? missing,
    TResult Function(WrongLength<T> value)? wrongLength,
    TResult Function(InvalidConfirmationCode<T> value)? invalidConfirmationCode,
    TResult Function(InvalidValue<T> value)? invalidValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Missing<T> value)? missing,
    TResult Function(WrongLength<T> value)? wrongLength,
    TResult Function(InvalidConfirmationCode<T> value)? invalidConfirmationCode,
    TResult Function(InvalidValue<T> value)? invalidValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;
}

/// @nodoc
abstract class $InvalidEmailCopyWith<T, $Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail<T> value, $Res Function(InvalidEmail<T>) then) =
      _$InvalidEmailCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidEmailCopyWith<T, $Res> {
  _$InvalidEmailCopyWithImpl(
      InvalidEmail<T> _value, $Res Function(InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as InvalidEmail<T>));

  @override
  InvalidEmail<T> get _value => super._value as InvalidEmail<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InvalidEmail<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidEmail<T> implements InvalidEmail<T> {
  const _$InvalidEmail({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidEmail<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      _$InvalidEmailCopyWithImpl<T, InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) empty,
    required TResult Function() missing,
    required TResult Function(T failedValue) wrongLength,
    required TResult Function(T failedValue) invalidConfirmationCode,
    required TResult Function(T failedValue) invalidValue,
  }) {
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? empty,
    TResult Function()? missing,
    TResult Function(T failedValue)? wrongLength,
    TResult Function(T failedValue)? invalidConfirmationCode,
    TResult Function(T failedValue)? invalidValue,
  }) {
    return invalidEmail?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? empty,
    TResult Function()? missing,
    TResult Function(T failedValue)? wrongLength,
    TResult Function(T failedValue)? invalidConfirmationCode,
    TResult Function(T failedValue)? invalidValue,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Missing<T> value) missing,
    required TResult Function(WrongLength<T> value) wrongLength,
    required TResult Function(InvalidConfirmationCode<T> value)
        invalidConfirmationCode,
    required TResult Function(InvalidValue<T> value) invalidValue,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Missing<T> value)? missing,
    TResult Function(WrongLength<T> value)? wrongLength,
    TResult Function(InvalidConfirmationCode<T> value)? invalidConfirmationCode,
    TResult Function(InvalidValue<T> value)? invalidValue,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Missing<T> value)? missing,
    TResult Function(WrongLength<T> value)? wrongLength,
    TResult Function(InvalidConfirmationCode<T> value)? invalidConfirmationCode,
    TResult Function(InvalidValue<T> value)? invalidValue,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail({required T failedValue}) = _$InvalidEmail<T>;

  T get failedValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmptyCopyWith<T, $Res> {
  factory $EmptyCopyWith(Empty<T> value, $Res Function(Empty<T>) then) =
      _$EmptyCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$EmptyCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $EmptyCopyWith<T, $Res> {
  _$EmptyCopyWithImpl(Empty<T> _value, $Res Function(Empty<T>) _then)
      : super(_value, (v) => _then(v as Empty<T>));

  @override
  Empty<T> get _value => super._value as Empty<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(Empty<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$Empty<T> implements Empty<T> {
  const _$Empty({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.empty(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Empty<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $EmptyCopyWith<T, Empty<T>> get copyWith =>
      _$EmptyCopyWithImpl<T, Empty<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) empty,
    required TResult Function() missing,
    required TResult Function(T failedValue) wrongLength,
    required TResult Function(T failedValue) invalidConfirmationCode,
    required TResult Function(T failedValue) invalidValue,
  }) {
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? empty,
    TResult Function()? missing,
    TResult Function(T failedValue)? wrongLength,
    TResult Function(T failedValue)? invalidConfirmationCode,
    TResult Function(T failedValue)? invalidValue,
  }) {
    return empty?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? empty,
    TResult Function()? missing,
    TResult Function(T failedValue)? wrongLength,
    TResult Function(T failedValue)? invalidConfirmationCode,
    TResult Function(T failedValue)? invalidValue,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Missing<T> value) missing,
    required TResult Function(WrongLength<T> value) wrongLength,
    required TResult Function(InvalidConfirmationCode<T> value)
        invalidConfirmationCode,
    required TResult Function(InvalidValue<T> value) invalidValue,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Missing<T> value)? missing,
    TResult Function(WrongLength<T> value)? wrongLength,
    TResult Function(InvalidConfirmationCode<T> value)? invalidConfirmationCode,
    TResult Function(InvalidValue<T> value)? invalidValue,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Missing<T> value)? missing,
    TResult Function(WrongLength<T> value)? wrongLength,
    TResult Function(InvalidConfirmationCode<T> value)? invalidConfirmationCode,
    TResult Function(InvalidValue<T> value)? invalidValue,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<T> implements ValueFailure<T> {
  const factory Empty({required T failedValue}) = _$Empty<T>;

  T get failedValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmptyCopyWith<T, Empty<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MissingCopyWith<T, $Res> {
  factory $MissingCopyWith(Missing<T> value, $Res Function(Missing<T>) then) =
      _$MissingCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$MissingCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $MissingCopyWith<T, $Res> {
  _$MissingCopyWithImpl(Missing<T> _value, $Res Function(Missing<T>) _then)
      : super(_value, (v) => _then(v as Missing<T>));

  @override
  Missing<T> get _value => super._value as Missing<T>;
}

/// @nodoc

class _$Missing<T> implements Missing<T> {
  const _$Missing();

  @override
  String toString() {
    return 'ValueFailure<$T>.missing()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Missing<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) empty,
    required TResult Function() missing,
    required TResult Function(T failedValue) wrongLength,
    required TResult Function(T failedValue) invalidConfirmationCode,
    required TResult Function(T failedValue) invalidValue,
  }) {
    return missing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? empty,
    TResult Function()? missing,
    TResult Function(T failedValue)? wrongLength,
    TResult Function(T failedValue)? invalidConfirmationCode,
    TResult Function(T failedValue)? invalidValue,
  }) {
    return missing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? empty,
    TResult Function()? missing,
    TResult Function(T failedValue)? wrongLength,
    TResult Function(T failedValue)? invalidConfirmationCode,
    TResult Function(T failedValue)? invalidValue,
    required TResult orElse(),
  }) {
    if (missing != null) {
      return missing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Missing<T> value) missing,
    required TResult Function(WrongLength<T> value) wrongLength,
    required TResult Function(InvalidConfirmationCode<T> value)
        invalidConfirmationCode,
    required TResult Function(InvalidValue<T> value) invalidValue,
  }) {
    return missing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Missing<T> value)? missing,
    TResult Function(WrongLength<T> value)? wrongLength,
    TResult Function(InvalidConfirmationCode<T> value)? invalidConfirmationCode,
    TResult Function(InvalidValue<T> value)? invalidValue,
  }) {
    return missing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Missing<T> value)? missing,
    TResult Function(WrongLength<T> value)? wrongLength,
    TResult Function(InvalidConfirmationCode<T> value)? invalidConfirmationCode,
    TResult Function(InvalidValue<T> value)? invalidValue,
    required TResult orElse(),
  }) {
    if (missing != null) {
      return missing(this);
    }
    return orElse();
  }
}

abstract class Missing<T> implements ValueFailure<T> {
  const factory Missing() = _$Missing<T>;
}

/// @nodoc
abstract class $WrongLengthCopyWith<T, $Res> {
  factory $WrongLengthCopyWith(
          WrongLength<T> value, $Res Function(WrongLength<T>) then) =
      _$WrongLengthCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$WrongLengthCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $WrongLengthCopyWith<T, $Res> {
  _$WrongLengthCopyWithImpl(
      WrongLength<T> _value, $Res Function(WrongLength<T>) _then)
      : super(_value, (v) => _then(v as WrongLength<T>));

  @override
  WrongLength<T> get _value => super._value as WrongLength<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(WrongLength<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$WrongLength<T> implements WrongLength<T> {
  const _$WrongLength({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.wrongLength(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WrongLength<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $WrongLengthCopyWith<T, WrongLength<T>> get copyWith =>
      _$WrongLengthCopyWithImpl<T, WrongLength<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) empty,
    required TResult Function() missing,
    required TResult Function(T failedValue) wrongLength,
    required TResult Function(T failedValue) invalidConfirmationCode,
    required TResult Function(T failedValue) invalidValue,
  }) {
    return wrongLength(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? empty,
    TResult Function()? missing,
    TResult Function(T failedValue)? wrongLength,
    TResult Function(T failedValue)? invalidConfirmationCode,
    TResult Function(T failedValue)? invalidValue,
  }) {
    return wrongLength?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? empty,
    TResult Function()? missing,
    TResult Function(T failedValue)? wrongLength,
    TResult Function(T failedValue)? invalidConfirmationCode,
    TResult Function(T failedValue)? invalidValue,
    required TResult orElse(),
  }) {
    if (wrongLength != null) {
      return wrongLength(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Missing<T> value) missing,
    required TResult Function(WrongLength<T> value) wrongLength,
    required TResult Function(InvalidConfirmationCode<T> value)
        invalidConfirmationCode,
    required TResult Function(InvalidValue<T> value) invalidValue,
  }) {
    return wrongLength(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Missing<T> value)? missing,
    TResult Function(WrongLength<T> value)? wrongLength,
    TResult Function(InvalidConfirmationCode<T> value)? invalidConfirmationCode,
    TResult Function(InvalidValue<T> value)? invalidValue,
  }) {
    return wrongLength?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Missing<T> value)? missing,
    TResult Function(WrongLength<T> value)? wrongLength,
    TResult Function(InvalidConfirmationCode<T> value)? invalidConfirmationCode,
    TResult Function(InvalidValue<T> value)? invalidValue,
    required TResult orElse(),
  }) {
    if (wrongLength != null) {
      return wrongLength(this);
    }
    return orElse();
  }
}

abstract class WrongLength<T> implements ValueFailure<T> {
  const factory WrongLength({required T failedValue}) = _$WrongLength<T>;

  T get failedValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WrongLengthCopyWith<T, WrongLength<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidConfirmationCodeCopyWith<T, $Res> {
  factory $InvalidConfirmationCodeCopyWith(InvalidConfirmationCode<T> value,
          $Res Function(InvalidConfirmationCode<T>) then) =
      _$InvalidConfirmationCodeCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidConfirmationCodeCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidConfirmationCodeCopyWith<T, $Res> {
  _$InvalidConfirmationCodeCopyWithImpl(InvalidConfirmationCode<T> _value,
      $Res Function(InvalidConfirmationCode<T>) _then)
      : super(_value, (v) => _then(v as InvalidConfirmationCode<T>));

  @override
  InvalidConfirmationCode<T> get _value =>
      super._value as InvalidConfirmationCode<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InvalidConfirmationCode<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidConfirmationCode<T> implements InvalidConfirmationCode<T> {
  const _$InvalidConfirmationCode({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidConfirmationCode(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidConfirmationCode<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidConfirmationCodeCopyWith<T, InvalidConfirmationCode<T>>
      get copyWith =>
          _$InvalidConfirmationCodeCopyWithImpl<T, InvalidConfirmationCode<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) empty,
    required TResult Function() missing,
    required TResult Function(T failedValue) wrongLength,
    required TResult Function(T failedValue) invalidConfirmationCode,
    required TResult Function(T failedValue) invalidValue,
  }) {
    return invalidConfirmationCode(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? empty,
    TResult Function()? missing,
    TResult Function(T failedValue)? wrongLength,
    TResult Function(T failedValue)? invalidConfirmationCode,
    TResult Function(T failedValue)? invalidValue,
  }) {
    return invalidConfirmationCode?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? empty,
    TResult Function()? missing,
    TResult Function(T failedValue)? wrongLength,
    TResult Function(T failedValue)? invalidConfirmationCode,
    TResult Function(T failedValue)? invalidValue,
    required TResult orElse(),
  }) {
    if (invalidConfirmationCode != null) {
      return invalidConfirmationCode(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Missing<T> value) missing,
    required TResult Function(WrongLength<T> value) wrongLength,
    required TResult Function(InvalidConfirmationCode<T> value)
        invalidConfirmationCode,
    required TResult Function(InvalidValue<T> value) invalidValue,
  }) {
    return invalidConfirmationCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Missing<T> value)? missing,
    TResult Function(WrongLength<T> value)? wrongLength,
    TResult Function(InvalidConfirmationCode<T> value)? invalidConfirmationCode,
    TResult Function(InvalidValue<T> value)? invalidValue,
  }) {
    return invalidConfirmationCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Missing<T> value)? missing,
    TResult Function(WrongLength<T> value)? wrongLength,
    TResult Function(InvalidConfirmationCode<T> value)? invalidConfirmationCode,
    TResult Function(InvalidValue<T> value)? invalidValue,
    required TResult orElse(),
  }) {
    if (invalidConfirmationCode != null) {
      return invalidConfirmationCode(this);
    }
    return orElse();
  }
}

abstract class InvalidConfirmationCode<T> implements ValueFailure<T> {
  const factory InvalidConfirmationCode({required T failedValue}) =
      _$InvalidConfirmationCode<T>;

  T get failedValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvalidConfirmationCodeCopyWith<T, InvalidConfirmationCode<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidValueCopyWith<T, $Res> {
  factory $InvalidValueCopyWith(
          InvalidValue<T> value, $Res Function(InvalidValue<T>) then) =
      _$InvalidValueCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidValueCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidValueCopyWith<T, $Res> {
  _$InvalidValueCopyWithImpl(
      InvalidValue<T> _value, $Res Function(InvalidValue<T>) _then)
      : super(_value, (v) => _then(v as InvalidValue<T>));

  @override
  InvalidValue<T> get _value => super._value as InvalidValue<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InvalidValue<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidValue<T> implements InvalidValue<T> {
  const _$InvalidValue({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidValue(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidValue<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidValueCopyWith<T, InvalidValue<T>> get copyWith =>
      _$InvalidValueCopyWithImpl<T, InvalidValue<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) empty,
    required TResult Function() missing,
    required TResult Function(T failedValue) wrongLength,
    required TResult Function(T failedValue) invalidConfirmationCode,
    required TResult Function(T failedValue) invalidValue,
  }) {
    return invalidValue(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? empty,
    TResult Function()? missing,
    TResult Function(T failedValue)? wrongLength,
    TResult Function(T failedValue)? invalidConfirmationCode,
    TResult Function(T failedValue)? invalidValue,
  }) {
    return invalidValue?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? empty,
    TResult Function()? missing,
    TResult Function(T failedValue)? wrongLength,
    TResult Function(T failedValue)? invalidConfirmationCode,
    TResult Function(T failedValue)? invalidValue,
    required TResult orElse(),
  }) {
    if (invalidValue != null) {
      return invalidValue(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(Missing<T> value) missing,
    required TResult Function(WrongLength<T> value) wrongLength,
    required TResult Function(InvalidConfirmationCode<T> value)
        invalidConfirmationCode,
    required TResult Function(InvalidValue<T> value) invalidValue,
  }) {
    return invalidValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Missing<T> value)? missing,
    TResult Function(WrongLength<T> value)? wrongLength,
    TResult Function(InvalidConfirmationCode<T> value)? invalidConfirmationCode,
    TResult Function(InvalidValue<T> value)? invalidValue,
  }) {
    return invalidValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(Empty<T> value)? empty,
    TResult Function(Missing<T> value)? missing,
    TResult Function(WrongLength<T> value)? wrongLength,
    TResult Function(InvalidConfirmationCode<T> value)? invalidConfirmationCode,
    TResult Function(InvalidValue<T> value)? invalidValue,
    required TResult orElse(),
  }) {
    if (invalidValue != null) {
      return invalidValue(this);
    }
    return orElse();
  }
}

abstract class InvalidValue<T> implements ValueFailure<T> {
  const factory InvalidValue({required T failedValue}) = _$InvalidValue<T>;

  T get failedValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvalidValueCopyWith<T, InvalidValue<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
