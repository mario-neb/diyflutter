import 'package:flutter_test/flutter_test.dart';
import 'package:diyapp/application/settings/locale/locale_bloc.dart';

void main() {
  group('LocaleState', () {
    test('returns correct values for LocaleState.initial', () {
      final state = LocaleState.initial();
      expect(state.locale, isNull);
    });
  });
}
