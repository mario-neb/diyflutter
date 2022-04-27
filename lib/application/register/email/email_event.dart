part of 'email_bloc.dart';

@freezed
class EmailEvent with _$EmailEvent {
  const factory EmailEvent.emailChanged(String emailString) = _EmailChanged;

  const factory EmailEvent.passwordChanged(String passwordString) =
      _PasswordChanged;

  const factory EmailEvent.continuePressed() = _ContinuePressed;

  const factory EmailEvent.dialogDismissed() = _DialogDismissed;
}
