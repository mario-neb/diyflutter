import 'package:diyapp/extensions.dart';
import 'package:diyapp/localization/app_localizations_key.dart';
import 'package:diyapp/resources/colors.dart';
import 'package:diyapp/resources/dimensions.dart';
import 'package:diyapp/resources/font_sizes.dart';
import 'package:diyapp/resources/fonts.dart';
import 'package:flutter/material.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({
    Key? key,
    required this.child,
    this.title,
    this.height,
    this.showCancelButton = false,
  }) : super(key: key);

  final Widget child;
  final String? title;
  final double? height;
  final bool showCancelButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: const EdgeInsets.symmetric(
        horizontal: Dimensions.size24,
        vertical: Dimensions.size24,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: Dimensions.size24,
        vertical: Dimensions.size20,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimensions.roundedRadius16),
        color: ApplicationColors.white,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const _DragButton(),
          if (title != null)
            Padding(
              padding: const EdgeInsets.only(bottom: Dimensions.size24),
              child: Text(
                title!,
                style: context.theme.textTheme.bodyText2!.copyWith(
                  fontFamily: Fonts.amalia,
                ),
              ),
            ),
          child,
          if (showCancelButton) const Spacer(),
          if (showCancelButton) const _CancelButton()
        ],
      ),
    );
  }
}

class BottomSheetList<T> extends StatelessWidget {
  const BottomSheetList({
    Key? key,
    required this.items,
    required this.onPressed,
  }) : super(key: key);

  final List<T> items;
  final Function(T) onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return GestureDetector(
            onTap: () {
              onPressed(item);
              Navigator.pop(context);
            },
            child: Text(
              item.toString(),
              style: context.theme.textTheme.button?.copyWith(
                color: ApplicationColors.black,
                fontFamily: Fonts.amalia,
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) =>
            const SizedBox(height: Dimensions.size24),
      ),
    );
  }
}

class _DragButton extends StatelessWidget {
  const _DragButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: Dimensions.size24),
      height: 8,
      width: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Dimensions.roundedRadius16),
        color: ApplicationColors.blackHaze,
      ),
    );
  }
}

class _CancelButton extends StatelessWidget {
  const _CancelButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
        AppLocalizationsKey.cancel.translate(context).toUpperCase(),
        style: const TextStyle(
          fontFamily: Fonts.amalia,
          fontSize: FontSizes.size14,
          color: ApplicationColors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      onPressed: () => context.navigator.pop(),
    );
  }
}
