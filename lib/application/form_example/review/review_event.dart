part of 'review_bloc.dart';

@freezed
class ReviewEvent with _$ReviewEvent {
  const factory ReviewEvent.continuePressed() = _ContinuePressed;

  const factory ReviewEvent.formExampleDataInitialised(
      FormExampleData formExampleData) = _FormExampleDataInitialised;

  const factory ReviewEvent.dialogDismissed() = _DialogDismissed;
}
