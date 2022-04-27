part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.redirectToPage(RegisterPage? page) =
      _RedirectToPage;

  const factory RegisterEvent.backPressed() = _BackPressed;

  const factory RegisterEvent.nextPressed() = _NextPressed;

  const factory RegisterEvent.registerDataSubmitted(RegisterData registerData) =
      _RegisterDataSubmitted;
}
