import 'package:diyapp/domain/settings/login_method/login_method.dart';
import 'package:diyapp/domain/settings/login_method/login_method_service.dart';
import 'package:injectable/injectable.dart';
import 'package:local_auth/local_auth.dart';

@LazySingleton(as: LoginMethodService)
class LoginMethodServiceImpl implements LoginMethodService {
  LoginMethodServiceImpl(this._localAuthentication);

  final LocalAuthentication _localAuthentication;

  @override
  Future<List<LoginMethod>> get availableLoginMethods async {
    final availableBiometrics =
        await _localAuthentication.getAvailableBiometrics();

    final loginMethods =
        availableBiometrics.map((b) => b.toLoginMethod()).toList();

    return [LoginMethod.emailPassword, ...loginMethods];
  }
}

extension _BiometricTypeExtensions on BiometricType {
  LoginMethod toLoginMethod() {
    switch (this) {
      case BiometricType.face:
        return LoginMethod.face;
      case BiometricType.fingerprint:
        return LoginMethod.fingerprint;
      default:
        throw UnimplementedError();
    }
  }
}
