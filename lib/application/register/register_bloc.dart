import 'dart:async';
import 'dart:math' as math;

import 'package:bloc/bloc.dart';
import 'package:diyapp/domain/register/entities/register_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'register_bloc.freezed.dart';
part 'register_event.dart';
part 'register_state.dart';

@injectable
class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(RegisterState.initial());

  @override
  Stream<RegisterState> mapEventToState(
    RegisterEvent event,
  ) async* {
    yield* event.map(
      redirectToPage: (e) async* {
        final page = e.page;
        if (page != null) yield state.copyWith(page: page, firstPage: page);
      },
      backPressed: (e) async* {
        yield state.copyWith(page: state.page.previous);
      },
      nextPressed: (e) async* {
        yield state.copyWith(page: state.page.next);
      },
      registerDataSubmitted: (e) async* {
        yield state.copyWith(
          registerData: e.registerData,
          page: state.page.next,
        );
      },
    );
  }
}
