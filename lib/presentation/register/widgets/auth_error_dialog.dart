import 'package:diyapp/domain/auth/auth_failure.dart';
import 'package:diyapp/localization/app_localizations_key.dart';
import 'package:diyapp/presentation/widgets/dialog.dart';
import 'package:flutter/material.dart';

class AuthErrorDialog extends StatelessWidget {
  const AuthErrorDialog({
    Key? key,
    this.onButtonPressed,
    required this.failure,
  }) : super(key: key);

  final VoidCallback? onButtonPressed;
  final AuthFailure failure;

  @override
  Widget build(BuildContext context) {
    return DiyDialog(
      icon: Icons.sentiment_dissatisfied,
      title: AppLocalizationsKey.error.translate(context),
      message: failure.map(
        notAuthorized: (_) => AppLocalizationsKey
            .registerExceptionWrongcredentials
            .translate(context),
        usernameExists: (_) =>
            AppLocalizationsKey.userExistsException.translate(context),
        unexpected: (_) => AppLocalizationsKey.registerExceptionUnexpectedError
            .translate(context),
        expiredRefreshToken: (_) => AppLocalizationsKey
            .registerExceptionExpiredRefreshToken
            .translate(context),
        invalidPassword: (_) => AppLocalizationsKey
            .registerExceptionInvalidPassword
            .translate(context),
        invalidValueInputted: (_) => AppLocalizationsKey
            .exceptionInvalidValueInputted
            .translate(context),
      ),
      onButtonPressed: onButtonPressed,
    );
  }
}
