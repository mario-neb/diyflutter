// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FormEventTearOff {
  const _$FormEventTearOff();

  _FirstNameChanged firstNamechanged(String firstName) {
    return _FirstNameChanged(
      firstName,
    );
  }

  _LastNameChanged lastNamechanged(String lastName) {
    return _LastNameChanged(
      lastName,
    );
  }

  _ReasonChanged reasonchanged(String reason) {
    return _ReasonChanged(
      reason,
    );
  }

  _DescriptionChanged descriptionchanged(String description) {
    return _DescriptionChanged(
      description,
    );
  }

  _DateChanged dateChanged(DateTime date) {
    return _DateChanged(
      date,
    );
  }

  _FormExampleDataInitialised formExampleDataInitialised(
      FormExampleData formExampleData) {
    return _FormExampleDataInitialised(
      formExampleData,
    );
  }

  _ContinuePressed continuePressed() {
    return const _ContinuePressed();
  }
}

/// @nodoc
const $FormEvent = _$FormEventTearOff();

/// @nodoc
mixin _$FormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName) firstNamechanged,
    required TResult Function(String lastName) lastNamechanged,
    required TResult Function(String reason) reasonchanged,
    required TResult Function(String description) descriptionchanged,
    required TResult Function(DateTime date) dateChanged,
    required TResult Function(FormExampleData formExampleData)
        formExampleDataInitialised,
    required TResult Function() continuePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String firstName)? firstNamechanged,
    TResult Function(String lastName)? lastNamechanged,
    TResult Function(String reason)? reasonchanged,
    TResult Function(String description)? descriptionchanged,
    TResult Function(DateTime date)? dateChanged,
    TResult Function(FormExampleData formExampleData)?
        formExampleDataInitialised,
    TResult Function()? continuePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? firstNamechanged,
    TResult Function(String lastName)? lastNamechanged,
    TResult Function(String reason)? reasonchanged,
    TResult Function(String description)? descriptionchanged,
    TResult Function(DateTime date)? dateChanged,
    TResult Function(FormExampleData formExampleData)?
        formExampleDataInitialised,
    TResult Function()? continuePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstNameChanged value) firstNamechanged,
    required TResult Function(_LastNameChanged value) lastNamechanged,
    required TResult Function(_ReasonChanged value) reasonchanged,
    required TResult Function(_DescriptionChanged value) descriptionchanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_FormExampleDataInitialised value)
        formExampleDataInitialised,
    required TResult Function(_ContinuePressed value) continuePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FirstNameChanged value)? firstNamechanged,
    TResult Function(_LastNameChanged value)? lastNamechanged,
    TResult Function(_ReasonChanged value)? reasonchanged,
    TResult Function(_DescriptionChanged value)? descriptionchanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_FormExampleDataInitialised value)?
        formExampleDataInitialised,
    TResult Function(_ContinuePressed value)? continuePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstNameChanged value)? firstNamechanged,
    TResult Function(_LastNameChanged value)? lastNamechanged,
    TResult Function(_ReasonChanged value)? reasonchanged,
    TResult Function(_DescriptionChanged value)? descriptionchanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_FormExampleDataInitialised value)?
        formExampleDataInitialised,
    TResult Function(_ContinuePressed value)? continuePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormEventCopyWith<$Res> {
  factory $FormEventCopyWith(FormEvent value, $Res Function(FormEvent) then) =
      _$FormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FormEventCopyWithImpl<$Res> implements $FormEventCopyWith<$Res> {
  _$FormEventCopyWithImpl(this._value, this._then);

  final FormEvent _value;
  // ignore: unused_field
  final $Res Function(FormEvent) _then;
}

/// @nodoc
abstract class _$FirstNameChangedCopyWith<$Res> {
  factory _$FirstNameChangedCopyWith(
          _FirstNameChanged value, $Res Function(_FirstNameChanged) then) =
      __$FirstNameChangedCopyWithImpl<$Res>;
  $Res call({String firstName});
}

/// @nodoc
class __$FirstNameChangedCopyWithImpl<$Res>
    extends _$FormEventCopyWithImpl<$Res>
    implements _$FirstNameChangedCopyWith<$Res> {
  __$FirstNameChangedCopyWithImpl(
      _FirstNameChanged _value, $Res Function(_FirstNameChanged) _then)
      : super(_value, (v) => _then(v as _FirstNameChanged));

  @override
  _FirstNameChanged get _value => super._value as _FirstNameChanged;

  @override
  $Res call({
    Object? firstName = freezed,
  }) {
    return _then(_FirstNameChanged(
      firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FirstNameChanged implements _FirstNameChanged {
  const _$_FirstNameChanged(this.firstName);

  @override
  final String firstName;

  @override
  String toString() {
    return 'FormEvent.firstNamechanged(firstName: $firstName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FirstNameChanged &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(firstName);

  @JsonKey(ignore: true)
  @override
  _$FirstNameChangedCopyWith<_FirstNameChanged> get copyWith =>
      __$FirstNameChangedCopyWithImpl<_FirstNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName) firstNamechanged,
    required TResult Function(String lastName) lastNamechanged,
    required TResult Function(String reason) reasonchanged,
    required TResult Function(String description) descriptionchanged,
    required TResult Function(DateTime date) dateChanged,
    required TResult Function(FormExampleData formExampleData)
        formExampleDataInitialised,
    required TResult Function() continuePressed,
  }) {
    return firstNamechanged(firstName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String firstName)? firstNamechanged,
    TResult Function(String lastName)? lastNamechanged,
    TResult Function(String reason)? reasonchanged,
    TResult Function(String description)? descriptionchanged,
    TResult Function(DateTime date)? dateChanged,
    TResult Function(FormExampleData formExampleData)?
        formExampleDataInitialised,
    TResult Function()? continuePressed,
  }) {
    return firstNamechanged?.call(firstName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? firstNamechanged,
    TResult Function(String lastName)? lastNamechanged,
    TResult Function(String reason)? reasonchanged,
    TResult Function(String description)? descriptionchanged,
    TResult Function(DateTime date)? dateChanged,
    TResult Function(FormExampleData formExampleData)?
        formExampleDataInitialised,
    TResult Function()? continuePressed,
    required TResult orElse(),
  }) {
    if (firstNamechanged != null) {
      return firstNamechanged(firstName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstNameChanged value) firstNamechanged,
    required TResult Function(_LastNameChanged value) lastNamechanged,
    required TResult Function(_ReasonChanged value) reasonchanged,
    required TResult Function(_DescriptionChanged value) descriptionchanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_FormExampleDataInitialised value)
        formExampleDataInitialised,
    required TResult Function(_ContinuePressed value) continuePressed,
  }) {
    return firstNamechanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FirstNameChanged value)? firstNamechanged,
    TResult Function(_LastNameChanged value)? lastNamechanged,
    TResult Function(_ReasonChanged value)? reasonchanged,
    TResult Function(_DescriptionChanged value)? descriptionchanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_FormExampleDataInitialised value)?
        formExampleDataInitialised,
    TResult Function(_ContinuePressed value)? continuePressed,
  }) {
    return firstNamechanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstNameChanged value)? firstNamechanged,
    TResult Function(_LastNameChanged value)? lastNamechanged,
    TResult Function(_ReasonChanged value)? reasonchanged,
    TResult Function(_DescriptionChanged value)? descriptionchanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_FormExampleDataInitialised value)?
        formExampleDataInitialised,
    TResult Function(_ContinuePressed value)? continuePressed,
    required TResult orElse(),
  }) {
    if (firstNamechanged != null) {
      return firstNamechanged(this);
    }
    return orElse();
  }
}

abstract class _FirstNameChanged implements FormEvent {
  const factory _FirstNameChanged(String firstName) = _$_FirstNameChanged;

  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FirstNameChangedCopyWith<_FirstNameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LastNameChangedCopyWith<$Res> {
  factory _$LastNameChangedCopyWith(
          _LastNameChanged value, $Res Function(_LastNameChanged) then) =
      __$LastNameChangedCopyWithImpl<$Res>;
  $Res call({String lastName});
}

/// @nodoc
class __$LastNameChangedCopyWithImpl<$Res> extends _$FormEventCopyWithImpl<$Res>
    implements _$LastNameChangedCopyWith<$Res> {
  __$LastNameChangedCopyWithImpl(
      _LastNameChanged _value, $Res Function(_LastNameChanged) _then)
      : super(_value, (v) => _then(v as _LastNameChanged));

  @override
  _LastNameChanged get _value => super._value as _LastNameChanged;

  @override
  $Res call({
    Object? lastName = freezed,
  }) {
    return _then(_LastNameChanged(
      lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LastNameChanged implements _LastNameChanged {
  const _$_LastNameChanged(this.lastName);

  @override
  final String lastName;

  @override
  String toString() {
    return 'FormEvent.lastNamechanged(lastName: $lastName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LastNameChanged &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(lastName);

  @JsonKey(ignore: true)
  @override
  _$LastNameChangedCopyWith<_LastNameChanged> get copyWith =>
      __$LastNameChangedCopyWithImpl<_LastNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName) firstNamechanged,
    required TResult Function(String lastName) lastNamechanged,
    required TResult Function(String reason) reasonchanged,
    required TResult Function(String description) descriptionchanged,
    required TResult Function(DateTime date) dateChanged,
    required TResult Function(FormExampleData formExampleData)
        formExampleDataInitialised,
    required TResult Function() continuePressed,
  }) {
    return lastNamechanged(lastName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String firstName)? firstNamechanged,
    TResult Function(String lastName)? lastNamechanged,
    TResult Function(String reason)? reasonchanged,
    TResult Function(String description)? descriptionchanged,
    TResult Function(DateTime date)? dateChanged,
    TResult Function(FormExampleData formExampleData)?
        formExampleDataInitialised,
    TResult Function()? continuePressed,
  }) {
    return lastNamechanged?.call(lastName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? firstNamechanged,
    TResult Function(String lastName)? lastNamechanged,
    TResult Function(String reason)? reasonchanged,
    TResult Function(String description)? descriptionchanged,
    TResult Function(DateTime date)? dateChanged,
    TResult Function(FormExampleData formExampleData)?
        formExampleDataInitialised,
    TResult Function()? continuePressed,
    required TResult orElse(),
  }) {
    if (lastNamechanged != null) {
      return lastNamechanged(lastName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstNameChanged value) firstNamechanged,
    required TResult Function(_LastNameChanged value) lastNamechanged,
    required TResult Function(_ReasonChanged value) reasonchanged,
    required TResult Function(_DescriptionChanged value) descriptionchanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_FormExampleDataInitialised value)
        formExampleDataInitialised,
    required TResult Function(_ContinuePressed value) continuePressed,
  }) {
    return lastNamechanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FirstNameChanged value)? firstNamechanged,
    TResult Function(_LastNameChanged value)? lastNamechanged,
    TResult Function(_ReasonChanged value)? reasonchanged,
    TResult Function(_DescriptionChanged value)? descriptionchanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_FormExampleDataInitialised value)?
        formExampleDataInitialised,
    TResult Function(_ContinuePressed value)? continuePressed,
  }) {
    return lastNamechanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstNameChanged value)? firstNamechanged,
    TResult Function(_LastNameChanged value)? lastNamechanged,
    TResult Function(_ReasonChanged value)? reasonchanged,
    TResult Function(_DescriptionChanged value)? descriptionchanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_FormExampleDataInitialised value)?
        formExampleDataInitialised,
    TResult Function(_ContinuePressed value)? continuePressed,
    required TResult orElse(),
  }) {
    if (lastNamechanged != null) {
      return lastNamechanged(this);
    }
    return orElse();
  }
}

abstract class _LastNameChanged implements FormEvent {
  const factory _LastNameChanged(String lastName) = _$_LastNameChanged;

  String get lastName => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LastNameChangedCopyWith<_LastNameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ReasonChangedCopyWith<$Res> {
  factory _$ReasonChangedCopyWith(
          _ReasonChanged value, $Res Function(_ReasonChanged) then) =
      __$ReasonChangedCopyWithImpl<$Res>;
  $Res call({String reason});
}

/// @nodoc
class __$ReasonChangedCopyWithImpl<$Res> extends _$FormEventCopyWithImpl<$Res>
    implements _$ReasonChangedCopyWith<$Res> {
  __$ReasonChangedCopyWithImpl(
      _ReasonChanged _value, $Res Function(_ReasonChanged) _then)
      : super(_value, (v) => _then(v as _ReasonChanged));

  @override
  _ReasonChanged get _value => super._value as _ReasonChanged;

  @override
  $Res call({
    Object? reason = freezed,
  }) {
    return _then(_ReasonChanged(
      reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ReasonChanged implements _ReasonChanged {
  const _$_ReasonChanged(this.reason);

  @override
  final String reason;

  @override
  String toString() {
    return 'FormEvent.reasonchanged(reason: $reason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReasonChanged &&
            (identical(other.reason, reason) ||
                const DeepCollectionEquality().equals(other.reason, reason)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(reason);

  @JsonKey(ignore: true)
  @override
  _$ReasonChangedCopyWith<_ReasonChanged> get copyWith =>
      __$ReasonChangedCopyWithImpl<_ReasonChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName) firstNamechanged,
    required TResult Function(String lastName) lastNamechanged,
    required TResult Function(String reason) reasonchanged,
    required TResult Function(String description) descriptionchanged,
    required TResult Function(DateTime date) dateChanged,
    required TResult Function(FormExampleData formExampleData)
        formExampleDataInitialised,
    required TResult Function() continuePressed,
  }) {
    return reasonchanged(reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String firstName)? firstNamechanged,
    TResult Function(String lastName)? lastNamechanged,
    TResult Function(String reason)? reasonchanged,
    TResult Function(String description)? descriptionchanged,
    TResult Function(DateTime date)? dateChanged,
    TResult Function(FormExampleData formExampleData)?
        formExampleDataInitialised,
    TResult Function()? continuePressed,
  }) {
    return reasonchanged?.call(reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? firstNamechanged,
    TResult Function(String lastName)? lastNamechanged,
    TResult Function(String reason)? reasonchanged,
    TResult Function(String description)? descriptionchanged,
    TResult Function(DateTime date)? dateChanged,
    TResult Function(FormExampleData formExampleData)?
        formExampleDataInitialised,
    TResult Function()? continuePressed,
    required TResult orElse(),
  }) {
    if (reasonchanged != null) {
      return reasonchanged(reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstNameChanged value) firstNamechanged,
    required TResult Function(_LastNameChanged value) lastNamechanged,
    required TResult Function(_ReasonChanged value) reasonchanged,
    required TResult Function(_DescriptionChanged value) descriptionchanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_FormExampleDataInitialised value)
        formExampleDataInitialised,
    required TResult Function(_ContinuePressed value) continuePressed,
  }) {
    return reasonchanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FirstNameChanged value)? firstNamechanged,
    TResult Function(_LastNameChanged value)? lastNamechanged,
    TResult Function(_ReasonChanged value)? reasonchanged,
    TResult Function(_DescriptionChanged value)? descriptionchanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_FormExampleDataInitialised value)?
        formExampleDataInitialised,
    TResult Function(_ContinuePressed value)? continuePressed,
  }) {
    return reasonchanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstNameChanged value)? firstNamechanged,
    TResult Function(_LastNameChanged value)? lastNamechanged,
    TResult Function(_ReasonChanged value)? reasonchanged,
    TResult Function(_DescriptionChanged value)? descriptionchanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_FormExampleDataInitialised value)?
        formExampleDataInitialised,
    TResult Function(_ContinuePressed value)? continuePressed,
    required TResult orElse(),
  }) {
    if (reasonchanged != null) {
      return reasonchanged(this);
    }
    return orElse();
  }
}

abstract class _ReasonChanged implements FormEvent {
  const factory _ReasonChanged(String reason) = _$_ReasonChanged;

  String get reason => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ReasonChangedCopyWith<_ReasonChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DescriptionChangedCopyWith<$Res> {
  factory _$DescriptionChangedCopyWith(
          _DescriptionChanged value, $Res Function(_DescriptionChanged) then) =
      __$DescriptionChangedCopyWithImpl<$Res>;
  $Res call({String description});
}

/// @nodoc
class __$DescriptionChangedCopyWithImpl<$Res>
    extends _$FormEventCopyWithImpl<$Res>
    implements _$DescriptionChangedCopyWith<$Res> {
  __$DescriptionChangedCopyWithImpl(
      _DescriptionChanged _value, $Res Function(_DescriptionChanged) _then)
      : super(_value, (v) => _then(v as _DescriptionChanged));

  @override
  _DescriptionChanged get _value => super._value as _DescriptionChanged;

  @override
  $Res call({
    Object? description = freezed,
  }) {
    return _then(_DescriptionChanged(
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DescriptionChanged implements _DescriptionChanged {
  const _$_DescriptionChanged(this.description);

  @override
  final String description;

  @override
  String toString() {
    return 'FormEvent.descriptionchanged(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DescriptionChanged &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  _$DescriptionChangedCopyWith<_DescriptionChanged> get copyWith =>
      __$DescriptionChangedCopyWithImpl<_DescriptionChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName) firstNamechanged,
    required TResult Function(String lastName) lastNamechanged,
    required TResult Function(String reason) reasonchanged,
    required TResult Function(String description) descriptionchanged,
    required TResult Function(DateTime date) dateChanged,
    required TResult Function(FormExampleData formExampleData)
        formExampleDataInitialised,
    required TResult Function() continuePressed,
  }) {
    return descriptionchanged(description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String firstName)? firstNamechanged,
    TResult Function(String lastName)? lastNamechanged,
    TResult Function(String reason)? reasonchanged,
    TResult Function(String description)? descriptionchanged,
    TResult Function(DateTime date)? dateChanged,
    TResult Function(FormExampleData formExampleData)?
        formExampleDataInitialised,
    TResult Function()? continuePressed,
  }) {
    return descriptionchanged?.call(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? firstNamechanged,
    TResult Function(String lastName)? lastNamechanged,
    TResult Function(String reason)? reasonchanged,
    TResult Function(String description)? descriptionchanged,
    TResult Function(DateTime date)? dateChanged,
    TResult Function(FormExampleData formExampleData)?
        formExampleDataInitialised,
    TResult Function()? continuePressed,
    required TResult orElse(),
  }) {
    if (descriptionchanged != null) {
      return descriptionchanged(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstNameChanged value) firstNamechanged,
    required TResult Function(_LastNameChanged value) lastNamechanged,
    required TResult Function(_ReasonChanged value) reasonchanged,
    required TResult Function(_DescriptionChanged value) descriptionchanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_FormExampleDataInitialised value)
        formExampleDataInitialised,
    required TResult Function(_ContinuePressed value) continuePressed,
  }) {
    return descriptionchanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FirstNameChanged value)? firstNamechanged,
    TResult Function(_LastNameChanged value)? lastNamechanged,
    TResult Function(_ReasonChanged value)? reasonchanged,
    TResult Function(_DescriptionChanged value)? descriptionchanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_FormExampleDataInitialised value)?
        formExampleDataInitialised,
    TResult Function(_ContinuePressed value)? continuePressed,
  }) {
    return descriptionchanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstNameChanged value)? firstNamechanged,
    TResult Function(_LastNameChanged value)? lastNamechanged,
    TResult Function(_ReasonChanged value)? reasonchanged,
    TResult Function(_DescriptionChanged value)? descriptionchanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_FormExampleDataInitialised value)?
        formExampleDataInitialised,
    TResult Function(_ContinuePressed value)? continuePressed,
    required TResult orElse(),
  }) {
    if (descriptionchanged != null) {
      return descriptionchanged(this);
    }
    return orElse();
  }
}

abstract class _DescriptionChanged implements FormEvent {
  const factory _DescriptionChanged(String description) = _$_DescriptionChanged;

  String get description => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DescriptionChangedCopyWith<_DescriptionChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DateChangedCopyWith<$Res> {
  factory _$DateChangedCopyWith(
          _DateChanged value, $Res Function(_DateChanged) then) =
      __$DateChangedCopyWithImpl<$Res>;
  $Res call({DateTime date});
}

/// @nodoc
class __$DateChangedCopyWithImpl<$Res> extends _$FormEventCopyWithImpl<$Res>
    implements _$DateChangedCopyWith<$Res> {
  __$DateChangedCopyWithImpl(
      _DateChanged _value, $Res Function(_DateChanged) _then)
      : super(_value, (v) => _then(v as _DateChanged));

  @override
  _DateChanged get _value => super._value as _DateChanged;

  @override
  $Res call({
    Object? date = freezed,
  }) {
    return _then(_DateChanged(
      date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_DateChanged implements _DateChanged {
  const _$_DateChanged(this.date);

  @override
  final DateTime date;

  @override
  String toString() {
    return 'FormEvent.dateChanged(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DateChanged &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(date);

  @JsonKey(ignore: true)
  @override
  _$DateChangedCopyWith<_DateChanged> get copyWith =>
      __$DateChangedCopyWithImpl<_DateChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName) firstNamechanged,
    required TResult Function(String lastName) lastNamechanged,
    required TResult Function(String reason) reasonchanged,
    required TResult Function(String description) descriptionchanged,
    required TResult Function(DateTime date) dateChanged,
    required TResult Function(FormExampleData formExampleData)
        formExampleDataInitialised,
    required TResult Function() continuePressed,
  }) {
    return dateChanged(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String firstName)? firstNamechanged,
    TResult Function(String lastName)? lastNamechanged,
    TResult Function(String reason)? reasonchanged,
    TResult Function(String description)? descriptionchanged,
    TResult Function(DateTime date)? dateChanged,
    TResult Function(FormExampleData formExampleData)?
        formExampleDataInitialised,
    TResult Function()? continuePressed,
  }) {
    return dateChanged?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? firstNamechanged,
    TResult Function(String lastName)? lastNamechanged,
    TResult Function(String reason)? reasonchanged,
    TResult Function(String description)? descriptionchanged,
    TResult Function(DateTime date)? dateChanged,
    TResult Function(FormExampleData formExampleData)?
        formExampleDataInitialised,
    TResult Function()? continuePressed,
    required TResult orElse(),
  }) {
    if (dateChanged != null) {
      return dateChanged(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstNameChanged value) firstNamechanged,
    required TResult Function(_LastNameChanged value) lastNamechanged,
    required TResult Function(_ReasonChanged value) reasonchanged,
    required TResult Function(_DescriptionChanged value) descriptionchanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_FormExampleDataInitialised value)
        formExampleDataInitialised,
    required TResult Function(_ContinuePressed value) continuePressed,
  }) {
    return dateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FirstNameChanged value)? firstNamechanged,
    TResult Function(_LastNameChanged value)? lastNamechanged,
    TResult Function(_ReasonChanged value)? reasonchanged,
    TResult Function(_DescriptionChanged value)? descriptionchanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_FormExampleDataInitialised value)?
        formExampleDataInitialised,
    TResult Function(_ContinuePressed value)? continuePressed,
  }) {
    return dateChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstNameChanged value)? firstNamechanged,
    TResult Function(_LastNameChanged value)? lastNamechanged,
    TResult Function(_ReasonChanged value)? reasonchanged,
    TResult Function(_DescriptionChanged value)? descriptionchanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_FormExampleDataInitialised value)?
        formExampleDataInitialised,
    TResult Function(_ContinuePressed value)? continuePressed,
    required TResult orElse(),
  }) {
    if (dateChanged != null) {
      return dateChanged(this);
    }
    return orElse();
  }
}

abstract class _DateChanged implements FormEvent {
  const factory _DateChanged(DateTime date) = _$_DateChanged;

  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DateChangedCopyWith<_DateChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FormExampleDataInitialisedCopyWith<$Res> {
  factory _$FormExampleDataInitialisedCopyWith(
          _FormExampleDataInitialised value,
          $Res Function(_FormExampleDataInitialised) then) =
      __$FormExampleDataInitialisedCopyWithImpl<$Res>;
  $Res call({FormExampleData formExampleData});

  $FormExampleDataCopyWith<$Res> get formExampleData;
}

/// @nodoc
class __$FormExampleDataInitialisedCopyWithImpl<$Res>
    extends _$FormEventCopyWithImpl<$Res>
    implements _$FormExampleDataInitialisedCopyWith<$Res> {
  __$FormExampleDataInitialisedCopyWithImpl(_FormExampleDataInitialised _value,
      $Res Function(_FormExampleDataInitialised) _then)
      : super(_value, (v) => _then(v as _FormExampleDataInitialised));

  @override
  _FormExampleDataInitialised get _value =>
      super._value as _FormExampleDataInitialised;

  @override
  $Res call({
    Object? formExampleData = freezed,
  }) {
    return _then(_FormExampleDataInitialised(
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

class _$_FormExampleDataInitialised implements _FormExampleDataInitialised {
  const _$_FormExampleDataInitialised(this.formExampleData);

  @override
  final FormExampleData formExampleData;

  @override
  String toString() {
    return 'FormEvent.formExampleDataInitialised(formExampleData: $formExampleData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FormExampleDataInitialised &&
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
  _$FormExampleDataInitialisedCopyWith<_FormExampleDataInitialised>
      get copyWith => __$FormExampleDataInitialisedCopyWithImpl<
          _FormExampleDataInitialised>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName) firstNamechanged,
    required TResult Function(String lastName) lastNamechanged,
    required TResult Function(String reason) reasonchanged,
    required TResult Function(String description) descriptionchanged,
    required TResult Function(DateTime date) dateChanged,
    required TResult Function(FormExampleData formExampleData)
        formExampleDataInitialised,
    required TResult Function() continuePressed,
  }) {
    return formExampleDataInitialised(formExampleData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String firstName)? firstNamechanged,
    TResult Function(String lastName)? lastNamechanged,
    TResult Function(String reason)? reasonchanged,
    TResult Function(String description)? descriptionchanged,
    TResult Function(DateTime date)? dateChanged,
    TResult Function(FormExampleData formExampleData)?
        formExampleDataInitialised,
    TResult Function()? continuePressed,
  }) {
    return formExampleDataInitialised?.call(formExampleData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? firstNamechanged,
    TResult Function(String lastName)? lastNamechanged,
    TResult Function(String reason)? reasonchanged,
    TResult Function(String description)? descriptionchanged,
    TResult Function(DateTime date)? dateChanged,
    TResult Function(FormExampleData formExampleData)?
        formExampleDataInitialised,
    TResult Function()? continuePressed,
    required TResult orElse(),
  }) {
    if (formExampleDataInitialised != null) {
      return formExampleDataInitialised(formExampleData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstNameChanged value) firstNamechanged,
    required TResult Function(_LastNameChanged value) lastNamechanged,
    required TResult Function(_ReasonChanged value) reasonchanged,
    required TResult Function(_DescriptionChanged value) descriptionchanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_FormExampleDataInitialised value)
        formExampleDataInitialised,
    required TResult Function(_ContinuePressed value) continuePressed,
  }) {
    return formExampleDataInitialised(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FirstNameChanged value)? firstNamechanged,
    TResult Function(_LastNameChanged value)? lastNamechanged,
    TResult Function(_ReasonChanged value)? reasonchanged,
    TResult Function(_DescriptionChanged value)? descriptionchanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_FormExampleDataInitialised value)?
        formExampleDataInitialised,
    TResult Function(_ContinuePressed value)? continuePressed,
  }) {
    return formExampleDataInitialised?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstNameChanged value)? firstNamechanged,
    TResult Function(_LastNameChanged value)? lastNamechanged,
    TResult Function(_ReasonChanged value)? reasonchanged,
    TResult Function(_DescriptionChanged value)? descriptionchanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_FormExampleDataInitialised value)?
        formExampleDataInitialised,
    TResult Function(_ContinuePressed value)? continuePressed,
    required TResult orElse(),
  }) {
    if (formExampleDataInitialised != null) {
      return formExampleDataInitialised(this);
    }
    return orElse();
  }
}

abstract class _FormExampleDataInitialised implements FormEvent {
  const factory _FormExampleDataInitialised(FormExampleData formExampleData) =
      _$_FormExampleDataInitialised;

  FormExampleData get formExampleData => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FormExampleDataInitialisedCopyWith<_FormExampleDataInitialised>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ContinuePressedCopyWith<$Res> {
  factory _$ContinuePressedCopyWith(
          _ContinuePressed value, $Res Function(_ContinuePressed) then) =
      __$ContinuePressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$ContinuePressedCopyWithImpl<$Res> extends _$FormEventCopyWithImpl<$Res>
    implements _$ContinuePressedCopyWith<$Res> {
  __$ContinuePressedCopyWithImpl(
      _ContinuePressed _value, $Res Function(_ContinuePressed) _then)
      : super(_value, (v) => _then(v as _ContinuePressed));

  @override
  _ContinuePressed get _value => super._value as _ContinuePressed;
}

/// @nodoc

class _$_ContinuePressed implements _ContinuePressed {
  const _$_ContinuePressed();

  @override
  String toString() {
    return 'FormEvent.continuePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ContinuePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName) firstNamechanged,
    required TResult Function(String lastName) lastNamechanged,
    required TResult Function(String reason) reasonchanged,
    required TResult Function(String description) descriptionchanged,
    required TResult Function(DateTime date) dateChanged,
    required TResult Function(FormExampleData formExampleData)
        formExampleDataInitialised,
    required TResult Function() continuePressed,
  }) {
    return continuePressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String firstName)? firstNamechanged,
    TResult Function(String lastName)? lastNamechanged,
    TResult Function(String reason)? reasonchanged,
    TResult Function(String description)? descriptionchanged,
    TResult Function(DateTime date)? dateChanged,
    TResult Function(FormExampleData formExampleData)?
        formExampleDataInitialised,
    TResult Function()? continuePressed,
  }) {
    return continuePressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? firstNamechanged,
    TResult Function(String lastName)? lastNamechanged,
    TResult Function(String reason)? reasonchanged,
    TResult Function(String description)? descriptionchanged,
    TResult Function(DateTime date)? dateChanged,
    TResult Function(FormExampleData formExampleData)?
        formExampleDataInitialised,
    TResult Function()? continuePressed,
    required TResult orElse(),
  }) {
    if (continuePressed != null) {
      return continuePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirstNameChanged value) firstNamechanged,
    required TResult Function(_LastNameChanged value) lastNamechanged,
    required TResult Function(_ReasonChanged value) reasonchanged,
    required TResult Function(_DescriptionChanged value) descriptionchanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_FormExampleDataInitialised value)
        formExampleDataInitialised,
    required TResult Function(_ContinuePressed value) continuePressed,
  }) {
    return continuePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FirstNameChanged value)? firstNamechanged,
    TResult Function(_LastNameChanged value)? lastNamechanged,
    TResult Function(_ReasonChanged value)? reasonchanged,
    TResult Function(_DescriptionChanged value)? descriptionchanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_FormExampleDataInitialised value)?
        formExampleDataInitialised,
    TResult Function(_ContinuePressed value)? continuePressed,
  }) {
    return continuePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirstNameChanged value)? firstNamechanged,
    TResult Function(_LastNameChanged value)? lastNamechanged,
    TResult Function(_ReasonChanged value)? reasonchanged,
    TResult Function(_DescriptionChanged value)? descriptionchanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_FormExampleDataInitialised value)?
        formExampleDataInitialised,
    TResult Function(_ContinuePressed value)? continuePressed,
    required TResult orElse(),
  }) {
    if (continuePressed != null) {
      return continuePressed(this);
    }
    return orElse();
  }
}

abstract class _ContinuePressed implements FormEvent {
  const factory _ContinuePressed() = _$_ContinuePressed;
}

/// @nodoc
class _$FormStateTearOff {
  const _$FormStateTearOff();

  _FormState call(
      {required FormExampleData formExampleData,
      required bool showErrorMessages,
      required bool isSubmitting}) {
    return _FormState(
      formExampleData: formExampleData,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
    );
  }
}

/// @nodoc
const $FormState = _$FormStateTearOff();

/// @nodoc
mixin _$FormState {
  FormExampleData get formExampleData => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FormStateCopyWith<FormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormStateCopyWith<$Res> {
  factory $FormStateCopyWith(FormState value, $Res Function(FormState) then) =
      _$FormStateCopyWithImpl<$Res>;
  $Res call(
      {FormExampleData formExampleData,
      bool showErrorMessages,
      bool isSubmitting});

  $FormExampleDataCopyWith<$Res> get formExampleData;
}

/// @nodoc
class _$FormStateCopyWithImpl<$Res> implements $FormStateCopyWith<$Res> {
  _$FormStateCopyWithImpl(this._value, this._then);

  final FormState _value;
  // ignore: unused_field
  final $Res Function(FormState) _then;

  @override
  $Res call({
    Object? formExampleData = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
  }) {
    return _then(_value.copyWith(
      formExampleData: formExampleData == freezed
          ? _value.formExampleData
          : formExampleData // ignore: cast_nullable_to_non_nullable
              as FormExampleData,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
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
abstract class _$FormStateCopyWith<$Res> implements $FormStateCopyWith<$Res> {
  factory _$FormStateCopyWith(
          _FormState value, $Res Function(_FormState) then) =
      __$FormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {FormExampleData formExampleData,
      bool showErrorMessages,
      bool isSubmitting});

  @override
  $FormExampleDataCopyWith<$Res> get formExampleData;
}

/// @nodoc
class __$FormStateCopyWithImpl<$Res> extends _$FormStateCopyWithImpl<$Res>
    implements _$FormStateCopyWith<$Res> {
  __$FormStateCopyWithImpl(_FormState _value, $Res Function(_FormState) _then)
      : super(_value, (v) => _then(v as _FormState));

  @override
  _FormState get _value => super._value as _FormState;

  @override
  $Res call({
    Object? formExampleData = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
  }) {
    return _then(_FormState(
      formExampleData: formExampleData == freezed
          ? _value.formExampleData
          : formExampleData // ignore: cast_nullable_to_non_nullable
              as FormExampleData,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_FormState implements _FormState {
  const _$_FormState(
      {required this.formExampleData,
      required this.showErrorMessages,
      required this.isSubmitting});

  @override
  final FormExampleData formExampleData;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;

  @override
  String toString() {
    return 'FormState(formExampleData: $formExampleData, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FormState &&
            (identical(other.formExampleData, formExampleData) ||
                const DeepCollectionEquality()
                    .equals(other.formExampleData, formExampleData)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(formExampleData) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting);

  @JsonKey(ignore: true)
  @override
  _$FormStateCopyWith<_FormState> get copyWith =>
      __$FormStateCopyWithImpl<_FormState>(this, _$identity);
}

abstract class _FormState implements FormState {
  const factory _FormState(
      {required FormExampleData formExampleData,
      required bool showErrorMessages,
      required bool isSubmitting}) = _$_FormState;

  @override
  FormExampleData get formExampleData => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FormStateCopyWith<_FormState> get copyWith =>
      throw _privateConstructorUsedError;
}
