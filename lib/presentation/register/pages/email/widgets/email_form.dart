import 'package:diyapp/application/register/email/email_bloc.dart';
import 'package:diyapp/application/register/register_bloc.dart';
import 'package:diyapp/domain/auth/auth_failure.dart';
import 'package:diyapp/extensions.dart';
import 'package:diyapp/localization/app_localizations_key.dart';
import 'package:diyapp/presentation/register/pages/email/widgets/email_text_field.dart';
import 'package:diyapp/presentation/register/pages/email/widgets/password_text_field.dart';
import 'package:diyapp/presentation/register/pages/email/widgets/terms_and_conditions_text.dart';
import 'package:diyapp/presentation/register/widgets/auth_error_dialog.dart';
import 'package:diyapp/presentation/register/widgets/header_text.dart';
import 'package:diyapp/presentation/register/widgets/navigation_panel.dart';
import 'package:diyapp/presentation/widgets/flexible_single_child_scroll_view.dart';
import 'package:diyapp/presentation/widgets/loading_screen.dart';
import 'package:diyapp/resources/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailForm extends StatelessWidget {
  const EmailForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final emailBloc = context.read<EmailBloc>();
    final registerBloc = context.read<RegisterBloc>();

    return FlexibleSingleChildScrollView(
      child: Column(
        children: [
          const Spacer(),
          HeaderText(
            AppLocalizationsKey.registerInformationTitle.translate(context),
          ),
          const Spacer(),
          BlocConsumer<EmailBloc, EmailState>(
            listenWhen: (p, c) =>
                p.authFailureOrSuccessOption != c.authFailureOrSuccessOption,
            listener: (_, state) {
              state.authFailureOrSuccessOption.fold(
                () => null,
                (either) => either.fold(
                  (failure) => _showAuthErrorDialog(context, failure),
                  (_) => registerBloc.add(
                    RegisterEvent.registerDataSubmitted(state.registerData),
                  ),
                ),
              );
            },
            builder: (_, state) {
              //State of the email page, isSubmitting
              if (state.isSubmitting) return const LoadingScreen();

              return Form(
                autovalidateMode: state.showErrorMessages
                    ? AutovalidateMode.always
                    : AutovalidateMode.disabled,
                child: Column(
                  children: [
                    EmailTextField(
                      onChanged: (value) {
                        emailBloc.add(EmailEvent.emailChanged(value));
                      },
                      validator: (_) =>
                          emailBloc.state.registerData.email.value.fold(
                        (f) => f.maybeMap(
                          invalidEmail: (_) => AppLocalizationsKey
                              .formatValidation
                              .translate(context),
                          empty: (_) => AppLocalizationsKey.loginEmailValidator
                              .translate(context),
                          orElse: () => '',
                        ),
                        (_) => null,
                      ),
                    ),
                    const SizedBox(height: Dimensions.size32),
                    PasswordTextField(
                      onChanged: (value) {
                        emailBloc.add(EmailEvent.passwordChanged(value));
                      },
                      validator: (_) =>
                          emailBloc.state.registerData.email.value.fold(
                        (f) => f.maybeMap(
                          empty: (_) => AppLocalizationsKey.loginPassValidator
                              .translate(context),
                          orElse: () => '',
                        ),
                        (_) => null,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          const Spacer(flex: 2),
          ConditionsText(
            moreThanOneLink: false,
            startingText:
                AppLocalizationsKey.termsConditionsFirstPart.translate(context),
            underlinedText: AppLocalizationsKey.termsConditionsSecondPart
                .translate(context),
            onPressed: () {
              context.navigator.pushTermsAndConditionsScreen();
            },
            onConsentPressed: () {
              context.navigator.pushHomeScreen();
            },
          ),
          const Spacer(),
          NavigationPanel(
            onContinuePressed: () {
              emailBloc.add(const EmailEvent.continuePressed());
            },
          ),
          const SizedBox(height: Dimensions.size16),
        ],
      ),
    );
  }

  void _showAuthErrorDialog(BuildContext context, AuthFailure failure) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) {
        return Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 320,
            child: AuthErrorDialog(
              failure: failure,
              onButtonPressed: () {
                if (failure == const AuthFailure.expiredRefreshToken() ||
                    failure == const AuthFailure.invalidPassword() ||
                    failure == const AuthFailure.notAuthorized() ||
                    failure == const AuthFailure.unexpected()) {
                  context.navigator.pop();
                } else {
                  context.navigator.goToHomeScreen();
                }
                context
                    .read<EmailBloc>()
                    .add(const EmailEvent.dialogDismissed());
              },
            ),
          ),
        );
      },
    );
  }
}
