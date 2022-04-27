// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RegisterDataTearOff {
  const _$RegisterDataTearOff();

  _RegisterData call({required Email email, required Password password}) {
    return _RegisterData(
      email: email,
      password: password,
    );
  }
}

/// @nodoc
const $RegisterData = _$RegisterDataTearOff();

/// @nodoc
mixin _$RegisterData {
  Email get email => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterDataCopyWith<RegisterData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterDataCopyWith<$Res> {
  factory $RegisterDataCopyWith(
          RegisterData value, $Res Function(RegisterData) then) =
      _$RegisterDataCopyWithImpl<$Res>;
  $Res call({Email email, Password password});
}

/// @nodoc
class _$RegisterDataCopyWithImpl<$Res> implements $RegisterDataCopyWith<$Res> {
  _$RegisterDataCopyWithImpl(this._value, this._then);

  final RegisterData _value;
  // ignore: unused_field
  final $Res Function(RegisterData) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }
}

/// @nodoc
abstract class _$RegisterDataCopyWith<$Res>
    implements $RegisterDataCopyWith<$Res> {
  factory _$RegisterDataCopyWith(
          _RegisterData value, $Res Function(_RegisterData) then) =
      __$RegisterDataCopyWithImpl<$Res>;
  @override
  $Res call({Email email, Password password});
}

/// @nodoc
class __$RegisterDataCopyWithImpl<$Res> extends _$RegisterDataCopyWithImpl<$Res>
    implements _$RegisterDataCopyWith<$Res> {
  __$RegisterDataCopyWithImpl(
      _RegisterData _value, $Res Function(_RegisterData) _then)
      : super(_value, (v) => _then(v as _RegisterData));

  @override
  _RegisterData get _value => super._value as _RegisterData;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_RegisterData(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }
}

/// @nodoc

class _$_RegisterData extends _RegisterData {
  const _$_RegisterData({required this.email, required this.password})
      : super._();

  @override
  final Email email;
  @override
  final Password password;

  @override
  String toString() {
    return 'RegisterData(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterData &&
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
  _$RegisterDataCopyWith<_RegisterData> get copyWith =>
      __$RegisterDataCopyWithImpl<_RegisterData>(this, _$identity);
}

abstract class _RegisterData extends RegisterData {
  const factory _RegisterData(
      {required Email email, required Password password}) = _$_RegisterData;
  const _RegisterData._() : super._();

  @override
  Email get email => throw _privateConstructorUsedError;
  @override
  Password get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RegisterDataCopyWith<_RegisterData> get copyWith =>
      throw _privateConstructorUsedError;
}
