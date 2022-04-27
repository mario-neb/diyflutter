import 'package:diyapp/domain/settings/login_method/login_method.dart';
import 'package:flutter/material.dart';

abstract class SettingsRepository {
  Stream<ThemeMode> get themeMode;

  Stream<Locale> get locale;

  Stream<LoginMethod> get loginMethod;

  Future<void> saveThemeMode(ThemeMode themeMode);

  Future<void> saveLocale(Locale locale);

  Future<void> saveLoginMethod(LoginMethod loginMethod);

  void dispose();
}
