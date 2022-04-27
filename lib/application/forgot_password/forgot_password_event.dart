part of 'forgot_password_bloc.dart';

@freezed
class ForgotPasswordEvent with _$ForgotPasswordEvent {
  const ForgotPasswordEvent._();

  const factory ForgotPasswordEvent.emailChanged(String email) = _EmailChanged;

  const factory ForgotPasswordEvent.forgotPasswordDataSubmitted(
      ForgotPasswordData forgotPasswordData) = _ForgotPasswordDataSubmitted;

  const factory ForgotPasswordEvent.dialogDismissed() = _DialogDismissed;
}
