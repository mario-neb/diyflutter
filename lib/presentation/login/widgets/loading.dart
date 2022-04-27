import 'package:diyapp/application/login/login_bloc.dart';
import 'package:diyapp/presentation/widgets/loading_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Loading extends StatelessWidget {
  const Loading({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (_, state) {
        if (state == const LoginState.loading()) return const LoadingScreen();
        return child;
      },
    );
  }
}
