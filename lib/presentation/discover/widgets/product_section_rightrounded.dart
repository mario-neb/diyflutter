import 'package:diyapp/extensions.dart';
import 'package:diyapp/presentation/widgets/buttons.dart';
import 'package:diyapp/resources/colors.dart';
import 'package:diyapp/resources/dimensions.dart';
import 'package:diyapp/resources/fonts.dart';
import 'package:flutter/material.dart';

class ProductSectionRightRounded extends StatelessWidget {
  const ProductSectionRightRounded({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.hint,
    required this.description,
    required this.buttonTitle,
    this.onPressed,
  }) : super(key: key);
  final String imageUrl;
  final String title;
  final String hint;
  final String description;
  final String buttonTitle;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _ProductSectionRightRoundedHeader(
          hint: hint,
          title: title,
          imageUrl: imageUrl,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
              vertical: Dimensions.size24, horizontal: Dimensions.size40),
          child: Text(
            description,
            style: context.theme.textTheme.bodyText2!
                .copyWith(fontFamily: Fonts.amalia),
          ),
        ),
        if (onPressed != null)
          ArrowButton(
            text: buttonTitle,
            halfButton: true,
            onPressed: onPressed,
          ),
      ],
    );
  }
}

class _ProductSectionRightRoundedHeader extends StatelessWidget {
  const _ProductSectionRightRoundedHeader({
    Key? key,
    required this.hint,
    required this.title,
    required this.imageUrl,
  }) : super(key: key);
  final String hint;
  final String title;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Padding(
      padding: const EdgeInsets.only(right: Dimensions.size32),
      child: Container(
        height: 320,
        width: double.infinity,
        padding: const EdgeInsets.all(Dimensions.size12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              hint,
              style: theme.textTheme.headline6?.copyWith(
                  color: ApplicationColors.cornflowerBlue,
                  fontFamily: Fonts.amalia),
            ),
            Text(
              title,
              style: theme.textTheme.headline3?.copyWith(
                  color: ApplicationColors.white, fontFamily: Fonts.amalia),
            ),
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(Dimensions.roundedRadius32),
              bottomRight: Radius.circular(Dimensions.roundedRadius32)),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(imageUrl),
          ),
        ),
      ),
    );
  }
}
