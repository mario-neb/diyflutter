import 'package:diyapp/application/forgot_password/forgot_password_bloc.dart';
import 'package:diyapp/di/injection.dart';
import 'package:diyapp/presentation/forgot_password/widgets/forgot_password_form.dart';
import 'package:diyapp/resources/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<ForgotPasswordBloc>(),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimensions.size24),
          child: ForgotPasswordForm(),
        ),
      ),
    );
  }
}
