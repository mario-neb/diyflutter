import 'package:diyapp/application/form_example/form_example_bloc.dart';
import 'package:diyapp/application/form_example/review/review_bloc.dart';
import 'package:diyapp/domain/form_example/form_example_data.dart';
import 'package:diyapp/domain/form_example/form_example_failure.dart';
import 'package:diyapp/extensions.dart';
import 'package:diyapp/localization/app_localizations_key.dart';
import 'package:diyapp/presentation/form_example/pages/review/widgets/products_error_dialog.dart';
import 'package:diyapp/presentation/register/widgets/header_with_description.dart';
import 'package:diyapp/presentation/register/widgets/navigation_panel.dart';
import 'package:diyapp/presentation/widgets/flexible_single_child_scroll_view.dart';
import 'package:diyapp/presentation/widgets/information_tile.dart';
import 'package:diyapp/presentation/widgets/loading_screen.dart';
import 'package:diyapp/resources/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FormExampleReviewForm extends StatelessWidget {
  const FormExampleReviewForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formExampleReviewBloc = context.read<ReviewBloc>();
    final formExampleBloc = context.read<FormExampleBloc>();
    return FlexibleSingleChildScrollView(
      child: Column(
        children: [
          HeaderWithDescription(
            AppLocalizationsKey.formExample.translate(context),
            description:
                AppLocalizationsKey.formExampleReviewScreen.translate(context),
          ),
          BlocConsumer<ReviewBloc, ReviewState>(
            listener: (_, state) {
              state.formExampleFailureOrSuccessOption.fold(
                () => null,
                (either) => either.fold(
                  //Display the popup with the failure.
                  (failure) => _showReviewFormErrorDialog(context, failure),
                  //If nothing goes wrong, submit the form.
                  (_) => formExampleBloc.add(
                    const FormExampleEvent.nextPressed(),
                  ),
                ),
              );
            },
            builder: (_, state) {
              //Form is now submitting, show loading screen.
              if (state.isSubmitting) {
                return const LoadingScreen();
              }
              return _FormExampleData(state.formExampleData);
            },
          ),
          const Spacer(),
          NavigationPanel(
            onCancelPressed: () {
              context.navigator.pop();
            },
            onContinuePressed: () {
              formExampleReviewBloc.add(const ReviewEvent.continuePressed());
            },
          ),
          const SizedBox(height: Dimensions.size16),
        ],
      ),
    );
  }

  void _showReviewFormErrorDialog(
      BuildContext context, FormExampleFailure failure) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) {
        return Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 320,
            child: FormErrorDialog(
              failure: failure,
              onButtonPressed: () {
                context.navigator.pop();
                context
                    .read<ReviewBloc>()
                    .add(const ReviewEvent.dialogDismissed());
              },
            ),
          ),
        );
      },
    );
  }
}

class _FormExampleData extends StatelessWidget {
  const _FormExampleData(
    this.formExampleData, {
    Key? key,
  }) : super(key: key);

  final FormExampleData formExampleData;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InformationTile(
              AppLocalizationsKey.formExampleFirstNameHint.translate(context),
              description: formExampleData.firstName.getOrCrash(),
            ),
            InformationTile(
              AppLocalizationsKey.formExampleLastNameHint.translate(context),
              description: formExampleData.lastName.getOrCrash(),
            ),
            InformationTile(
              AppLocalizationsKey.formExampleReasonHint.translate(context),
              description: formExampleData.reason.getOrCrash(),
            ),
            InformationTile(
              AppLocalizationsKey.formExampleDescriptionHint.translate(context),
              description: formExampleData.description.getOrCrash(),
            ),
            InformationTile(
              AppLocalizationsKey.formExampleDateHint.translate(context),
              description: formExampleData.date.getOrCrash().toString(),
            ),
          ],
        ),
      ],
    );
  }
}
