import 'package:diyapp/extensions.dart';
import 'package:diyapp/resources/dimensions.dart';
import 'package:diyapp/resources/font_sizes.dart';
import 'package:flutter/material.dart';

class ProductSectionBoxStep extends StatelessWidget {
  const ProductSectionBoxStep({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.icon,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Column(
      children: [
        Icon(
          icon,
          size: Dimensions.size50,
        ),
        Text(title,
            textAlign: TextAlign.center, style: theme.textTheme.headline4),
        Text(
          subtitle,
          textAlign: TextAlign.center,
          style:
              theme.textTheme.bodyText1?.copyWith(fontSize: FontSizes.size14),
        ),
        const SizedBox(height: Dimensions.size16),
      ],
    );
  }
}
