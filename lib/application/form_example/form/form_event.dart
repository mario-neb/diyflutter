part of 'form_bloc.dart';

@freezed
class FormEvent with _$FormEvent {
  const factory FormEvent.firstNamechanged(String firstName) =
      _FirstNameChanged;

  const factory FormEvent.lastNamechanged(String lastName) = _LastNameChanged;

  const factory FormEvent.reasonchanged(String reason) = _ReasonChanged;

  const factory FormEvent.descriptionchanged(String description) =
      _DescriptionChanged;

  const factory FormEvent.dateChanged(DateTime date) = _DateChanged;

  const factory FormEvent.formExampleDataInitialised(
      FormExampleData formExampleData) = _FormExampleDataInitialised;

  const factory FormEvent.continuePressed() = _ContinuePressed;
}
