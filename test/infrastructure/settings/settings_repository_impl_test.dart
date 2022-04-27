import 'package:diyapp/extensions.dart';
import 'package:diyapp/infrastructure/settings/settings_repository_impl.dart';
import 'package:diyapp/resources/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  const locale = Locale('en');
  const themeMode = ThemeMode.light;
  late SettingsRepositoryImpl settingsRepository;
  late SharedPreferences sharedPreferences;

  group('SettingsRepositoryImpl', () {
    setUp(() async {
      SharedPreferences.setMockInitialValues({});
      sharedPreferences = await SharedPreferences.getInstance();
      settingsRepository = SettingsRepositoryImpl(sharedPreferences);
    });

    tearDown(() {
      settingsRepository.dispose();
    });

    test('should save languageCode to shared preferences', () async {
      await settingsRepository.saveLocale(locale);
      expect(
        sharedPreferences.getString(Constants.localeKey),
        locale.languageCode,
      );
    });

    test('should emit correct saved locale', () async {
      await settingsRepository.saveLocale(locale);
      expect(
        settingsRepository.locale,
        emits(locale),
      );
    });

    test('should save themeMode to shared preferences', () async {
      await settingsRepository.saveThemeMode(themeMode);
      expect(
        sharedPreferences.getString(Constants.themeModeKey),
        themeMode.value,
      );
    });

    test('should emit correct saved themeMode', () async {
      await settingsRepository.saveThemeMode(themeMode);
      expect(
        settingsRepository.themeMode,
        emits(themeMode),
      );
    });
  });
}
