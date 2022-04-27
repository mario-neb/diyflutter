import 'dart:async';
import 'dart:math' as math;

import 'package:bloc/bloc.dart';
import 'package:diyapp/domain/form_example/form_example_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'form_example_bloc.freezed.dart';
part 'form_example_event.dart';
part 'form_example_state.dart';

@injectable
class FormExampleBloc extends Bloc<FormExampleEvent, FormExampleState> {
  FormExampleBloc() : super(FormExampleState.initial());

  @override
  Stream<FormExampleState> mapEventToState(
    FormExampleEvent event,
  ) async* {
    yield* event.map(
      backPressed: (e) async* {
        yield state.copyWith(page: state.page.previous);
      },
      nextPressed: (e) async* {
        yield state.copyWith(page: state.page.next);
      },
      formExampleDataSubmitted: (e) async* {
        yield state.copyWith(
          formExampleData: e.formExampleData,
          page: state.page.next,
        );
      },
    );
  }
}
