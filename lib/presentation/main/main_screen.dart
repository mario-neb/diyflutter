import 'package:diyapp/application/auth/auth_bloc.dart';
import 'package:diyapp/extensions.dart';
import 'package:diyapp/localization/app_localizations_key.dart';
import 'package:diyapp/presentation/core/auth_guard.dart';
import 'package:diyapp/presentation/main/widgets/main_scaffold.dart';
import 'package:diyapp/resources/font_sizes.dart';
import 'package:diyapp/resources/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthGuard(
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (_, state) {
          final isUserLoggedIn = state.maybeMap(
            authenticated: (_) => true,
            orElse: () => false,
          );
          return WillPopScope(
            onWillPop: () async =>
                await _showExitConfirmationDialog(context) ?? false,
            child: MainScaffold(isUserLoggedIn: isUserLoggedIn),
          );
        },
      ),
    );
  }

  Future<bool?> _showExitConfirmationDialog(BuildContext context) {
    final bloc = context.read<AuthBloc>();
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            AppLocalizationsKey.confirmExitDialogTitle.translate(context),
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: Fonts.amalia,
              fontSize: FontSizes.size20,
            ),
          ),
          content: Text(
            AppLocalizationsKey.confirmExitDialogMessage.translate(context),
            style: const TextStyle(
              fontFamily: Fonts.amalia,
              fontSize: FontSizes.size16,
            ),
          ),
          actions: [
            TextButton(
              child: Text(
                AppLocalizationsKey.confirmExitDialogNo.translate(context),
                style: const TextStyle(
                  fontSize: FontSizes.size16,
                  fontFamily: Fonts.amalia,
                ),
              ),
              onPressed: () => context.navigator.pop(),
            ),
            TextButton(
              child: Text(
                AppLocalizationsKey.confirmExitDialogYes.translate(context),
                style: const TextStyle(
                  fontSize: FontSizes.size16,
                  fontFamily: Fonts.amalia,
                ),
              ),
              onPressed: () {
                SystemNavigator.pop();
                bloc.add(const AuthEvent.loggedOut());
              },
            ),
          ],
        );
      },
    );
  }
}
