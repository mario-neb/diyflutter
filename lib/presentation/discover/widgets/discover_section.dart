import 'package:diyapp/extensions.dart';
import 'package:diyapp/presentation/widgets/buttons.dart';
import 'package:diyapp/resources/dimensions.dart';
import 'package:diyapp/resources/fonts.dart';
import 'package:flutter/material.dart';

class DiscoverSection extends StatelessWidget {
  const DiscoverSection({
    Key? key,
    this.asset,
    this.subtitle,
    required this.title,
    required this.description,
    required this.buttonText,
    this.onPressed,
  }) : super(key: key);

  final String? asset;
  final String? subtitle;
  final String title;
  final String description;
  final String buttonText;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Padding(
      padding: const EdgeInsets.all(Dimensions.size20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(Dimensions.size20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: theme.textTheme.subtitle1!
                      .copyWith(fontFamily: Fonts.amalia),
                ),
                const SizedBox(height: Dimensions.size16),
                Text(
                  description,
                  style: theme.textTheme.bodyText2!.copyWith(
                      fontFamily: Fonts.amalia,
                      color: context.theme.colorScheme.secondary,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          if (asset != null)
            Padding(
              padding: const EdgeInsets.all(Dimensions.size50),
              child: Image.asset(asset!),
            ),
          if (subtitle != null)
            Center(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: Dimensions.size24, bottom: Dimensions.size20),
                child: Text(subtitle!,
                    style: theme.textTheme.bodyText1!.copyWith(
                        fontFamily: Fonts.amalia,
                        color: context.theme.colorScheme.secondary)),
              ),
            ),
          Center(
            child: ArrowButton(
              text: buttonText,
              halfButton: true,
              onPressed: onPressed,
            ),
          ),
        ],
      ),
    );
  }
}
