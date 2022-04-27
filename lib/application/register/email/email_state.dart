part of 'email_bloc.dart';

@freezed
class EmailState with _$EmailState {
  const factory EmailState({
    required RegisterData registerData,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _EmailState;

  factory EmailState.initial() => EmailState(
        registerData: RegisterData.empty(),
        showErrorMessages: false,
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      );
}
