import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:diyapp/domain/auth/auth_facade.dart';
import 'package:diyapp/domain/auth/login_failure.dart';
import 'package:diyapp/domain/value_objects/value_objects.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(
    this._authFacade,
  ) : super(const LoginState.initial());

  final AuthFacade _authFacade;

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    yield* event.map(
      emailPasswordEntered: (e) async* {
        yield* _performActionOnAuthFacade(
          () => _authFacade.loginWithCredentials(
              email: Email(e.email), password: Password(e.password)),
        );
      },
      fingerprintScanned: (_) async* {
        yield* _performActionOnAuthFacade(
          () => _authFacade.logInWithBiometrics(),
        );
      },
      faceScanned: (_) async* {
        yield* _performActionOnAuthFacade(
          () => _authFacade.logInWithBiometrics(),
        );
      },
    );
  }

  Stream<LoginState> _performActionOnAuthFacade(
      Future<Either<LoginFailure, AuthenticationStatus>> Function()
          forwardedCall) async* {
    yield const LoginState.loading();
    final failOrLogIn = await forwardedCall();

    yield failOrLogIn.fold(
      (l) => LoginState.error(l),
      (r) {
        switch (r) {
          case AuthenticationStatus.unauthenticated:
            return const LoginState.unconfirmed();
          case AuthenticationStatus.authenticated:
            return const LoginState.success(
              LoginStep.mainScreen,
            );
          default:
            return const LoginState.success(
              LoginStep.mainScreen,
            );
        }
      },
    );
  }
}
