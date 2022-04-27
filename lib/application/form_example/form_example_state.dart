part of 'form_example_bloc.dart';

@freezed
class FormExampleState with _$FormExampleState {
  const factory FormExampleState({
    required FormExamplePage page,
    required FormExampleData formExampleData,
  }) = _FormExampleState;

  factory FormExampleState.initial() => FormExampleState(
        page: FormExamplePage.form,
        formExampleData: FormExampleData.initialised(),
      );
}

enum FormExamplePage { form, review, finalStep }

extension RegisterPageExtensions on FormExamplePage {
  double get progress {
    const values = FormExamplePage.values;
    return (values.indexOf(this) + 1) / values.length;
  }

  FormExamplePage get next {
    const values = FormExamplePage.values;
    final index = math.min(values.length - 1, values.indexOf(this));
    return values[(index + 1)];
  }

  FormExamplePage get previous {
    const values = FormExamplePage.values;
    final index = math.max(1, values.indexOf(this));
    return values[(index - 1)];
  }
}
