import 'package:diyapp/extensions.dart';
import 'package:diyapp/presentation/discover/widgets/product_section_box_step.dart';
import 'package:diyapp/presentation/widgets/buttons.dart';
import 'package:diyapp/resources/colors.dart';
import 'package:diyapp/resources/dimensions.dart';
import 'package:diyapp/resources/font_sizes.dart';
import 'package:diyapp/resources/fonts.dart';
import 'package:flutter/material.dart';

class ProductSectionBox extends StatelessWidget {
  const ProductSectionBox({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.buttonText,
    required this.productSteps,
    this.onPressed,
  }) : super(key: key);
  final String title;
  final String subtitle;
  final String buttonText;
  final List<ProductSectionBoxStep> productSteps;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Container(
      color: ApplicationColors.wildSand,
      height: 750,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: Dimensions.size16, horizontal: Dimensions.size20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              textAlign: TextAlign.center,
              style: context.theme.textTheme.headline4!
                  .copyWith(fontFamily: Fonts.amalia),
            ),
            Text(
              subtitle,
              style: theme.textTheme.bodyText1?.copyWith(
                  fontSize: FontSizes.size14, fontFamily: Fonts.amalia),
            ),
            ...productSteps,
            if (onPressed != null)
              ArrowButton(
                text: buttonText,
                halfButton: true,
                onPressed: onPressed,
              ),
          ],
        ),
      ),
    );
  }
}
