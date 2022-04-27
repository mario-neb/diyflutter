import 'dart:async';

import 'package:diyapp/domain/settings/login_method/login_method.dart';
import 'package:diyapp/domain/settings/settings_repository.dart';
import 'package:diyapp/extensions.dart';
import 'package:diyapp/resources/constants.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: SettingsRepository)
class SettingsRepositoryImpl implements SettingsRepository {
  SettingsRepositoryImpl(this._sharedPreferences) {
    _getThemeMode();
    _getLocale();
    _getLoginMethod();
  }

  final SharedPreferences _sharedPreferences;
  final _themeController = StreamController<ThemeMode>();
  final _localeController = StreamController<Locale>();
  final _loginMethodController = StreamController<LoginMethod>();

  @override
  Stream<ThemeMode> get themeMode => _themeController.stream;

  @override
  Stream<Locale> get locale => _localeController.stream;

  @override
  Stream<LoginMethod> get loginMethod => _loginMethodController.stream;

  @override
  Future<void> saveThemeMode(ThemeMode mode) async {
    await _sharedPreferences.setString(Constants.themeModeKey, mode.value);
    _getThemeMode();
  }

  @override
  Future<void> saveLocale(Locale locale) async {
    await _sharedPreferences.setString(
      Constants.localeKey,
      locale.languageCode,
    );
    _getLocale();
  }

  @override
  Future<void> saveLoginMethod(LoginMethod loginMethod) async {
    await _sharedPreferences.setString(
      Constants.loginMethodKey,
      loginMethod.value,
    );
    _getLoginMethod();
  }

  void _getThemeMode() {
    final themeMode =
        _sharedPreferences.getString(Constants.themeModeKey)?.toThemeMode();
    if (themeMode != null) {
      _themeController.sink.add(themeMode);
    }
  }

  void _getLocale() {
    final localeString = _sharedPreferences.getString(Constants.localeKey);
    if (localeString != null) {
      _localeController.sink.add(Locale(localeString));
    }
  }

  void _getLoginMethod() {
    final loginMethod =
        _sharedPreferences.getString(Constants.loginMethodKey)?.toLoginMethod();
    if (loginMethod != null) {
      _loginMethodController.sink.add(loginMethod);
    }
  }

  @override
  void dispose() {
    _themeController.close();
    _localeController.close();
    _loginMethodController.close();
  }
}
