import 'package:diyapp/extensions.dart';
import 'package:diyapp/localization/app_localizations_key.dart';
import 'package:diyapp/resources/colors.dart';
import 'package:diyapp/resources/dimensions.dart';
import 'package:diyapp/resources/font_sizes.dart';
import 'package:diyapp/resources/fonts.dart';
import 'package:flutter/material.dart';

class DiyDialog extends StatelessWidget {
  const DiyDialog({
    Key? key,
    required this.title,
    required this.message,
    this.icon,
    this.onButtonPressed,
  }) : super(key: key);

  final IconData? icon;
  final String title;
  final String message;
  final VoidCallback? onButtonPressed;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimensions.roundedRadius16),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Dimensions.size16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(height: Dimensions.size12),
            Icon(
              icon,
              color: context.theme.colorScheme.secondary,
              size: 35,
            ),
            Text(
              title,
              style: TextStyle(
                  fontFamily: Fonts.amalia,
                  color: context.theme.colorScheme.secondary,
                  fontSize: FontSizes.size18,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              message,
              style: const TextStyle(
                fontFamily: Fonts.amalia,
                color: ApplicationColors.jumbo,
                fontSize: FontSizes.size14,
              ),
              textAlign: TextAlign.center,
            ),
            TextButton(
              child: Text(
                AppLocalizationsKey.ok.translate(context).toUpperCase(),
                style: TextStyle(
                  fontFamily: Fonts.amalia,
                  color: context.theme.colorScheme.secondary,
                  fontSize: FontSizes.size18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: onButtonPressed,
            ),
            const SizedBox(height: Dimensions.size12),
          ],
        ),
      ),
    );
  }
}
