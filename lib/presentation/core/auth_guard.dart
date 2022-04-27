import 'package:diyapp/application/auth/auth_bloc.dart';
import 'package:diyapp/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthGuard extends StatelessWidget {
  const AuthGuard({
    Key? key,
    this.child,
  }) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeWhen(
          unauthenticated: () => context.navigator.replaceMainScreen(),
          orElse: () {},
        );
      },
      child: child,
    );
  }
}
