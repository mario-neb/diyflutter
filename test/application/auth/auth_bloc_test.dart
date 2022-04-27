import 'package:diyapp/application/auth/auth_bloc.dart';
import 'package:diyapp/domain/auth/auth_facade.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'auth_bloc_test.mocks.dart';

@GenerateMocks([AuthFacade])
void main() {
  MockAuthFacade mockAuthFacade;

  group('AuthBloc', () {
    late AuthBloc authBloc;

    setUp(() {
      mockAuthFacade = MockAuthFacade();
      when(mockAuthFacade.authenticationStatus).thenAnswer(
          (_) => Stream.fromIterable([AuthenticationStatus.unauthenticated]));
      authBloc = AuthBloc(mockAuthFacade);
    });

    tearDown(() {
      authBloc.close();
    });

    test('initial state is correct', () {
      expect(authBloc.state, const AuthState.initial());
    });
  });
}
