import 'package:diyapp/application/login/login_bloc.dart';
import 'package:diyapp/application/settings/login_method/login_method_bloc.dart';
import 'package:diyapp/domain/settings/login_method/login_method.dart';
import 'package:diyapp/presentation/login/widgets/loading.dart';
import 'package:diyapp/presentation/widgets/biometric_scanner.dart';
import 'package:diyapp/presentation/widgets/email_password_login.dart';
import 'package:diyapp/resources/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nil/nil.dart';

class LoginMethodSwitcher extends StatelessWidget {
  const LoginMethodSwitcher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loginBloc = context.read<LoginBloc>();
    final loginMethodBloc = context.read<LoginMethodBloc>();
    return BlocBuilder<LoginMethodBloc, LoginMethodState>(
      builder: (context, state) {
        switch (state.loginMethod) {
          case LoginMethod.emailPassword:
            return Loading(
              child: EmailPasswordScreen(
                title: Strings.enterCredentials,
                onEmailPasswordSelected: (value) {
                  loginBloc.add(LoginEvent.emailPasswordEntered(
                      value.email.toString(), value.password.toString()));
                },
              ),
            );
          case LoginMethod.fingerprint:
            return BiometricsScanner(
              title: Strings.scanYourFingerprint,
              onBiometricsScanned: () {
                loginBloc.add(const LoginEvent.fingerprintScanned());
              },
              onPinPressed: () {
                loginMethodBloc.add(
                  const LoginMethodEvent.loginMethodChanged(
                      LoginMethod.emailPassword),
                );
              },
            );
          case LoginMethod.face:
            return BiometricsScanner(
              title: Strings.scanYourFace,
              onBiometricsScanned: () {
                loginBloc.add(const LoginEvent.faceScanned());
              },
              onPinPressed: () {
                loginMethodBloc.add(
                  const LoginMethodEvent.loginMethodChanged(
                      LoginMethod.emailPassword),
                );
              },
            );
          default:
            return nil;
        }
      },
    );
  }
}
