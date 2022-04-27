import 'dart:async';

import 'package:diyapp/domain/form_example/form_example_data.dart';
import 'package:diyapp/domain/value_objects/value_objects.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'form_bloc.freezed.dart';
part 'form_event.dart';
part 'form_state.dart';

@injectable
class FormBloc extends Bloc<FormEvent, FormState> {
  FormBloc() : super(FormState.initial());

  @override
  Stream<FormState> mapEventToState(
    FormEvent event,
  ) async* {
    yield* event.map(
      formExampleDataInitialised: (e) async* {
        yield state.copyWith(
          formExampleData: e.formExampleData,
        );
      },
      firstNamechanged: (e) async* {
        yield state.copyWith(
          formExampleData:
              state.formExampleData.copyWith(firstName: FirstName(e.firstName)),
        );
      },
      lastNamechanged: (e) async* {
        yield state.copyWith(
          formExampleData: state.formExampleData.copyWith(
            lastName: LastName(e.lastName),
          ),
        );
      },
      reasonchanged: (e) async* {
        yield state.copyWith(
          formExampleData: state.formExampleData.copyWith(
            reason: FormReason(e.reason),
          ),
        );
      },
      descriptionchanged: (e) async* {
        yield state.copyWith(
          formExampleData: state.formExampleData.copyWith(
            description: FormDescription(e.description),
          ),
        );
      },
      dateChanged: (e) async* {
        yield state.copyWith(
          formExampleData: state.formExampleData.copyWith(
            date: FormDate(e.date),
          ),
        );
      },
      continuePressed: (e) async* {
        final firstName = state.formExampleData.firstName;
        final lastName = state.formExampleData.lastName;
        final reason = state.formExampleData.reason;
        final description = state.formExampleData.description;
        final date = state.formExampleData.date;
        final isFirstNameValid = firstName.isValid();
        final isLastNameValid = lastName.isValid();
        final isFathersNameValid = reason.isValid();
        final isDescriptionValid = description.isValid();
        final isDateValid = date.isValid();
        /*Validation in the ExampleForm Widget. Form handles the messages
        with autovalidateMode bool based on our showErrorMessages attribute in FormExampleData*/
        if (isDateValid &&
            isDescriptionValid &&
            isFathersNameValid &&
            isFirstNameValid &&
            isLastNameValid) {
          yield state.copyWith(
            isSubmitting: true,
            showErrorMessages: false,
          );
        }

        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
        );
      },
    );
  }
}
