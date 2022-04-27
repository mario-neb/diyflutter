// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'forgot_password_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ForgotPasswordDataTearOff {
  const _$ForgotPasswordDataTearOff();

  _ForgotPasswordData call({required Email email}) {
    return _ForgotPasswordData(
      email: email,
    );
  }
}

/// @nodoc
const $ForgotPasswordData = _$ForgotPasswordDataTearOff();

/// @nodoc
mixin _$ForgotPasswordData {
  Email get email => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForgotPasswordDataCopyWith<ForgotPasswordData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordDataCopyWith<$Res> {
  factory $ForgotPasswordDataCopyWith(
          ForgotPasswordData value, $Res Function(ForgotPasswordData) then) =
      _$ForgotPasswordDataCopyWithImpl<$Res>;
  $Res call({Email email});
}

/// @nodoc
class _$ForgotPasswordDataCopyWithImpl<$Res>
    implements $ForgotPasswordDataCopyWith<$Res> {
  _$ForgotPasswordDataCopyWithImpl(this._value, this._then);

  final ForgotPasswordData _value;
  // ignore: unused_field
  final $Res Function(ForgotPasswordData) _then;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
    ));
  }
}

/// @nodoc
abstract class _$ForgotPasswordDataCopyWith<$Res>
    implements $ForgotPasswordDataCopyWith<$Res> {
  factory _$ForgotPasswordDataCopyWith(
          _ForgotPasswordData value, $Res Function(_ForgotPasswordData) then) =
      __$ForgotPasswordDataCopyWithImpl<$Res>;
  @override
  $Res call({Email email});
}

/// @nodoc
class __$ForgotPasswordDataCopyWithImpl<$Res>
    extends _$ForgotPasswordDataCopyWithImpl<$Res>
    implements _$ForgotPasswordDataCopyWith<$Res> {
  __$ForgotPasswordDataCopyWithImpl(
      _ForgotPasswordData _value, $Res Function(_ForgotPasswordData) _then)
      : super(_value, (v) => _then(v as _ForgotPasswordData));

  @override
  _ForgotPasswordData get _value => super._value as _ForgotPasswordData;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_ForgotPasswordData(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
    ));
  }
}

/// @nodoc

class _$_ForgotPasswordData extends _ForgotPasswordData {
  const _$_ForgotPasswordData({required this.email}) : super._();

  @override
  final Email email;

  @override
  String toString() {
    return 'ForgotPasswordData(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ForgotPasswordData &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @JsonKey(ignore: true)
  @override
  _$ForgotPasswordDataCopyWith<_ForgotPasswordData> get copyWith =>
      __$ForgotPasswordDataCopyWithImpl<_ForgotPasswordData>(this, _$identity);
}

abstract class _ForgotPasswordData extends ForgotPasswordData {
  const factory _ForgotPasswordData({required Email email}) =
      _$_ForgotPasswordData;
  const _ForgotPasswordData._() : super._();

  @override
  Email get email => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ForgotPasswordDataCopyWith<_ForgotPasswordData> get copyWith =>
      throw _privateConstructorUsedError;
}
