import 'package:diyapp/extensions.dart';
import 'package:diyapp/presentation/widgets/buttons.dart';
import 'package:diyapp/resources/colors.dart';
import 'package:diyapp/resources/dimensions.dart';
import 'package:flutter/material.dart';

class DiscoverSectionFull extends StatelessWidget {
  const DiscoverSectionFull({
    Key? key,
    required this.asset,
    required this.subtitle,
    required this.title,
    required this.buttonText,
    this.onPressed,
  }) : super(key: key);

  final String asset;
  final String subtitle;
  final String title;
  final String buttonText;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Container(
          margin: const EdgeInsets.only(
            bottom: Dimensions.size24,
          ),
          height: 500,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(Dimensions.roundedRadius44),
                bottomLeft: Radius.circular(Dimensions.roundedRadius44),
              ),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  asset,
                ),
              )),
        ),
        Container(
          margin: const EdgeInsets.only(
            bottom: 100,
            left: Dimensions.size40,
            right: Dimensions.size40,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                subtitle,
                style: theme.textTheme.headline6?.copyWith(
                  color: ApplicationColors.cornflowerBlue,
                ),
              ),
              Text(
                title,
                style: theme.textTheme.headline3,
              ),
            ],
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
    );
  }
}
