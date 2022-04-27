import 'package:diyapp/localization/app_localizations_key.dart';
import 'package:diyapp/presentation/register/pages/email/widgets/terms_and_conditions_text.dart';
import 'package:diyapp/resources/fonts.dart';
import 'package:flutter/material.dart';

class DiyCheckbox extends StatelessWidget {
  const DiyCheckbox(
      {required this.onChanged,
      required this.actualValue,
      required this.startingText,
      required this.underlinedText,
      this.acceptTerms,
      required this.onPressed,
      Key? key})
      : super(key: key);

  final bool? acceptTerms;
  final ValueNotifier<bool>? actualValue;
  final String startingText;
  final String underlinedText;
  final Function(bool?)? onChanged;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Checkbox(value: actualValue!.value, onChanged: onChanged),
            Flexible(
              child: ConditionsText(
                  startingText: startingText,
                  underlinedText: underlinedText,
                  onPressed: onPressed,
                  moreThanOneLink: false),
            )
          ],
        ),
        Visibility(
          visible: !actualValue!.value,
          maintainSize: true,
          maintainAnimation: true,
          maintainState: true,
          child: Padding(
            padding: const EdgeInsets.only(top: 5, left: 24),
            child: Text(
              AppLocalizationsKey.acceptTermsError.translate(context),
              style: const TextStyle(
                color: Colors.red,
                fontFamily: Fonts.amalia,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
