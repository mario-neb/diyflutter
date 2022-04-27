part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;

  const factory LoginState.loading() = _Loading;

  const factory LoginState.error(LoginFailure failure) = _Error;

  const factory LoginState.success(LoginStep loginStep) = _Success;

  const factory LoginState.unconfirmed() = _Unconfirmed;
}

enum LoginStep { mainScreen }

enum LoginRedirect {
  FormExampleScreen,
}
