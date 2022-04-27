part of 'form_bloc.dart';

@freezed
class FormState with _$FormState {
  const factory FormState({
    required FormExampleData formExampleData,
    required bool showErrorMessages,
    required bool isSubmitting,
  }) = _FormState;

  factory FormState.initial() => FormState(
        formExampleData: FormExampleData.initialised(),
        showErrorMessages: false,
        isSubmitting: false,
      );
}
