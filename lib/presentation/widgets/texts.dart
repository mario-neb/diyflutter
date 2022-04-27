import 'package:diyapp/extensions.dart';
import 'package:diyapp/resources/colors.dart';
import 'package:diyapp/resources/dimensions.dart';
import 'package:diyapp/resources/font_sizes.dart';
import 'package:diyapp/resources/fonts.dart';
import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: FontSizes.size20,
        fontFamily: Fonts.amalia,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class TitleText extends StatelessWidget {
  const TitleText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: FontSizes.size16,
        fontFamily: Fonts.amalia,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class DescriptionText extends StatelessWidget {
  const DescriptionText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: FontSizes.size16,
        fontFamily: Fonts.amalia,
        fontWeight: FontWeight.w300,
      ),
    );
  }
}

class UnderlinedWebsiteText extends StatelessWidget {
  const UnderlinedWebsiteText({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  final String text;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style: const TextStyle(
            color: ApplicationColors.cornflowerBlue,
            fontSize: FontSizes.size16,
            fontFamily: Fonts.amalia,
            fontWeight: FontWeight.w300,
            decoration: TextDecoration.underline),
      ),
    );
  }
}

class DisplayText extends StatelessWidget {
  const DisplayText({
    Key? key,
    required this.title,
    required this.text,
    this.padding = const EdgeInsets.only(top: Dimensions.size16),
  }) : super(key: key);

  final String title;
  final String text;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: Dimensions.size24,
              bottom: Dimensions.size4,
            ),
            child: Text(
              title,
              style: context.theme.textTheme.overline,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 5,
              horizontal: 5,
            ),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.roundedRadius32),
              border: Border.all(
                width: 1,
                color: ApplicationColors.blackHaze,
              ),
              color: ApplicationColors.white,
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 11,
                horizontal: 19,
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.roundedRadius32),
                color: ApplicationColors.wildSand,
              ),
              child: Text(
                text,
                style: context.theme.textTheme.subtitle2,
              ),
            ),
          )
        ],
      ),
    );
  }
}
