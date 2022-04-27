import 'package:diyapp/domain/auth/login_failure.dart';
import 'package:diyapp/extensions.dart';
import 'package:diyapp/localization/app_localizations_key.dart';
import 'package:diyapp/presentation/widgets/dialog.dart';
import 'package:flutter/material.dart';

class ErrorLoginDialog extends StatelessWidget {
  const ErrorLoginDialog({
    Key? key,
    required this.failure,
  }) : super(key: key);

  final LoginFailure failure;

  @override
  Widget build(BuildContext context) {
    var title = AppLocalizationsKey.loginError.translate(context);
    var description =
        AppLocalizationsKey.loginErrorUnknownError.translate(context);

    failure.map(notAuthorized: (_) {
      title = AppLocalizationsKey.loginError.translate(context);
      description =
          AppLocalizationsKey.notauthorizedException.translate(context);
    }, invalidConfiguration: (_) {
      title = AppLocalizationsKey.loginError.translate(context);
      description = AppLocalizationsKey.loginErrorInvalidConfigurationException
          .translate(context);
    }, invalidState: (_) {
      title = AppLocalizationsKey.loginError.translate(context);
      description = AppLocalizationsKey.loginErrorInvalidStateException
          .translate(context);
    }, tooManyFailedAttempts: (_) {
      title = AppLocalizationsKey.loginError.translate(context);
      description =
          AppLocalizationsKey.loginErrorTooManyAttempts.translate(context);
    }, userCancelledSignIn: (_) {
      title = AppLocalizationsKey.loginError.translate(context);
      description = AppLocalizationsKey.loginErrorUserCancelledSignInException
          .translate(context);
    }, unableToSignIn: (_) {
      title = AppLocalizationsKey.loginError.translate(context);
      description = AppLocalizationsKey.loginErrorUnableToSignInException
          .translate(context);
    }, userNotConfirmed: (_) {
      title = AppLocalizationsKey.loginError.translate(context);
      description =
          AppLocalizationsKey.loginErrorUserNotConfirmed.translate(context);
    }, unknownHost: (_) {
      title = AppLocalizationsKey.loginError.translate(context);
      description =
          AppLocalizationsKey.loginErrorNoInternetConnection.translate(context);
    }, userNotFound: (_) {
      title = AppLocalizationsKey.loginError.translate(context);
      description =
          AppLocalizationsKey.loginErrorUserNotFound.translate(context);
    }, unknownError: (_) {
      title = AppLocalizationsKey.loginError.translate(context);
      description =
          AppLocalizationsKey.loginErrorUnknownError.translate(context);
    }, platformException: (_) {
      title = AppLocalizationsKey.loginError.translate(context);
      description = AppLocalizationsKey.loginFailureTryAgain.translate(context);
    });

    return DiyDialog(
      icon: Icons.sentiment_dissatisfied,
      title: title,
      message: description,
      onButtonPressed: () {
        context.navigator.pop();
      },
    );
  }
}
