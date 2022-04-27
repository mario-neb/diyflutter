import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppLocalizations {
  // Initialization
  AppLocalizations(this.locale);

  // Static Properties
  static const delegate = _AppLocalizationsDelegate();
  static const supportedLocales = [
    Locale('en', 'EN'),
    Locale('sq', 'SQ'),
  ];

  // Public Properties
  final Locale locale;

  // Private Properties
  Map<String, String>? _localizedStrings;

  // Static Methods
  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(
      context,
      AppLocalizations,
    )!;
  }

  // Public Methods
  Future<void> load() => rootBundle
      .loadString('lang/${locale.languageCode}.json')
      .then((value) => json.decode(value))
      .then((json) => _mapJsonToLocalizedStrings(json));

  String translate(String key) => _localizedStrings?[key] ?? key;

  // Private Methods
  void _mapJsonToLocalizedStrings(Map<String, dynamic> json) {
    _localizedStrings = json.map(
      (key, value) => MapEntry(key, value.toString()),
    );
  }
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => AppLocalizations.supportedLocales
      .map((e) => e.languageCode)
      .contains(locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) {
    final localizations = AppLocalizations(locale);
    return localizations.load().then((value) => localizations);
  }

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}
