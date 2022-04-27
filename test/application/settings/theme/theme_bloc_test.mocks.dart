// Mocks generated by Mockito 5.1.0 from annotations
// in diyapp/test/application/settings/theme/theme_bloc_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i3;
import 'dart:ui' as _i5;

import 'package:diyapp/domain/settings/login_method/login_method.dart' as _i6;
import 'package:diyapp/domain/settings/settings_repository.dart' as _i2;
import 'package:flutter/material.dart' as _i4;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

/// A class which mocks [SettingsRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockSettingsRepository extends _i1.Mock
    implements _i2.SettingsRepository {
  MockSettingsRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Stream<_i4.ThemeMode> get themeMode => (super.noSuchMethod(
      Invocation.getter(#themeMode),
      returnValue: Stream<_i4.ThemeMode>.empty()) as _i3.Stream<_i4.ThemeMode>);
  @override
  _i3.Stream<_i5.Locale> get locale =>
      (super.noSuchMethod(Invocation.getter(#locale),
          returnValue: Stream<_i5.Locale>.empty()) as _i3.Stream<_i5.Locale>);
  @override
  _i3.Stream<_i6.LoginMethod> get loginMethod =>
      (super.noSuchMethod(Invocation.getter(#loginMethod),
              returnValue: Stream<_i6.LoginMethod>.empty())
          as _i3.Stream<_i6.LoginMethod>);
  @override
  _i3.Future<void> saveThemeMode(_i4.ThemeMode? themeMode) =>
      (super.noSuchMethod(Invocation.method(#saveThemeMode, [themeMode]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i3.Future<void>);
  @override
  _i3.Future<void> saveLocale(_i5.Locale? locale) =>
      (super.noSuchMethod(Invocation.method(#saveLocale, [locale]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i3.Future<void>);
  @override
  _i3.Future<void> saveLoginMethod(_i6.LoginMethod? loginMethod) =>
      (super.noSuchMethod(Invocation.method(#saveLoginMethod, [loginMethod]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i3.Future<void>);
  @override
  void dispose() => super.noSuchMethod(Invocation.method(#dispose, []),
      returnValueForMissingStub: null);
}