part of 'login_method_bloc.dart';

@freezed
class LoginMethodEvent with _$LoginMethodEvent {
  const factory LoginMethodEvent.loginMethodChanged(LoginMethod loginMethod) =
      _LoginMethodChanged;

  const factory LoginMethodEvent.loginMethodSaved(LoginMethod loginMethod) =
      _LoginMethodSaved;

  const factory LoginMethodEvent.availableLoginMethodsChanged(
      List<LoginMethod> availableLoginMethods) = _AvailableLoginMethodsChanged;
}
