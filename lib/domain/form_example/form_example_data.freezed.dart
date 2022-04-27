// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'form_example_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FormExampleDataTearOff {
  const _$FormExampleDataTearOff();

  _FormExampleData call(
      {required FirstName firstName,
      required LastName lastName,
      required FormDate date,
      required FormReason reason,
      required FormDescription description}) {
    return _FormExampleData(
      firstName: firstName,
      lastName: lastName,
      date: date,
      reason: reason,
      description: description,
    );
  }
}

/// @nodoc
const $FormExampleData = _$FormExampleDataTearOff();

/// @nodoc
mixin _$FormExampleData {
  FirstName get firstName => throw _privateConstructorUsedError;
  LastName get lastName => throw _privateConstructorUsedError;
  FormDate get date => throw _privateConstructorUsedError;
  FormReason get reason => throw _privateConstructorUsedError;
  FormDescription get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FormExampleDataCopyWith<FormExampleData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormExampleDataCopyWith<$Res> {
  factory $FormExampleDataCopyWith(
          FormExampleData value, $Res Function(FormExampleData) then) =
      _$FormExampleDataCopyWithImpl<$Res>;
  $Res call(
      {FirstName firstName,
      LastName lastName,
      FormDate date,
      FormReason reason,
      FormDescription description});
}

/// @nodoc
class _$FormExampleDataCopyWithImpl<$Res>
    implements $FormExampleDataCopyWith<$Res> {
  _$FormExampleDataCopyWithImpl(this._value, this._then);

  final FormExampleData _value;
  // ignore: unused_field
  final $Res Function(FormExampleData) _then;

  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? date = freezed,
    Object? reason = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as FirstName,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as LastName,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as FormDate,
      reason: reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as FormReason,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as FormDescription,
    ));
  }
}

/// @nodoc
abstract class _$FormExampleDataCopyWith<$Res>
    implements $FormExampleDataCopyWith<$Res> {
  factory _$FormExampleDataCopyWith(
          _FormExampleData value, $Res Function(_FormExampleData) then) =
      __$FormExampleDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {FirstName firstName,
      LastName lastName,
      FormDate date,
      FormReason reason,
      FormDescription description});
}

/// @nodoc
class __$FormExampleDataCopyWithImpl<$Res>
    extends _$FormExampleDataCopyWithImpl<$Res>
    implements _$FormExampleDataCopyWith<$Res> {
  __$FormExampleDataCopyWithImpl(
      _FormExampleData _value, $Res Function(_FormExampleData) _then)
      : super(_value, (v) => _then(v as _FormExampleData));

  @override
  _FormExampleData get _value => super._value as _FormExampleData;

  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? date = freezed,
    Object? reason = freezed,
    Object? description = freezed,
  }) {
    return _then(_FormExampleData(
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as FirstName,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as LastName,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as FormDate,
      reason: reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as FormReason,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as FormDescription,
    ));
  }
}

/// @nodoc

class _$_FormExampleData extends _FormExampleData {
  const _$_FormExampleData(
      {required this.firstName,
      required this.lastName,
      required this.date,
      required this.reason,
      required this.description})
      : super._();

  @override
  final FirstName firstName;
  @override
  final LastName lastName;
  @override
  final FormDate date;
  @override
  final FormReason reason;
  @override
  final FormDescription description;

  @override
  String toString() {
    return 'FormExampleData(firstName: $firstName, lastName: $lastName, date: $date, reason: $reason, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FormExampleData &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.reason, reason) ||
                const DeepCollectionEquality().equals(other.reason, reason)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(reason) ^
      const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  _$FormExampleDataCopyWith<_FormExampleData> get copyWith =>
      __$FormExampleDataCopyWithImpl<_FormExampleData>(this, _$identity);
}

abstract class _FormExampleData extends FormExampleData {
  const factory _FormExampleData(
      {required FirstName firstName,
      required LastName lastName,
      required FormDate date,
      required FormReason reason,
      required FormDescription description}) = _$_FormExampleData;
  const _FormExampleData._() : super._();

  @override
  FirstName get firstName => throw _privateConstructorUsedError;
  @override
  LastName get lastName => throw _privateConstructorUsedError;
  @override
  FormDate get date => throw _privateConstructorUsedError;
  @override
  FormReason get reason => throw _privateConstructorUsedError;
  @override
  FormDescription get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FormExampleDataCopyWith<_FormExampleData> get copyWith =>
      throw _privateConstructorUsedError;
}
