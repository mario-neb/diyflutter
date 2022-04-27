import 'package:diyapp/extensions.dart';
import 'package:diyapp/localization/app_localizations_key.dart';
import 'package:diyapp/resources/colors.dart';
import 'package:diyapp/resources/dimensions.dart';
import 'package:diyapp/resources/font_sizes.dart';
import 'package:diyapp/resources/fonts.dart';
import 'package:flutter/material.dart';

class CancelButton extends StatelessWidget {
  const CancelButton({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
            primary: ApplicationColors.cornflowerBlue, elevation: 1),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: Dimensions.size20,
            horizontal: Dimensions.size20,
          ),
          child: Text(
            AppLocalizationsKey.cancel.translate(context),
            style: TextStyle(
              color: context.theme.colorScheme.secondary,
              fontSize: FontSizes.size16,
              fontFamily: Fonts.amalia,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
