// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'form_example_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FormExampleEventTearOff {
  const _$FormExampleEventTearOff();

  _BackPressed backPressed() {
    return const _BackPressed();
  }

  _NextPressed nextPressed() {
    return const _NextPressed();
  }

  _FormExampleDataSubmitted formExampleDataSubmitted(
      FormExampleData formExampleData) {
    return _FormExampleDataSubmitted(
      formExampleData,
    );
  }
}

/// @nodoc
const $FormExampleEvent = _$FormExampleEventTearOff();

/// @nodoc
mixin _$FormExampleEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() backPressed,
    required TResult Function() nextPressed,
    required TResult Function(FormExampleData formExampleData)
        formExampleDataSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? backPressed,
    TResult Function()? nextPressed,
    TResult Function(FormExampleData formExampleData)? formExampleDataSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? backPressed,
    TResult Function()? nextPressed,
    TResult Function(FormExampleData formExampleData)? formExampleDataSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BackPressed value) backPressed,
    required TResult Function(_NextPressed value) nextPressed,
    required TResult Function(_FormExampleDataSubmitted value)
        formExampleDataSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_BackPressed value)? backPressed,
    TResult Function(_NextPressed value)? nextPressed,
    TResult Function(_FormExampleDataSubmitted value)? formExampleDataSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BackPressed value)? backPressed,
    TResult Function(_NextPressed value)? nextPressed,
    TResult Function(_FormExampleDataSubmitted value)? formExampleDataSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormExampleEventCopyWith<$Res> {
  factory $FormExampleEventCopyWith(
          FormExampleEvent value, $Res Function(FormExampleEvent) then) =
      _$FormExampleEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FormExampleEventCopyWithImpl<$Res>
    implements $FormExampleEventCopyWith<$Res> {
  _$FormExampleEventCopyWithImpl(this._value, this._then);

  final FormExampleEvent _value;
  // ignore: unused_field
  final $Res Function(FormExampleEvent) _then;
}

/// @nodoc
abstract class _$BackPressedCopyWith<$Res> {
  factory _$BackPressedCopyWith(
          _BackPressed value, $Res Function(_BackPressed) then) =
      __$BackPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$BackPressedCopyWithImpl<$Res>
    extends _$FormExampleEventCopyWithImpl<$Res>
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
    return 'FormExampleEvent.backPressed()';
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
    required TResult Function() backPressed,
    required TResult Function() nextPressed,
    required TResult Function(FormExampleData formExampleData)
        formExampleDataSubmitted,
  }) {
    return backPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? backPressed,
    TResult Function()? nextPressed,
    TResult Function(FormExampleData formExampleData)? formExampleDataSubmitted,
  }) {
    return backPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? backPressed,
    TResult Function()? nextPressed,
    TResult Function(FormExampleData formExampleData)? formExampleDataSubmitted,
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
    required TResult Function(_BackPressed value) backPressed,
    required TResult Function(_NextPressed value) nextPressed,
    required TResult Function(_FormExampleDataSubmitted value)
        formExampleDataSubmitted,
  }) {
    return backPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_BackPressed value)? backPressed,
    TResult Function(_NextPressed value)? nextPressed,
    TResult Function(_FormExampleDataSubmitted value)? formExampleDataSubmitted,
  }) {
    return backPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BackPressed value)? backPressed,
    TResult Function(_NextPressed value)? nextPressed,
    TResult Function(_FormExampleDataSubmitted value)? formExampleDataSubmitted,
    required TResult orElse(),
  }) {
    if (backPressed != null) {
      return backPressed(this);
    }
    return orElse();
  }
}

abstract class _BackPressed implements FormExampleEvent {
  const factory _BackPressed() = _$_BackPressed;
}

/// @nodoc
abstract class _$NextPressedCopyWith<$Res> {
  factory _$NextPressedCopyWith(
          _NextPressed value, $Res Function(_NextPressed) then) =
      __$NextPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$NextPressedCopyWithImpl<$Res>
    extends _$FormExampleEventCopyWithImpl<$Res>
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
    return 'FormExampleEvent.nextPressed()';
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
    required TResult Function() backPressed,
    required TResult Function() nextPressed,
    required TResult Function(FormExampleData formExampleData)
        formExampleDataSubmitted,
  }) {
    return nextPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? backPressed,
    TResult Function()? nextPressed,
    TResult Function(FormExampleData formExampleData)? formExampleDataSubmitted,
  }) {
    return nextPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? backPressed,
    TResult Function()? nextPressed,
    TResult Function(FormExampleData formExampleData)? formExampleDataSubmitted,
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
    required TResult Function(_BackPressed value) backPressed,
    required TResult Function(_NextPressed value) nextPressed,
    required TResult Function(_FormExampleDataSubmitted value)
        formExampleDataSubmitted,
  }) {
    return nextPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_BackPressed value)? backPressed,
    TResult Function(_NextPressed value)? nextPressed,
    TResult Function(_FormExampleDataSubmitted value)? formExampleDataSubmitted,
  }) {
    return nextPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BackPressed value)? backPressed,
    TResult Function(_NextPressed value)? nextPressed,
    TResult Function(_FormExampleDataSubmitted value)? formExampleDataSubmitted,
    required TResult orElse(),
  }) {
    if (nextPressed != null) {
      return nextPressed(this);
    }
    return orElse();
  }
}

abstract class _NextPressed implements FormExampleEvent {
  const factory _NextPressed() = _$_NextPressed;
}

/// @nodoc
abstract class _$FormExampleDataSubmittedCopyWith<$Res> {
  factory _$FormExampleDataSubmittedCopyWith(_FormExampleDataSubmitted value,
          $Res Function(_FormExampleDataSubmitted) then) =
      __$FormExampleDataSubmittedCopyWithImpl<$Res>;
  $Res call({FormExampleData formExampleData});

  $FormExampleDataCopyWith<$Res> get formExampleData;
}

/// @nodoc
class __$FormExampleDataSubmittedCopyWithImpl<$Res>
    extends _$FormExampleEventCopyWithImpl<$Res>
    implements _$FormExampleDataSubmittedCopyWith<$Res> {
  __$FormExampleDataSubmittedCopyWithImpl(_FormExampleDataSubmitted _value,
      $Res Function(_FormExampleDataSubmitted) _then)
      : super(_value, (v) => _then(v as _FormExampleDataSubmitted));

  @override
  _FormExampleDataSubmitted get _value =>
      super._value as _FormExampleDataSubmitted;

  @override
  $Res call({
    Object? formExampleData = freezed,
  }) {
    return _then(_FormExampleDataSubmitted(
      formExampleData == freezed
          ? _value.formExampleData
          : formExampleData // ignore: cast_nullable_to_non_nullable
              as FormExampleData,
    ));
  }

  @override
  $FormExampleDataCopyWith<$Res> get formExampleData {
    return $FormExampleDataCopyWith<$Res>(_value.formExampleData, (value) {
      return _then(_value.copyWith(formExampleData: value));
    });
  }
}

/// @nodoc

class _$_FormExampleDataSubmitted implements _FormExampleDataSubmitted {
  const _$_FormExampleDataSubmitted(this.formExampleData);

  @override
  final FormExampleData formExampleData;

  @override
  String toString() {
    return 'FormExampleEvent.formExampleDataSubmitted(formExampleData: $formExampleData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FormExampleDataSubmitted &&
            (identical(other.formExampleData, formExampleData) ||
                const DeepCollectionEquality()
                    .equals(other.formExampleData, formExampleData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(formExampleData);

  @JsonKey(ignore: true)
  @override
  _$FormExampleDataSubmittedCopyWith<_FormExampleDataSubmitted> get copyWith =>
      __$FormExampleDataSubmittedCopyWithImpl<_FormExampleDataSubmitted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() backPressed,
    required TResult Function() nextPressed,
    required TResult Function(FormExampleData formExampleData)
        formExampleDataSubmitted,
  }) {
    return formExampleDataSubmitted(formExampleData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? backPressed,
    TResult Function()? nextPressed,
    TResult Function(FormExampleData formExampleData)? formExampleDataSubmitted,
  }) {
    return formExampleDataSubmitted?.call(formExampleData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? backPressed,
    TResult Function()? nextPressed,
    TResult Function(FormExampleData formExampleData)? formExampleDataSubmitted,
    required TResult orElse(),
  }) {
    if (formExampleDataSubmitted != null) {
      return formExampleDataSubmitted(formExampleData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BackPressed value) backPressed,
    required TResult Function(_NextPressed value) nextPressed,
    required TResult Function(_FormExampleDataSubmitted value)
        formExampleDataSubmitted,
  }) {
    return formExampleDataSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_BackPressed value)? backPressed,
    TResult Function(_NextPressed value)? nextPressed,
    TResult Function(_FormExampleDataSubmitted value)? formExampleDataSubmitted,
  }) {
    return formExampleDataSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BackPressed value)? backPressed,
    TResult Function(_NextPressed value)? nextPressed,
    TResult Function(_FormExampleDataSubmitted value)? formExampleDataSubmitted,
    required TResult orElse(),
  }) {
    if (formExampleDataSubmitted != null) {
      return formExampleDataSubmitted(this);
    }
    return orElse();
  }
}

abstract class _FormExampleDataSubmitted implements FormExampleEvent {
  const factory _FormExampleDataSubmitted(FormExampleData formExampleData) =
      _$_FormExampleDataSubmitted;

  FormExampleData get formExampleData => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FormExampleDataSubmittedCopyWith<_FormExampleDataSubmitted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$FormExampleStateTearOff {
  const _$FormExampleStateTearOff();

  _FormExampleState call(
      {required FormExamplePage page,
      required FormExampleData formExampleData}) {
    return _FormExampleState(
      page: page,
      formExampleData: formExampleData,
    );
  }
}

/// @nodoc
const $FormExampleState = _$FormExampleStateTearOff();

/// @nodoc
mixin _$FormExampleState {
  FormExamplePage get page => throw _privateConstructorUsedError;
  FormExampleData get formExampleData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FormExampleStateCopyWith<FormExampleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormExampleStateCopyWith<$Res> {
  factory $FormExampleStateCopyWith(
          FormExampleState value, $Res Function(FormExampleState) then) =
      _$FormExampleStateCopyWithImpl<$Res>;
  $Res call({FormExamplePage page, FormExampleData formExampleData});

  $FormExampleDataCopyWith<$Res> get formExampleData;
}

/// @nodoc
class _$FormExampleStateCopyWithImpl<$Res>
    implements $FormExampleStateCopyWith<$Res> {
  _$FormExampleStateCopyWithImpl(this._value, this._then);

  final FormExampleState _value;
  // ignore: unused_field
  final $Res Function(FormExampleState) _then;

  @override
  $Res call({
    Object? page = freezed,
    Object? formExampleData = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as FormExamplePage,
      formExampleData: formExampleData == freezed
          ? _value.formExampleData
          : formExampleData // ignore: cast_nullable_to_non_nullable
              as FormExampleData,
    ));
  }

  @override
  $FormExampleDataCopyWith<$Res> get formExampleData {
    return $FormExampleDataCopyWith<$Res>(_value.formExampleData, (value) {
      return _then(_value.copyWith(formExampleData: value));
    });
  }
}

/// @nodoc
abstract class _$FormExampleStateCopyWith<$Res>
    implements $FormExampleStateCopyWith<$Res> {
  factory _$FormExampleStateCopyWith(
          _FormExampleState value, $Res Function(_FormExampleState) then) =
      __$FormExampleStateCopyWithImpl<$Res>;
  @override
  $Res call({FormExamplePage page, FormExampleData formExampleData});

  @override
  $FormExampleDataCopyWith<$Res> get formExampleData;
}

/// @nodoc
class __$FormExampleStateCopyWithImpl<$Res>
    extends _$FormExampleStateCopyWithImpl<$Res>
    implements _$FormExampleStateCopyWith<$Res> {
  __$FormExampleStateCopyWithImpl(
      _FormExampleState _value, $Res Function(_FormExampleState) _then)
      : super(_value, (v) => _then(v as _FormExampleState));

  @override
  _FormExampleState get _value => super._value as _FormExampleState;

  @override
  $Res call({
    Object? page = freezed,
    Object? formExampleData = freezed,
  }) {
    return _then(_FormExampleState(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as FormExamplePage,
      formExampleData: formExampleData == freezed
          ? _value.formExampleData
          : formExampleData // ignore: cast_nullable_to_non_nullable
              as FormExampleData,
    ));
  }
}

/// @nodoc

class _$_FormExampleState implements _FormExampleState {
  const _$_FormExampleState(
      {required this.page, required this.formExampleData});

  @override
  final FormExamplePage page;
  @override
  final FormExampleData formExampleData;

  @override
  String toString() {
    return 'FormExampleState(page: $page, formExampleData: $formExampleData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FormExampleState &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.formExampleData, formExampleData) ||
                const DeepCollectionEquality()
                    .equals(other.formExampleData, formExampleData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(formExampleData);

  @JsonKey(ignore: true)
  @override
  _$FormExampleStateCopyWith<_FormExampleState> get copyWith =>
      __$FormExampleStateCopyWithImpl<_FormExampleState>(this, _$identity);
}

abstract class _FormExampleState implements FormExampleState {
  const factory _FormExampleState(
      {required FormExamplePage page,
      required FormExampleData formExampleData}) = _$_FormExampleState;

  @override
  FormExamplePage get page => throw _privateConstructorUsedError;
  @override
  FormExampleData get formExampleData => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FormExampleStateCopyWith<_FormExampleState> get copyWith =>
      throw _privateConstructorUsedError;
}
