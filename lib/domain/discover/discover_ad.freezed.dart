// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'discover_ad.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DiscoverAdTearOff {
  const _$DiscoverAdTearOff();

  _DiscoverAd call({required String asset, required String title}) {
    return _DiscoverAd(
      asset: asset,
      title: title,
    );
  }
}

/// @nodoc
const $DiscoverAd = _$DiscoverAdTearOff();

/// @nodoc
mixin _$DiscoverAd {
  String get asset => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DiscoverAdCopyWith<DiscoverAd> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscoverAdCopyWith<$Res> {
  factory $DiscoverAdCopyWith(
          DiscoverAd value, $Res Function(DiscoverAd) then) =
      _$DiscoverAdCopyWithImpl<$Res>;
  $Res call({String asset, String title});
}

/// @nodoc
class _$DiscoverAdCopyWithImpl<$Res> implements $DiscoverAdCopyWith<$Res> {
  _$DiscoverAdCopyWithImpl(this._value, this._then);

  final DiscoverAd _value;
  // ignore: unused_field
  final $Res Function(DiscoverAd) _then;

  @override
  $Res call({
    Object? asset = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      asset: asset == freezed
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$DiscoverAdCopyWith<$Res> implements $DiscoverAdCopyWith<$Res> {
  factory _$DiscoverAdCopyWith(
          _DiscoverAd value, $Res Function(_DiscoverAd) then) =
      __$DiscoverAdCopyWithImpl<$Res>;
  @override
  $Res call({String asset, String title});
}

/// @nodoc
class __$DiscoverAdCopyWithImpl<$Res> extends _$DiscoverAdCopyWithImpl<$Res>
    implements _$DiscoverAdCopyWith<$Res> {
  __$DiscoverAdCopyWithImpl(
      _DiscoverAd _value, $Res Function(_DiscoverAd) _then)
      : super(_value, (v) => _then(v as _DiscoverAd));

  @override
  _DiscoverAd get _value => super._value as _DiscoverAd;

  @override
  $Res call({
    Object? asset = freezed,
    Object? title = freezed,
  }) {
    return _then(_DiscoverAd(
      asset: asset == freezed
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DiscoverAd implements _DiscoverAd {
  const _$_DiscoverAd({required this.asset, required this.title});

  @override
  final String asset;
  @override
  final String title;

  @override
  String toString() {
    return 'DiscoverAd(asset: $asset, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DiscoverAd &&
            (identical(other.asset, asset) ||
                const DeepCollectionEquality().equals(other.asset, asset)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(asset) ^
      const DeepCollectionEquality().hash(title);

  @JsonKey(ignore: true)
  @override
  _$DiscoverAdCopyWith<_DiscoverAd> get copyWith =>
      __$DiscoverAdCopyWithImpl<_DiscoverAd>(this, _$identity);
}

abstract class _DiscoverAd implements DiscoverAd {
  const factory _DiscoverAd({required String asset, required String title}) =
      _$_DiscoverAd;

  @override
  String get asset => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DiscoverAdCopyWith<_DiscoverAd> get copyWith =>
      throw _privateConstructorUsedError;
}
