import 'package:diyapp/extensions.dart';
import 'package:diyapp/resources/dimensions.dart';
import 'package:diyapp/resources/font_sizes.dart';
import 'package:diyapp/resources/fonts.dart';
import 'package:flutter/material.dart';

class ProductSection extends StatelessWidget {
  const ProductSection({
    Key? key,
    required this.asset,
    required this.title,
    required this.subtitle,
    required this.description,
  }) : super(key: key);

  final String asset;
  final String title;
  final String subtitle;
  final String description;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: Dimensions.size20, vertical: Dimensions.size20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(asset),
          Padding(
            padding: const EdgeInsets.only(top: Dimensions.size12),
            child: Text(
              title,
              style: theme.textTheme.headline4?.copyWith(
                  fontSize: FontSizes.size18, fontFamily: Fonts.amalia),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: Dimensions.size12, bottom: Dimensions.size12),
            child: Text(subtitle,
                style: context.theme.textTheme.headline5!
                    .copyWith(fontFamily: Fonts.amalia)),
          ),
          Text(
            description,
            style: theme.textTheme.bodyText2?.copyWith(
                fontSize: FontSizes.size14, fontFamily: Fonts.amalia),
          ),
        ],
      ),
    );
  }
}
