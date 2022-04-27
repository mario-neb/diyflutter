import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:diyapp/domain/auth/auth_facade.dart';
import 'package:diyapp/domain/auth/forgot_password_failure.dart';
import 'package:diyapp/domain/forgot_password/forgot_password_data.dart';
import 'package:diyapp/domain/value_objects/value_objects.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'forgot_password_bloc.freezed.dart';
part 'forgot_password_event.dart';
part 'forgot_password_state.dart';

@injectable
class ForgotPasswordBloc
    extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
  ForgotPasswordBloc(this._authFacade) : super(ForgotPasswordState.initial());

  final AuthFacade _authFacade;

  @override
  Stream<ForgotPasswordState> mapEventToState(
    ForgotPasswordEvent event,
  ) async* {
    yield* event.map(
      emailChanged: (e) async* {
        yield state.copyWith(
          forgotPasswordData:
              state.forgotPasswordData.copyWith(email: Email(e.email)),
        );
      },
      forgotPasswordDataSubmitted: (e) async* {
        final email = state.forgotPasswordData.email;
        final isEmailValid = email.isValid();

        if (isEmailValid) {
          yield state.copyWith(
            isSubmitting: true,
            forgotPasswordFailureOrSuccessOption: none(),
          );
          final failureOrSuccess = await _authFacade.forgotPassword(
            state.forgotPasswordData.email,
          );

          yield state.copyWith(
            isSubmitting: false,
            forgotPasswordFailureOrSuccessOption: optionOf(failureOrSuccess),
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
          forgotPasswordFailureOrSuccessOption: none(),
        );
      },
    );
  }
}
