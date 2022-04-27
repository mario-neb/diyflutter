import 'package:diyapp/application/auth/auth_bloc.dart';
import 'package:diyapp/application/register/register_bloc.dart';
import 'package:diyapp/di/injection.dart';
import 'package:diyapp/extensions.dart';
import 'package:diyapp/presentation/main/main_screen.dart';
import 'package:diyapp/presentation/register/pages/email/email_page.dart';
import 'package:diyapp/presentation/register/pages/final_step/final_step_page.dart';
import 'package:diyapp/presentation/register/widgets/progress_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nil/nil.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final redirectPage =
        ModalRoute.of(context)?.settings.arguments as RegisterPage?;
    return BlocProvider(
      create: (_) => getIt<RegisterBloc>()
        ..add(RegisterEvent.redirectToPage(redirectPage)),
      child: BlocBuilder<RegisterBloc, RegisterState>(
        builder: (context, state) {
          return _RegisterBody(state: state);
        },
      ),
    );
  }
}

class _RegisterBody extends StatelessWidget {
  const _RegisterBody({Key? key, required this.state}) : super(key: key);

  final RegisterState state;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => onBackPressed(context, state.page, state.firstPage),
      child: Scaffold(
        appBar: ProgressTopBar(
          progress: state.page.progress,
          onBackPressed: state.page == RegisterPage.finalStep
              ? null
              : () => onBackPressed(context, state.page, state.firstPage),
        ),
        body: _body(state.page),
      ),
    );
  }

  Future<bool> onBackPressed(
      BuildContext context, RegisterPage page, RegisterPage firstPage) async {
    if (page == RegisterPage.values.last) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const MainScreen()),
      );
    } else if (page == firstPage) {
      context.read<AuthBloc>().add(const AuthEvent.loggedOut());
      context.navigator.pop();
    } else {
      context.read<RegisterBloc>().add(const RegisterEvent.backPressed());
    }

    return false;
  }

  Widget _body(RegisterPage page) {
    switch (page) {
      case RegisterPage.email:
        return const EmailPage();
      case RegisterPage.finalStep:
        return const FinalStepPage();
      default:
        return nil;
    }
  }
}
