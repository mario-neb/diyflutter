import 'package:diyapp/application/form_example/form_example_bloc.dart';
import 'package:diyapp/application/form_example/review/review_bloc.dart';
import 'package:diyapp/di/injection.dart';
import 'package:diyapp/presentation/form_example/pages/review/widgets/review_form.dart';
import 'package:diyapp/resources/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ReviewPage extends StatelessWidget {
  const ReviewPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formExampleData =
        context.read<FormExampleBloc>().state.formExampleData;
    return BlocProvider(
      create: (context) => getIt<ReviewBloc>()
        ..add(ReviewEvent.formExampleDataInitialised(formExampleData)),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: Dimensions.size24),
        child: FormExampleReviewForm(),
      ),
    );
  }
}
