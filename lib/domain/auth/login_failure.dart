import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_failure.freezed.dart';

@freezed
class LoginFailure with _$LoginFailure {
  const factory LoginFailure.notAuthorized() = _NotLoginorized;
  const factory LoginFailure.invalidConfiguration() = _InvalidConfiguration;
  const factory LoginFailure.invalidState() = _InvalidState;
  const factory LoginFailure.tooManyFailedAttempts() = _TooManyFailedAttempts;
  const factory LoginFailure.userCancelledSignIn() = _UserCancelledSignIn;
  const factory LoginFailure.unableToSignIn() = _UnableToSignIn;
  const factory LoginFailure.userNotConfirmed() = _UserNotConfirmed;
  const factory LoginFailure.unknownHost() = _UnknownHost;
  const factory LoginFailure.userNotFound() = _UserNotFound;
  const factory LoginFailure.unknownError() = _UnknownError;
  const factory LoginFailure.platformException() = _PlatformException;
}
