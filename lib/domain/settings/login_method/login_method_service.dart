import 'package:diyapp/domain/settings/login_method/login_method.dart';

abstract class LoginMethodService {
  Future<List<LoginMethod>> get availableLoginMethods;
}
