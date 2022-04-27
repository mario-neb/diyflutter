import 'package:diyapp/application/register/email/email_bloc.dart';
import 'package:diyapp/di/injection.dart';
import 'package:diyapp/presentation/register/pages/email/widgets/email_form.dart';
import 'package:diyapp/resources/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailPage extends StatelessWidget {
  const EmailPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<EmailBloc>(),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: Dimensions.size24),
        child: EmailForm(),
      ),
    );
  }
}
