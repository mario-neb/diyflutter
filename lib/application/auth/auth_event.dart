part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authenticationStatusChanged(
      AuthenticationStatus status) = AuthenticationStatusChanged;

  const factory AuthEvent.loggedOut() = LoggedOut;
}
