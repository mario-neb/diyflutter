import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure.notAuthorized() = _NotAuthorized;

  const factory AuthFailure.usernameExists() = _UsernameExists;

  const factory AuthFailure.expiredRefreshToken() = _ExpiredRefreshToken;

  const factory AuthFailure.unexpected() = _Unexpected;

  const factory AuthFailure.invalidPassword() = _InvalidPassword;

  const factory AuthFailure.invalidValueInputted() = _InvalidValueInputted;
}
