import 'package:diyapp/application/forgot_password/forgot_password_bloc.dart';
import 'package:diyapp/domain/auth/auth_failure.dart';
import 'package:diyapp/domain/auth/forgot_password_failure.dart';
import 'package:diyapp/extensions.dart';
import 'package:diyapp/localization/app_localizations_key.dart';
import 'package:diyapp/presentation/register/pages/email/widgets/email_text_field.dart';
import 'package:diyapp/presentation/register/widgets/auth_error_dialog.dart';
import 'package:diyapp/presentation/register/widgets/header_with_description.dart';
import 'package:diyapp/presentation/register/widgets/navigation_panel.dart';
import 'package:diyapp/presentation/widgets/loading_screen.dart';
import 'package:diyapp/presentation/widgets/snackbar.dart';
import 'package:diyapp/resources/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgotPasswordForm extends StatelessWidget {
  const ForgotPasswordForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final forgotPasswordBloc = context.read<ForgotPasswordBloc>();

    return Column(
      children: [
        const Spacer(),
        HeaderWithDescription(
          AppLocalizationsKey.forgotPassTitle.translate(context),
          description: AppLocalizationsKey.forgotPassDesc.translate(context),
        ),
        const Spacer(),
        BlocConsumer<ForgotPasswordBloc, ForgotPasswordState>(
          listener: (_, state) {
            state.forgotPasswordFailureOrSuccessOption.fold(
                () => null,
                (either) => either.fold(
                        (failure) => _showAuthErrorDialog(context, failure),
                        (_) {
                      showSnackBar(context,
                          AppLocalizationsKey.newCodeSent.translate(context));
                      Future.delayed(const Duration(seconds: 2)).then(
                          (value) => context.navigator.replaceMainScreen());
                    }));
          },
          builder: (_, state) {
            if (state.isSubmitting) return const LoadingScreen();

            return Form(
              autovalidateMode: state.showErrorMessages
                  ? AutovalidateMode.always
                  : AutovalidateMode.disabled,
              child: Column(
                children: [
                  EmailTextField(
                    onChanged: (value) {
                      forgotPasswordBloc
                          .add(ForgotPasswordEvent.emailChanged(value));
                    },
                    validator: (_) => forgotPasswordBloc
                        .state.forgotPasswordData.email.value
                        .fold(
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
                  const SizedBox(height: Dimensions.size200),
                  NavigationPanel(
                    onContinuePressed: () {
                      forgotPasswordBloc.add(
                          ForgotPasswordEvent.forgotPasswordDataSubmitted(
                              state.forgotPasswordData));
                    },
                  ),
                  const SizedBox(height: Dimensions.size16),
                ],
              ),
            );
          },
        ),
      ],
    );
  }

  void _showAuthErrorDialog(
      BuildContext context, ForgotPasswordFailure failure) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) {
        return Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 320,
            child: AuthErrorDialog(
              failure: failure as AuthFailure,
              onButtonPressed: () {
                context.navigator.goToHomeScreen();
                context
                    .read<ForgotPasswordBloc>()
                    .add(const ForgotPasswordEvent.dialogDismissed());
              },
            ),
          ),
        );
      },
    );
  }

  void showSnackBar(BuildContext context, String message) {
    DiySnackbar(messsage: message);
  }
}
