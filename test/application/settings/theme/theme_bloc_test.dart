import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:diyapp/application/settings/theme/theme_bloc.dart';
import 'package:diyapp/domain/settings/settings_repository.dart';

import 'theme_bloc_test.mocks.dart';

@GenerateMocks([SettingsRepository])
void main() {
  const themeMode = ThemeMode.light;
  late MockSettingsRepository mockSettingsRepository;

  group('ThemeBloc', () {
    late ThemeBloc themeBloc;

    setUp(() {
      mockSettingsRepository = MockSettingsRepository();
      when(mockSettingsRepository.themeMode)
          .thenAnswer((_) => Stream.fromIterable([themeMode]));
      themeBloc = ThemeBloc(mockSettingsRepository);
    });

    tearDown(() {
      themeBloc.close();
    });

    test('initial state is correct', () {
      expect(themeBloc.state, ThemeState.initial());
    });

    test('should listen themeMode stream', () {
      verify(mockSettingsRepository.themeMode).called(1);
    });

    blocTest<ThemeBloc, ThemeState>(
      'should call saveThemeMode with correct themeMode',
      build: () => themeBloc,
      act: (bloc) => bloc.add(const ThemeEvent.themeModeSaved(themeMode)),
      verify: (_) {
        verify(mockSettingsRepository.saveThemeMode(themeMode)).called(1);
      },
    );

    blocTest<ThemeBloc, ThemeState>(
      'should emit correct locale when ThemeEvent.themeModeSaved is added',
      build: () => themeBloc,
      act: (bloc) => bloc.add(const ThemeEvent.themeModeSaved(themeMode)),
      expect: () => [const ThemeState(themeMode: themeMode)],
    );
  });
}
