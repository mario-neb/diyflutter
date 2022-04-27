import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:diyapp/application/settings/theme/theme_bloc.dart';

void main() {
  group('ThemeState', () {
    test('should return correct values for ThemeState.initial', () {
      final state = ThemeState.initial();
      expect(state.themeMode, ThemeMode.system);
    });
  });
}
