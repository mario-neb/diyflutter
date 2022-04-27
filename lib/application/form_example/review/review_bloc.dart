import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:diyapp/domain/form_example/form_example_data.dart';
import 'package:diyapp/domain/form_example/form_example_failure.dart';
import 'package:diyapp/domain/form_example/form_example_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'review_bloc.freezed.dart';
part 'review_event.dart';
part 'review_state.dart';

@injectable
class ReviewBloc extends Bloc<ReviewEvent, ReviewState> {
  ReviewBloc(this._formExampleRepository) : super(ReviewState.initial());

  final FormExampleRepository _formExampleRepository;

  @override
  Stream<ReviewState> mapEventToState(
    ReviewEvent event,
  ) async* {
    yield* event.map(
      formExampleDataInitialised: (e) async* {
        yield state.copyWith(
          formExampleData: e.formExampleData,
        );
      },
      dialogDismissed: (e) async* {
        yield state.copyWith(
          formExampleFailureOrSuccessOption: none(),
        );
      },
      continuePressed: (e) async* {
        yield state.copyWith(
          isSubmitting: true,
          formExampleFailureOrSuccessOption: none(),
        );

        final failureOrSuccess = await _formExampleRepository
            .createFormExample(state.formExampleData);
        yield state.copyWith(
          isSubmitting: false,
          formExampleFailureOrSuccessOption: optionOf(failureOrSuccess),
        );

        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          formExampleFailureOrSuccessOption: none(),
        );
      },
    );
  }
}
