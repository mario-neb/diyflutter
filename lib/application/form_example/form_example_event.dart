part of 'form_example_bloc.dart';

@freezed
class FormExampleEvent with _$FormExampleEvent {
  const factory FormExampleEvent.backPressed() = _BackPressed;

  const factory FormExampleEvent.nextPressed() = _NextPressed;

  const factory FormExampleEvent.formExampleDataSubmitted(
      FormExampleData formExampleData) = _FormExampleDataSubmitted;
}
