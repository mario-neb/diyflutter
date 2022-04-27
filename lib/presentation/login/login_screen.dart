import 'package:diyapp/application/login/login_bloc.dart';
import 'package:diyapp/di/injection.dart';
import 'package:diyapp/localization/app_localizations_key.dart';
import 'package:diyapp/presentation/login/widgets/login_body.dart';
import 'package:diyapp/presentation/widgets/top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<LoginBloc>(),
      child: Scaffold(
        appBar: TopBar(title: AppLocalizationsKey.login.translate(context)),
        body: const LoginBody(),
      ),
    );
  }
}
