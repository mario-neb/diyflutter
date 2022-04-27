import 'package:dartz/dartz.dart';
import 'package:diyapp/domain/auth/auth_failure.dart';
import 'package:diyapp/domain/auth/forgot_password_failure.dart';
import 'package:diyapp/domain/auth/login_failure.dart';
import 'package:diyapp/domain/auth/user.dart';
import 'package:diyapp/domain/register/entities/register_data.dart';
import 'package:diyapp/domain/value_objects/value_objects.dart';

enum AuthenticationStatus { authenticated, unauthenticated }

abstract class AuthFacade {
  Stream<AuthenticationStatus> get authenticationStatus;

  Future<Either<AuthFailure, Unit>> register(RegisterData registerData);

  Future<Option<User?>> getLoggedInUser();

  Future<Either<LoginFailure, AuthenticationStatus>> loginWithCredentials(
      {Email? email, required Password password});

  Future<Either<LoginFailure, AuthenticationStatus>> logInWithBiometrics();

  Future<Either<ForgotPasswordFailure, Unit>> forgotPassword(Email email);

  Future<void> logOut();

  void dispose();
}
