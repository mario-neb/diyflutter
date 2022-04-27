import 'dart:async';

import 'package:diyapp/domain/auth/auth_facade.dart';
import 'package:diyapp/domain/auth/user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._authFacade) : super(const AuthState.initial()) {
    _authenticationStatusSubscription = _authFacade.authenticationStatus.listen(
      (status) => add(AuthEvent.authenticationStatusChanged(status)),
    );
  }

  final AuthFacade _authFacade;
  StreamSubscription<AuthenticationStatus>? _authenticationStatusSubscription;

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    yield* event.map(
      authenticationStatusChanged: (e) async* {
        yield await _mapAuthenticationStatusChangedToState(e);
      },
      loggedOut: (_) async* {
        await _authFacade.logOut();
      },
    );
  }

  Future<AuthState> _mapAuthenticationStatusChangedToState(
    AuthenticationStatusChanged event,
  ) async {
    switch (event.status) {
      case AuthenticationStatus.unauthenticated:
        return const AuthState.unauthenticated();
      case AuthenticationStatus.authenticated:
        final userOption = await _authFacade.getLoggedInUser();
        return userOption.fold(
          () => const AuthState.unauthenticated(),
          (user) => AuthState.authenticated(user!),
        );
      default:
        return const AuthState.initial();
    }
  }

  @override
  Future<void> close() {
    _authenticationStatusSubscription?.cancel();
    _authFacade.dispose();
    return super.close();
  }
}
