// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'forgot_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ForgotPasswordEventTearOff {
  const _$ForgotPasswordEventTearOff();

  _EmailChanged emailChanged(String email) {
    return _EmailChanged(
      email,
    );
  }

  _ForgotPasswordDataSubmitted forgotPasswordDataSubmitted(
      ForgotPasswordData forgotPasswordData) {
    return _ForgotPasswordDataSubmitted(
      forgotPasswordData,
    );
  }

  _DialogDismissed dialogDismissed() {
    return const _DialogDismissed();
  }
}

/// @nodoc
const $ForgotPasswordEvent = _$ForgotPasswordEventTearOff();

/// @nodoc
mixin _$ForgotPasswordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(ForgotPasswordData forgotPasswordData)
        forgotPasswordDataSubmitted,
    required TResult Function() dialogDismissed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(ForgotPasswordData forgotPasswordData)?
        forgotPasswordDataSubmitted,
    TResult Function()? dialogDismissed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(ForgotPasswordData forgotPasswordData)?
        forgotPasswordDataSubmitted,
    TResult Function()? dialogDismissed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_ForgotPasswordDataSubmitted value)
        forgotPasswordDataSubmitted,
    required TResult Function(_DialogDismissed value) dialogDismissed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_ForgotPasswordDataSubmitted value)?
        forgotPasswordDataSubmitted,
    TResult Function(_DialogDismissed value)? dialogDismissed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_ForgotPasswordDataSubmitted value)?
        forgotPasswordDataSubmitted,
    TResult Function(_DialogDismissed value)? dialogDismissed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordEventCopyWith<$Res> {
  factory $ForgotPasswordEventCopyWith(
          ForgotPasswordEvent value, $Res Function(ForgotPasswordEvent) then) =
      _$ForgotPasswordEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ForgotPasswordEventCopyWithImpl<$Res>
    implements $ForgotPasswordEventCopyWith<$Res> {
  _$ForgotPasswordEventCopyWithImpl(this._value, this._then);

  final ForgotPasswordEvent _value;
  // ignore: unused_field
  final $Res Function(ForgotPasswordEvent) _then;
}

/// @nodoc
abstract class _$EmailChangedCopyWith<$Res> {
  factory _$EmailChangedCopyWith(
          _EmailChanged value, $Res Function(_EmailChanged) then) =
      __$EmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class __$EmailChangedCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res>
    implements _$EmailChangedCopyWith<$Res> {
  __$EmailChangedCopyWithImpl(
      _EmailChanged _value, $Res Function(_EmailChanged) _then)
      : super(_value, (v) => _then(v as _EmailChanged));

  @override
  _EmailChanged get _value => super._value as _EmailChanged;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_EmailChanged(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailChanged extends _EmailChanged {
  const _$_EmailChanged(this.email) : super._();

  @override
  final String email;

  @override
  String toString() {
    return 'ForgotPasswordEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EmailChanged &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @JsonKey(ignore: true)
  @override
  _$EmailChangedCopyWith<_EmailChanged> get copyWith =>
      __$EmailChangedCopyWithImpl<_EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(ForgotPasswordData forgotPasswordData)
        forgotPasswordDataSubmitted,
    required TResult Function() dialogDismissed,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(ForgotPasswordData forgotPasswordData)?
        forgotPasswordDataSubmitted,
    TResult Function()? dialogDismissed,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(ForgotPasswordData forgotPasswordData)?
        forgotPasswordDataSubmitted,
    TResult Function()? dialogDismissed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_ForgotPasswordDataSubmitted value)
        forgotPasswordDataSubmitted,
    required TResult Function(_DialogDismissed value) dialogDismissed,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_ForgotPasswordDataSubmitted value)?
        forgotPasswordDataSubmitted,
    TResult Function(_DialogDismissed value)? dialogDismissed,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_ForgotPasswordDataSubmitted value)?
        forgotPasswordDataSubmitted,
    TResult Function(_DialogDismissed value)? dialogDismissed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged extends ForgotPasswordEvent {
  const factory _EmailChanged(String email) = _$_EmailChanged;
  const _EmailChanged._() : super._();

  String get email => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$EmailChangedCopyWith<_EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ForgotPasswordDataSubmittedCopyWith<$Res> {
  factory _$ForgotPasswordDataSubmittedCopyWith(
          _ForgotPasswordDataSubmitted value,
          $Res Function(_ForgotPasswordDataSubmitted) then) =
      __$ForgotPasswordDataSubmittedCopyWithImpl<$Res>;
  $Res call({ForgotPasswordData forgotPasswordData});

  $ForgotPasswordDataCopyWith<$Res> get forgotPasswordData;
}

/// @nodoc
class __$ForgotPasswordDataSubmittedCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res>
    implements _$ForgotPasswordDataSubmittedCopyWith<$Res> {
  __$ForgotPasswordDataSubmittedCopyWithImpl(
      _ForgotPasswordDataSubmitted _value,
      $Res Function(_ForgotPasswordDataSubmitted) _then)
      : super(_value, (v) => _then(v as _ForgotPasswordDataSubmitted));

  @override
  _ForgotPasswordDataSubmitted get _value =>
      super._value as _ForgotPasswordDataSubmitted;

  @override
  $Res call({
    Object? forgotPasswordData = freezed,
  }) {
    return _then(_ForgotPasswordDataSubmitted(
      forgotPasswordData == freezed
          ? _value.forgotPasswordData
          : forgotPasswordData // ignore: cast_nullable_to_non_nullable
              as ForgotPasswordData,
    ));
  }

  @override
  $ForgotPasswordDataCopyWith<$Res> get forgotPasswordData {
    return $ForgotPasswordDataCopyWith<$Res>(_value.forgotPasswordData,
        (value) {
      return _then(_value.copyWith(forgotPasswordData: value));
    });
  }
}

/// @nodoc

class _$_ForgotPasswordDataSubmitted extends _ForgotPasswordDataSubmitted {
  const _$_ForgotPasswordDataSubmitted(this.forgotPasswordData) : super._();

  @override
  final ForgotPasswordData forgotPasswordData;

  @override
  String toString() {
    return 'ForgotPasswordEvent.forgotPasswordDataSubmitted(forgotPasswordData: $forgotPasswordData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ForgotPasswordDataSubmitted &&
            (identical(other.forgotPasswordData, forgotPasswordData) ||
                const DeepCollectionEquality()
                    .equals(other.forgotPasswordData, forgotPasswordData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(forgotPasswordData);

  @JsonKey(ignore: true)
  @override
  _$ForgotPasswordDataSubmittedCopyWith<_ForgotPasswordDataSubmitted>
      get copyWith => __$ForgotPasswordDataSubmittedCopyWithImpl<
          _ForgotPasswordDataSubmitted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(ForgotPasswordData forgotPasswordData)
        forgotPasswordDataSubmitted,
    required TResult Function() dialogDismissed,
  }) {
    return forgotPasswordDataSubmitted(forgotPasswordData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(ForgotPasswordData forgotPasswordData)?
        forgotPasswordDataSubmitted,
    TResult Function()? dialogDismissed,
  }) {
    return forgotPasswordDataSubmitted?.call(forgotPasswordData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(ForgotPasswordData forgotPasswordData)?
        forgotPasswordDataSubmitted,
    TResult Function()? dialogDismissed,
    required TResult orElse(),
  }) {
    if (forgotPasswordDataSubmitted != null) {
      return forgotPasswordDataSubmitted(forgotPasswordData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_ForgotPasswordDataSubmitted value)
        forgotPasswordDataSubmitted,
    required TResult Function(_DialogDismissed value) dialogDismissed,
  }) {
    return forgotPasswordDataSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_ForgotPasswordDataSubmitted value)?
        forgotPasswordDataSubmitted,
    TResult Function(_DialogDismissed value)? dialogDismissed,
  }) {
    return forgotPasswordDataSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_ForgotPasswordDataSubmitted value)?
        forgotPasswordDataSubmitted,
    TResult Function(_DialogDismissed value)? dialogDismissed,
    required TResult orElse(),
  }) {
    if (forgotPasswordDataSubmitted != null) {
      return forgotPasswordDataSubmitted(this);
    }
    return orElse();
  }
}

abstract class _ForgotPasswordDataSubmitted extends ForgotPasswordEvent {
  const factory _ForgotPasswordDataSubmitted(
      ForgotPasswordData forgotPasswordData) = _$_ForgotPasswordDataSubmitted;
  const _ForgotPasswordDataSubmitted._() : super._();

  ForgotPasswordData get forgotPasswordData =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ForgotPasswordDataSubmittedCopyWith<_ForgotPasswordDataSubmitted>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DialogDismissedCopyWith<$Res> {
  factory _$DialogDismissedCopyWith(
          _DialogDismissed value, $Res Function(_DialogDismissed) then) =
      __$DialogDismissedCopyWithImpl<$Res>;
}

/// @nodoc
class __$DialogDismissedCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res>
    implements _$DialogDismissedCopyWith<$Res> {
  __$DialogDismissedCopyWithImpl(
      _DialogDismissed _value, $Res Function(_DialogDismissed) _then)
      : super(_value, (v) => _then(v as _DialogDismissed));

  @override
  _DialogDismissed get _value => super._value as _DialogDismissed;
}

/// @nodoc

class _$_DialogDismissed extends _DialogDismissed {
  const _$_DialogDismissed() : super._();

  @override
  String toString() {
    return 'ForgotPasswordEvent.dialogDismissed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DialogDismissed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(ForgotPasswordData forgotPasswordData)
        forgotPasswordDataSubmitted,
    required TResult Function() dialogDismissed,
  }) {
    return dialogDismissed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(ForgotPasswordData forgotPasswordData)?
        forgotPasswordDataSubmitted,
    TResult Function()? dialogDismissed,
  }) {
    return dialogDismissed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(ForgotPasswordData forgotPasswordData)?
        forgotPasswordDataSubmitted,
    TResult Function()? dialogDismissed,
    required TResult orElse(),
  }) {
    if (dialogDismissed != null) {
      return dialogDismissed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_ForgotPasswordDataSubmitted value)
        forgotPasswordDataSubmitted,
    required TResult Function(_DialogDismissed value) dialogDismissed,
  }) {
    return dialogDismissed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_ForgotPasswordDataSubmitted value)?
        forgotPasswordDataSubmitted,
    TResult Function(_DialogDismissed value)? dialogDismissed,
  }) {
    return dialogDismissed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_ForgotPasswordDataSubmitted value)?
        forgotPasswordDataSubmitted,
    TResult Function(_DialogDismissed value)? dialogDismissed,
    required TResult orElse(),
  }) {
    if (dialogDismissed != null) {
      return dialogDismissed(this);
    }
    return orElse();
  }
}

abstract class _DialogDismissed extends ForgotPasswordEvent {
  const factory _DialogDismissed() = _$_DialogDismissed;
  const _DialogDismissed._() : super._();
}

/// @nodoc
class _$ForgotPasswordStateTearOff {
  const _$ForgotPasswordStateTearOff();

  _ForgotPasswordState call(
      {required ForgotPasswordData forgotPasswordData,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<ForgotPasswordFailure, Unit>>
          forgotPasswordFailureOrSuccessOption}) {
    return _ForgotPasswordState(
      forgotPasswordData: forgotPasswordData,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      forgotPasswordFailureOrSuccessOption:
          forgotPasswordFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $ForgotPasswordState = _$ForgotPasswordStateTearOff();

/// @nodoc
mixin _$ForgotPasswordState {
  ForgotPasswordData get forgotPasswordData =>
      throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<ForgotPasswordFailure, Unit>>
      get forgotPasswordFailureOrSuccessOption =>
          throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForgotPasswordStateCopyWith<ForgotPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordStateCopyWith<$Res> {
  factory $ForgotPasswordStateCopyWith(
          ForgotPasswordState value, $Res Function(ForgotPasswordState) then) =
      _$ForgotPasswordStateCopyWithImpl<$Res>;
  $Res call(
      {ForgotPasswordData forgotPasswordData,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<ForgotPasswordFailure, Unit>>
          forgotPasswordFailureOrSuccessOption});

  $ForgotPasswordDataCopyWith<$Res> get forgotPasswordData;
}

/// @nodoc
class _$ForgotPasswordStateCopyWithImpl<$Res>
    implements $ForgotPasswordStateCopyWith<$Res> {
  _$ForgotPasswordStateCopyWithImpl(this._value, this._then);

  final ForgotPasswordState _value;
  // ignore: unused_field
  final $Res Function(ForgotPasswordState) _then;

  @override
  $Res call({
    Object? forgotPasswordData = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? forgotPasswordFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      forgotPasswordData: forgotPasswordData == freezed
          ? _value.forgotPasswordData
          : forgotPasswordData // ignore: cast_nullable_to_non_nullable
              as ForgotPasswordData,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      forgotPasswordFailureOrSuccessOption: forgotPasswordFailureOrSuccessOption ==
              freezed
          ? _value.forgotPasswordFailureOrSuccessOption
          : forgotPasswordFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ForgotPasswordFailure, Unit>>,
    ));
  }

  @override
  $ForgotPasswordDataCopyWith<$Res> get forgotPasswordData {
    return $ForgotPasswordDataCopyWith<$Res>(_value.forgotPasswordData,
        (value) {
      return _then(_value.copyWith(forgotPasswordData: value));
    });
  }
}

/// @nodoc
abstract class _$ForgotPasswordStateCopyWith<$Res>
    implements $ForgotPasswordStateCopyWith<$Res> {
  factory _$ForgotPasswordStateCopyWith(_ForgotPasswordState value,
          $Res Function(_ForgotPasswordState) then) =
      __$ForgotPasswordStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {ForgotPasswordData forgotPasswordData,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<ForgotPasswordFailure, Unit>>
          forgotPasswordFailureOrSuccessOption});

  @override
  $ForgotPasswordDataCopyWith<$Res> get forgotPasswordData;
}

/// @nodoc
class __$ForgotPasswordStateCopyWithImpl<$Res>
    extends _$ForgotPasswordStateCopyWithImpl<$Res>
    implements _$ForgotPasswordStateCopyWith<$Res> {
  __$ForgotPasswordStateCopyWithImpl(
      _ForgotPasswordState _value, $Res Function(_ForgotPasswordState) _then)
      : super(_value, (v) => _then(v as _ForgotPasswordState));

  @override
  _ForgotPasswordState get _value => super._value as _ForgotPasswordState;

  @override
  $Res call({
    Object? forgotPasswordData = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? forgotPasswordFailureOrSuccessOption = freezed,
  }) {
    return _then(_ForgotPasswordState(
      forgotPasswordData: forgotPasswordData == freezed
          ? _value.forgotPasswordData
          : forgotPasswordData // ignore: cast_nullable_to_non_nullable
              as ForgotPasswordData,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      forgotPasswordFailureOrSuccessOption: forgotPasswordFailureOrSuccessOption ==
              freezed
          ? _value.forgotPasswordFailureOrSuccessOption
          : forgotPasswordFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ForgotPasswordFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_ForgotPasswordState implements _ForgotPasswordState {
  const _$_ForgotPasswordState(
      {required this.forgotPasswordData,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.forgotPasswordFailureOrSuccessOption});

  @override
  final ForgotPasswordData forgotPasswordData;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<ForgotPasswordFailure, Unit>>
      forgotPasswordFailureOrSuccessOption;

  @override
  String toString() {
    return 'ForgotPasswordState(forgotPasswordData: $forgotPasswordData, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, forgotPasswordFailureOrSuccessOption: $forgotPasswordFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ForgotPasswordState &&
            (identical(other.forgotPasswordData, forgotPasswordData) ||
                const DeepCollectionEquality()
                    .equals(other.forgotPasswordData, forgotPasswordData)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.forgotPasswordFailureOrSuccessOption,
                    forgotPasswordFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.forgotPasswordFailureOrSuccessOption,
                    forgotPasswordFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(forgotPasswordData) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(forgotPasswordFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$ForgotPasswordStateCopyWith<_ForgotPasswordState> get copyWith =>
      __$ForgotPasswordStateCopyWithImpl<_ForgotPasswordState>(
          this, _$identity);
}

abstract class _ForgotPasswordState implements ForgotPasswordState {
  const factory _ForgotPasswordState(
      {required ForgotPasswordData forgotPasswordData,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<ForgotPasswordFailure, Unit>>
          forgotPasswordFailureOrSuccessOption}) = _$_ForgotPasswordState;

  @override
  ForgotPasswordData get forgotPasswordData =>
      throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  Option<Either<ForgotPasswordFailure, Unit>>
      get forgotPasswordFailureOrSuccessOption =>
          throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ForgotPasswordStateCopyWith<_ForgotPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}
