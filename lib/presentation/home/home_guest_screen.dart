import 'package:diyapp/extensions.dart';
import 'package:diyapp/localization/app_localizations_key.dart';
import 'package:diyapp/presentation/widgets/buttons.dart';
import 'package:diyapp/resources/assets.dart';
import 'package:diyapp/resources/colors.dart';
import 'package:diyapp/resources/dimensions.dart';
import 'package:diyapp/resources/font_sizes.dart';
import 'package:diyapp/resources/fonts.dart';
import 'package:flutter/material.dart';

class HomeGuestScreen extends StatelessWidget {
  const HomeGuestScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(Dimensions.size32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: Dimensions.size16),
              Text(
                AppLocalizationsKey.mainAuthWelcomeMessage.translate(context),
                style: TextStyle(
                    color: theme.colorScheme.secondary,
                    fontSize: FontSizes.size20,
                    fontFamily: Fonts.futura,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: Dimensions.size16),
              Image.asset(
                Assets.diyPersonTransparent,
                width: 240,
                height: 240,
              ),
              const Spacer(),
              TextButton(
                style: TextButton.styleFrom(padding: EdgeInsets.zero),
                onPressed: () {
                  context.navigator.pushForgotPasswordScreen();
                },
                child: Text(
                  AppLocalizationsKey.forgotPasswordTitle.translate(context),
                  style: const TextStyle(
                    fontSize: FontSizes.size16,
                    color: ApplicationColors.blue,
                    fontFamily: Fonts.amalia,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              ArrowButton(
                text: AppLocalizationsKey.login.translate(context),
                halfButton: false,
                onPressed: () => context.navigator.pushLoginScreen(),
              ),
              const SizedBox(height: Dimensions.size16),
              ArrowButton(
                halfButton: false,
                text: AppLocalizationsKey.register.translate(context),
                onPressed: () => context.navigator.pushRegisterScreen(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
