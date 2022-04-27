import 'package:firebase_auth/firebase_auth.dart' as auth_user;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    required String username,
    required String email,
  }) = _User;

  factory User.fromJwt(auth_user.User? tokenResult) {
    return User(
      username: tokenResult!.uid,
      email: tokenResult.email!,
    );
  }

  factory User.empty() => const User(
        username: 'Test',
        email: 'Test',
      );
}
