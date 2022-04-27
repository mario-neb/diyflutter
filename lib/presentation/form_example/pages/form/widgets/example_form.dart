import 'dart:developer';

import 'package:diyapp/application/form_example/form/form_bloc.dart' as bb;
import 'package:diyapp/application/form_example/form_example_bloc.dart';
import 'package:diyapp/localization/app_localizations_key.dart';
import 'package:diyapp/presentation/form_example/pages/form/widgets/date_textfield.dart';
import 'package:diyapp/presentation/form_example/pages/form/widgets/description_textfield.dart';
import 'package:diyapp/presentation/form_example/pages/form/widgets/first_name_textfield.dart';
import 'package:diyapp/presentation/form_example/pages/form/widgets/last_name_textfield.dart';
import 'package:diyapp/presentation/form_example/pages/form/widgets/reason_textfield.dart';
import 'package:diyapp/presentation/register/widgets/header_with_description.dart';
import 'package:diyapp/presentation/register/widgets/navigation_panel.dart';
import 'package:diyapp/presentation/widgets/flexible_single_child_scroll_view.dart';
import 'package:diyapp/resources/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExampleForm extends StatelessWidget {
  const ExampleForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formBloc = context.read<bb.FormBloc>();
    final formExampleBloc = context.read<FormExampleBloc>();
    inspect(formBloc);
    return FlexibleSingleChildScrollView(
      child: Column(
        children: [
          const Spacer(),
          HeaderWithDescription(
            AppLocalizationsKey.formExample.translate(context),
            description: AppLocalizationsKey.fromExampleFirstScreenInfo
                .translate(context),
          ),
          BlocConsumer<bb.FormBloc, bb.FormState>(
            listener: (_, state) {
              if (state.isSubmitting) {
                formExampleBloc.add(
                  FormExampleEvent.formExampleDataSubmitted(
                      state.formExampleData),
                );
              }
            },
            builder: (_, state) {
              return Form(
                autovalidateMode: state.showErrorMessages
                    ? AutovalidateMode.always
                    : AutovalidateMode.disabled,
                child: Column(
                  children: [
                    FirstNameTextField(
                      onChanged: (value) {
                        formBloc.add(bb.FormEvent.firstNamechanged(value));
                      },
                      validator: (_) =>
                          formBloc.state.formExampleData.firstName.value.fold(
                        (f) => f.maybeMap(
                          empty: (_) => AppLocalizationsKey
                              .formExampleFirstNamePlaceholder
                              .translate(context),
                          orElse: () => '',
                        ),
                        (_) => null,
                      ),
                    ),
                    const SizedBox(height: Dimensions.size20),
                    LastNameTextField(
                      onChanged: (value) {
                        formBloc.add(
                          bb.FormEvent.lastNamechanged(value),
                        );
                      },
                      validator: (_) =>
                          formBloc.state.formExampleData.lastName.value.fold(
                        (f) => f.maybeMap(
                          empty: (_) => AppLocalizationsKey
                              .formExampleLastNamePlaceholder
                              .translate(context),
                          orElse: () => '',
                        ),
                        (_) => null,
                      ),
                    ),
                    const SizedBox(height: Dimensions.size20),
                    ReasonTextField(
                      onChanged: (value) {
                        formBloc.add(bb.FormEvent.reasonchanged(value));
                      },
                      validator: (_) =>
                          formBloc.state.formExampleData.reason.value.fold(
                        (f) => f.maybeMap(
                          empty: (_) => AppLocalizationsKey
                              .formExampleReasonPlaceholder
                              .translate(context),
                          orElse: () => '',
                        ),
                        (_) => null,
                      ),
                    ),
                    const SizedBox(height: Dimensions.size20),
                    DescriptionTextField(
                      onChanged: (value) {
                        formBloc.add(bb.FormEvent.descriptionchanged(value));
                      },
                      validator: (_) =>
                          formBloc.state.formExampleData.description.value.fold(
                        (f) => f.maybeMap(
                          empty: (_) => AppLocalizationsKey
                              .formExampleDescriptionHint
                              .translate(context),
                          orElse: () => '',
                        ),
                        (_) => null,
                      ),
                    ),
                    const SizedBox(height: Dimensions.size20),
                    FormDateTextField(
                      onChanged: (value) {
                        formBloc.add(bb.FormEvent.dateChanged(value));
                      },
                      validator: (_) =>
                          formBloc.state.formExampleData.date.value.fold(
                        (f) => f.maybeMap(
                          missing: (value) => AppLocalizationsKey
                              .formExampleDateMissingHint
                              .translate(context),
                          invalidValue: (_) => AppLocalizationsKey
                              .formExampleDatePlaceholder
                              .translate(context),
                          orElse: () => '',
                        ),
                        (_) => null,
                      ),
                    ),
                    const SizedBox(height: Dimensions.size20),
                  ],
                ),
              );
            },
          ),
          const Spacer(flex: 2),
          NavigationPanel(
            onContinuePressed: () {
              formBloc.add(const bb.FormEvent.continuePressed());
            },
          ),
          const SizedBox(height: Dimensions.size16),
        ],
      ),
    );
  }
}
