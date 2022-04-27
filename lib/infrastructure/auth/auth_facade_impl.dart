import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:diyapp/domain/auth/auth_facade.dart';
import 'package:diyapp/domain/auth/auth_failure.dart';
import 'package:diyapp/domain/auth/credentials_repository.dart';
import 'package:diyapp/domain/auth/forgot_password_failure.dart';
import 'package:diyapp/domain/auth/login_failure.dart';
import 'package:diyapp/domain/auth/user.dart' as user;
import 'package:diyapp/domain/register/entities/register_data.dart';
import 'package:diyapp/domain/value_objects/value_objects.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthFacade)
class AuthFacadeImpl implements AuthFacade {
  AuthFacadeImpl(
    this._credentialsRepository,
  );

  final CredentialsRepository _credentialsRepository;
  final _authStatusController = StreamController<AuthenticationStatus>();
  final _firebaseAuth = FirebaseAuth.instance;

  @override
  Stream<AuthenticationStatus> get authenticationStatus async* {
    yield AuthenticationStatus.unauthenticated;
    yield* _authStatusController.stream;
  }

  @override
  Future<Either<AuthFailure, Unit>> register(RegisterData registerData) async {
    try {
      final emailString = registerData.email.getOrCrash();
      final passwordString = registerData.password.getOrCrash();

      final userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
          email: emailString, password: passwordString);

      if (userCredential.user != null && !userCredential.user!.emailVerified) {
        await _credentialsRepository.save(
            email: emailString, password: passwordString);
        await userCredential.user!.sendEmailVerification();
        return right(unit);
      }
      return left(const AuthFailure.unexpected());
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'email-already-in-use':
          return left(const AuthFailure.usernameExists());
        case 'invalid-email':
          return left(const AuthFailure.invalidValueInputted());
        case 'weak-password':
          return left(const AuthFailure.invalidPassword());
        case 'operation-not-allowed':
          return left(const AuthFailure.notAuthorized());
        default:
      }
      return left(const AuthFailure.unexpected());
    } catch (e) {
      return left(const AuthFailure.unexpected());
    }
  }

  @override
  Future<Option<user.User>> getLoggedInUser() async {
    final tokenResult = _firebaseAuth.currentUser;
    return some(user.User.fromJwt(tokenResult));
  }

  @override
  Future<Either<LoginFailure, AuthenticationStatus>>
      logInWithBiometrics() async {
    final password = await _credentialsRepository.getPassword();
    return loginWithCredentials(password: Password(password!));
  }

  @override
  Future<Either<LoginFailure, AuthenticationStatus>> loginWithCredentials({
    Email? email,
    required Password password,
  }) async {
    try {
      final localPassword = await _credentialsRepository.getPassword();
      final inputtedPassword = password.getOrCrash();
      // Used to encrypt the password and save it on local storage for biometrics login
      // final encryptedPassword =
      //     _encrypter.encryptAndReturnInBase64(inputtedPassword);
      if (inputtedPassword.isNotEmpty) {
        final localEmail = await _credentialsRepository.getEmail();
        final result = await _firebaseAuth.signInWithEmailAndPassword(
            email: localEmail!, password: localPassword!);
        if (result.user != null) {
          _authStatusController.sink.add(AuthenticationStatus.authenticated);
          return right(AuthenticationStatus.authenticated);
        }
      }
      return left(const LoginFailure.unableToSignIn());
    } catch (e) {
      return left(const LoginFailure.unknownError());
    }
  }

  @override
  Future<Either<ForgotPasswordFailure, Unit>> forgotPassword(
      Email email) async {
    try {
      final emailString = email.getOrCrash();
      await _firebaseAuth.sendPasswordResetEmail(email: emailString);
      return right(unit);
    } catch (e) {
      return left(const ForgotPasswordFailure.unexpected());
    }
  }

  @override
  Future<void> logOut() async {
    await _firebaseAuth.signOut();
    _authStatusController.sink.add(AuthenticationStatus.unauthenticated);
  }

  @override
  void dispose() {
    _authStatusController.close();
  }
}
