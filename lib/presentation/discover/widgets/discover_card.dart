import 'package:diyapp/extensions.dart';
import 'package:diyapp/presentation/widgets/background_image.dart';
import 'package:diyapp/resources/colors.dart';
import 'package:diyapp/resources/dimensions.dart';
import 'package:diyapp/resources/font_sizes.dart';
import 'package:diyapp/resources/fonts.dart';
import 'package:flutter/material.dart';

class DiscoverCard extends StatelessWidget {
  const DiscoverCard({
    Key? key,
    required this.asset,
    required this.title,
  }) : super(key: key);

  final String asset;
  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimensions.roundedRadius16),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      child: BackgroundImage(
        asset: asset,
        child: Container(
          alignment: Alignment.bottomLeft,
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
          child: Text(
            title,
            style: theme.textTheme.headline4?.copyWith(
                fontSize: FontSizes.size16,
                color: ApplicationColors.white,
                fontFamily: Fonts.amalia),
          ),
        ),
        roundedCornerRadius: Dimensions.roundedRadius16,
      ),
    );
  }
}
