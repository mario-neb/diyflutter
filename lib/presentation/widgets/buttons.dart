// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:diyapp/extensions.dart';
import 'package:diyapp/localization/app_localizations_key.dart';
import 'package:diyapp/presentation/widgets/round_icon.dart';
import 'package:diyapp/resources/assets.dart';
import 'package:diyapp/resources/colors.dart';
import 'package:diyapp/resources/dimensions.dart';
import 'package:diyapp/resources/font_sizes.dart';
import 'package:diyapp/resources/fonts.dart';
import 'package:diyapp/resources/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CloseButton extends StatelessWidget {
  const CloseButton({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: theme.dialogBackgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          )),
      child: Text(
        AppLocalizationsKey.close.translate(context).toUpperCase(),
        style: context.theme.textTheme.button!.copyWith(
          fontFamily: Fonts.amalia,
        ),
      ),
      onPressed: onPressed ?? () => context.navigator.pop(),
    );
  }
}

class ArrowButton extends StatelessWidget {
  const ArrowButton({
    Key? key,
    required this.text,
    required this.halfButton,
    this.onPressed,
  }) : super(key: key);

  ArrowButton.next({
    Key? key,
    required this.halfButton,
    this.onPressed,
  })  : text = Strings.continueText,
        super(key: key);

  final String text;
  final bool halfButton;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: halfButton ? Dimensions.size250 : null,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.only(
              left: Dimensions.size4, right: Dimensions.size4),
          primary: ApplicationColors.cornflowerBlue,
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(Dimensions.roundedRadius32),
          // ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: Dimensions.size20,
                    left: Dimensions.size20,
                    bottom: Dimensions.size20,
                    right: Dimensions.size20),
                child: Text(
                  text == Strings.continueText
                      ? AppLocalizationsKey.continueText.translate(context)
                      : text,
                  style: const TextStyle(
                    color: ApplicationColors.white,
                    fontSize: FontSizes.size18,
                    fontFamily: Fonts.amalia,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.all(Dimensions.size8),
            //   child: RoundIcon(
            //     icon: SvgPicture.asset(Assets.continueIcon),
            //     iconSize: Dimensions.size32,
            //     iconColor: ApplicationColors.transparent,
            //     backgroundColor: ApplicationColors.cornflowerBlue,
            //     iconPadding: Dimensions.size8,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

class SeeMoreButton extends StatelessWidget {
  const SeeMoreButton({
    Key? key,
    required this.text,
    required this.halfButton,
    this.onPressed,
  }) : super(key: key);

  final String text;
  final bool halfButton;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: halfButton ? 220 : null,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: const EdgeInsets.only(right: Dimensions.size4),
          primary: ApplicationColors.transparent,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(Dimensions.size4),
                child: Text(
                  text,
                  style: TextStyle(
                    color: context.theme.colorScheme.secondary,
                    fontSize: FontSizes.size14,
                    fontFamily: Fonts.amalia,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 8, left: 8, bottom: 8, right: 20),
              child: RoundIcon(
                icon: SvgPicture.asset(Assets.continueIcon),
                iconSize: Dimensions.size8,
                iconColor: ApplicationColors.transparent,
                backgroundColor: ApplicationColors.cornflowerBlue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DropDownButton<T> extends FormField<T> {
  DropDownButton({
    Key? key,
    String? text,
    String? hint,
    required FormFieldValidator<T> validator,
    required VoidCallback onPressed,
  }) : super(
          key: key,
          validator: validator,
          builder: (state) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                OutlinedButton(
                  onPressed: onPressed,
                  style: OutlinedButton.styleFrom(
                    primary: ApplicationColors.cornflowerBlue,
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(Dimensions.roundedRadius32),
                    ),
                    backgroundColor: ApplicationColors.white,
                    padding: const EdgeInsets.only(
                      left: Dimensions.size24,
                      right: Dimensions.size8,
                      top: Dimensions.size8,
                      bottom: Dimensions.size8,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 5,
                        child: Text(
                          text ?? hint ?? '',
                          style: state.context.theme.textTheme.button?.copyWith(
                            color: text != null
                                ? ApplicationColors.shark
                                : ApplicationColors.bombay,
                            fontFamily: Fonts.amalia,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: RoundIcon.arrowDown(
                          icon: SvgPicture.asset(Assets.dropdownIcon),
                        ),
                      ),
                    ],
                  ),
                ),
                if (state.hasError)
                  Padding(
                    padding: const EdgeInsets.only(top: 8, left: 24),
                    child: Text(
                      state.errorText ?? '',
                      // TODO: adjust error style
                      style: const TextStyle(
                        color: Colors.red,
                        fontFamily: Fonts.amalia,
                      ),
                    ),
                  )
              ],
            );
          },
        );
}
