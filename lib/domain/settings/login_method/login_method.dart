import 'package:diyapp/resources/assets.dart';

enum LoginMethod {
  emailPassword,
  face,
  fingerprint,
}

extension LoginMethodExtensions on LoginMethod {
  String get value => toString().split('.').last;

  String get asset {
    switch (this) {
      case LoginMethod.emailPassword:
        return Assets.password;
      case LoginMethod.face:
        return Assets.face;
      case LoginMethod.fingerprint:
        return Assets.fingerprint;
      default:
        throw UnimplementedError();
    }
  }
}
