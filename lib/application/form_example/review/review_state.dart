part of 'review_bloc.dart';

@freezed
class ReviewState with _$ReviewState {
  const factory ReviewState({
    required FormExampleData formExampleData,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<FormExampleFailure, Unit>>
        formExampleFailureOrSuccessOption,
  }) = _ReviewState;

  factory ReviewState.initial() => ReviewState(
        formExampleData: FormExampleData.initialised(),
        showErrorMessages: false,
        isSubmitting: false,
        formExampleFailureOrSuccessOption: none(),
      );
}
