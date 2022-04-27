import 'package:diyapp/localization/app_localizations_key.dart';
import 'package:diyapp/resources/colors.dart';
import 'package:diyapp/resources/font_sizes.dart';
import 'package:diyapp/resources/fonts.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ConditionsText extends StatelessWidget {
  const ConditionsText(
      {Key? key,
      this.onPressed,
      this.onConsentPressed,
      required this.startingText,
      required this.underlinedText,
      this.underlinedConsentText,
      this.moreThanOneLink = true})
      : super(key: key);

  final VoidCallback? onPressed;
  final VoidCallback? onConsentPressed;
  final String startingText;
  final String underlinedText;
  final String? underlinedConsentText;
  final bool moreThanOneLink;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: startingText,
            style: const TextStyle(
              fontFamily: Fonts.amalia,
              fontSize: FontSizes.size16,
              color: ApplicationColors.jumbo,
            ),
          ),
          TextSpan(
            text: underlinedText,
            recognizer: TapGestureRecognizer()..onTap = onPressed,
            style: const TextStyle(
              fontFamily: Fonts.amalia,
              color: ApplicationColors.jumbo,
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.bold,
              fontSize: FontSizes.size16,
            ),
          ),
          if (moreThanOneLink)
            TextSpan(
              text: AppLocalizationsKey.conjunctionAnd.translate(context),
              style: const TextStyle(
                fontFamily: Fonts.amalia,
                fontSize: FontSizes.size16,
                color: ApplicationColors.jumbo,
              ),
            ),
          TextSpan(
            text: underlinedConsentText,
            recognizer: TapGestureRecognizer()..onTap = onConsentPressed,
            style: const TextStyle(
              fontFamily: Fonts.amalia,
              color: ApplicationColors.jumbo,
              decoration: TextDecoration.underline,
              fontWeight: FontWeight.bold,
              fontSize: FontSizes.size16,
            ),
          ),
        ],
      ),
    );
  }
}
