part of 'forgot_password_bloc.dart';

@freezed
class ForgotPasswordState with _$ForgotPasswordState {
  const factory ForgotPasswordState({
    required ForgotPasswordData forgotPasswordData,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<ForgotPasswordFailure, Unit>>
        forgotPasswordFailureOrSuccessOption,
  }) = _ForgotPasswordState;

  factory ForgotPasswordState.initial() => ForgotPasswordState(
        forgotPasswordData: ForgotPasswordData.empty(),
        showErrorMessages: false,
        isSubmitting: false,
        forgotPasswordFailureOrSuccessOption: none(),
      );
}
