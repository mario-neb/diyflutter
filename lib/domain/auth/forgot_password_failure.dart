import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_password_failure.freezed.dart';

@freezed
class ForgotPasswordFailure with _$ForgotPasswordFailure {
  const factory ForgotPasswordFailure.unexpected() = _Unexpected;

  const factory ForgotPasswordFailure.expiredCode() = _ExpiredCode;

  const factory ForgotPasswordFailure.codeMismatch() = _CodeMismatch;

  const factory ForgotPasswordFailure.limitExceededException() =
      _LimitExceededException;
}
