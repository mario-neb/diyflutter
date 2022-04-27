import 'package:diyapp/application/form_example/form/form_bloc.dart';
import 'package:diyapp/application/form_example/form_example_bloc.dart';
import 'package:diyapp/di/injection.dart';
import 'package:diyapp/presentation/form_example/pages/form/widgets/example_form.dart';
import 'package:diyapp/resources/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExampleFormPage extends StatelessWidget {
  const ExampleFormPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formExampleData =
        context.read<FormExampleBloc>().state.formExampleData;
    print(formExampleData);
    return BlocProvider(
      create: (context) => getIt<FormBloc>()
        ..add(FormEvent.formExampleDataInitialised(formExampleData)),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: Dimensions.size24),
        child: ExampleForm(),
      ),
    );
  }
}
