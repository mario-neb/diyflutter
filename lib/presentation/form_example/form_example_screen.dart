import 'package:diyapp/application/form_example/form_example_bloc.dart';
import 'package:diyapp/di/injection.dart';
import 'package:diyapp/extensions.dart';
import 'package:diyapp/presentation/form_example/pages/final_step/final_step_page.dart';
import 'package:diyapp/presentation/form_example/pages/form/example_form_page.dart';
import 'package:diyapp/presentation/form_example/pages/review/review_page.dart';
import 'package:diyapp/presentation/register/widgets/progress_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nil/nil.dart';

class FormExampleScreen extends StatelessWidget {
  const FormExampleScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<FormExampleBloc>(),
      child: BlocBuilder<FormExampleBloc, FormExampleState>(
        builder: (context, state) {
          return _FormExampleContent(state: state);
        },
      ),
    );
  }
}

class _FormExampleContent extends StatelessWidget {
  const _FormExampleContent({Key? key, required this.state}) : super(key: key);

  final FormExampleState state;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => onBackPressed(context, state.page),
      child: Scaffold(
        appBar: ProgressTopBar(
          progress: state.page.progress,
          onBackPressed: () => onBackPressed(context, state.page),
        ),
        body: _body(state.page),
      ),
    );
  }

  Future<bool> onBackPressed(BuildContext context, FormExamplePage page) async {
    if (page == FormExamplePage.values.last) {
      context.navigator.replaceMainScreen();
    } else if (page == FormExamplePage.values.first) {
      context.navigator.pop();
    } else {
      context.read<FormExampleBloc>().add(const FormExampleEvent.backPressed());
    }
    return false;
  }

  Widget _body(FormExamplePage page) {
    switch (page) {
      case FormExamplePage.form:
        return const ExampleFormPage();
      case FormExamplePage.review:
        return const ReviewPage();
      case FormExamplePage.finalStep:
        return const FinalStepPage();
      default:
        return nil;
    }
  }
}
