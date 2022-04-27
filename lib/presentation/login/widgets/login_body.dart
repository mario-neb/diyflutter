import 'package:diyapp/application/login/login_bloc.dart';
import 'package:diyapp/domain/auth/login_failure.dart';
import 'package:diyapp/extensions.dart';
import 'package:diyapp/presentation/login/widgets/error_login_dialog.dart';
import 'package:diyapp/presentation/login/widgets/login_method_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        state.maybeMap(
          success: (state) => _navigateTo(context),
          error: (state) => _showErrorLoginDialog(context, state.failure),
          orElse: () {},
        );
      },
      child: const LoginMethodSwitcher(),
    );
  }

  void _showErrorLoginDialog(BuildContext context, LoginFailure failure) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) {
        return Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 320,
            child: ErrorLoginDialog(
              failure: failure,
            ),
          ),
        );
      },
    );
  }

  void _navigateTo(BuildContext context) {
    final routeName =
        ModalRoute.of(context)?.settings.arguments as LoginRedirect?;
    if (routeName == null) {
      context.navigator.replaceMainScreen();
    } else {
      switch (routeName) {
        case LoginRedirect.FormExampleScreen:
          context.navigator.replaceFormExampleScreen();
          break;
      }
    }
  }
}
