part of 'login_method_bloc.dart';

@freezed
class LoginMethodState with _$LoginMethodState {
  const factory LoginMethodState({
    required LoginMethod loginMethod,
    required List<LoginMethod> availableLoginMethods,
  }) = _LoginMethodState;

  factory LoginMethodState.initial() => const LoginMethodState(
        loginMethod: LoginMethod.emailPassword,
        availableLoginMethods: [LoginMethod.emailPassword],
      );
}
