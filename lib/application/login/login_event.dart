part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.emailPasswordEntered(String email, String password) =
      _LoginSelected;

  const factory LoginEvent.fingerprintScanned() = _FingerprintScanned;

  const factory LoginEvent.faceScanned() = _FaceScanned;
}
