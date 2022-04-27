import 'dart:ui';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:diyapp/application/settings/locale/locale_bloc.dart';
import 'package:diyapp/domain/settings/settings_repository.dart';

import 'locale_bloc_test.mocks.dart';

@GenerateMocks([SettingsRepository])
void main() {
  const locale = Locale('en');
  late MockSettingsRepository mockSettingsRepository;

  group('LocaleBloc', () {
    late LocaleBloc localeBloc;

    setUp(() {
      mockSettingsRepository = MockSettingsRepository();
      when(mockSettingsRepository.locale)
          .thenAnswer((_) => Stream.fromIterable([locale]));
      localeBloc = LocaleBloc(mockSettingsRepository);
    });

    tearDown(() {
      localeBloc.close();
    });

    test('initial state is correct', () {
      expect(localeBloc.state, LocaleState.initial());
    });

    test('should listen locale stream', () {
      verify(mockSettingsRepository.locale).called(1);
    });

    blocTest<LocaleBloc, LocaleState>(
      'should call saveLocale with correct locale',
      build: () => localeBloc,
      act: (bloc) => bloc.add(const LocaleEvent.localeSaved(locale)),
      verify: (_) {
        verify(mockSettingsRepository.saveLocale(locale)).called(1);
      },
    );

    blocTest<LocaleBloc, LocaleState>(
      'should emit correct locale when LocaleEvent.localeSaved is added',
      build: () => localeBloc,
      act: (bloc) => bloc.add(const LocaleEvent.localeSaved(locale)),
      expect: () => [const LocaleState(locale: locale)],
    );
  });
}
