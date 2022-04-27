import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:diyapp/domain/auth/auth_facade.dart';
import 'package:diyapp/domain/auth/auth_failure.dart';
import 'package:diyapp/domain/register/entities/register_data.dart';
import 'package:diyapp/domain/value_objects/value_objects.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'email_bloc.freezed.dart';
part 'email_event.dart';
part 'email_state.dart';

@injectable
class EmailBloc extends Bloc<EmailEvent, EmailState> {
  EmailBloc(this._authFacade) : super(EmailState.initial());

  final AuthFacade _authFacade;

  @override
  Stream<EmailState> mapEventToState(
    EmailEvent event,
  ) async* {
    yield* event.map(
      emailChanged: (e) async* {
        yield state.copyWith(
          registerData:
              state.registerData.copyWith(email: Email(e.emailString)),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          registerData:
              state.registerData.copyWith(password: Password(e.passwordString)),
        );
      },
      continuePressed: (e) async* {
        final email = state.registerData.email;
        final isEmailValid = email.isValid();

        if (isEmailValid) {
          yield state.copyWith(
            isSubmitting: true,
            authFailureOrSuccessOption: none(),
          );
          final failureOrSuccess = await _authFacade.register(
            state.registerData,
          );

          yield state.copyWith(
            isSubmitting: false,
            authFailureOrSuccessOption: optionOf(failureOrSuccess),
          );
        } else {
          yield state.copyWith(
            isSubmitting: false,
            showErrorMessages: true,
          );
        }
      },
      dialogDismissed: (e) async* {
        yield state.copyWith(
          authFailureOrSuccessOption: none(),
        );
      },
    );
  }
}
