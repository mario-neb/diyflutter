import 'package:injectable/injectable.dart';
import 'package:local_auth/local_auth.dart';

@module
abstract class LocalAuthenticationModule {
  LocalAuthentication get localAuthentication => LocalAuthentication();
}
