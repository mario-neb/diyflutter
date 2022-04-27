import 'package:diyapp/extensions.dart';
import 'package:diyapp/presentation/widgets/round_icon.dart';
import 'package:diyapp/resources/assets.dart';
import 'package:diyapp/resources/colors.dart';
import 'package:diyapp/resources/dimensions.dart';
import 'package:diyapp/resources/font_sizes.dart';
import 'package:diyapp/resources/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OutlinedListTile extends StatelessWidget {
  const OutlinedListTile({
    Key? key,
    required this.title,
    required this.icon,
    this.onPressed,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final String title;
  final SvgPicture icon;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Container(
      height: 60,
      child: ListTile(
        shape: RoundedRectangleBorder(
          side: const BorderSide(
              color: ApplicationColors.cornflowerBlue, width: 2),
          borderRadius: BorderRadius.circular(Dimensions.size12),
        ),
        contentPadding: EdgeInsets.zero,
        onTap: onPressed,
        leading: RoundIcon(
          icon: icon,
          iconSize: Dimensions.size24,
          iconColor: Colors.transparent,
          backgroundColor: ApplicationColors.transparent,
          iconPadding: Dimensions.size8,
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: Dimensions.size24),
          child: Text(
            title,
            style: theme.textTheme.subtitle2!
                .copyWith(fontFamily: Fonts.amalia, fontSize: FontSizes.size16),
          ),
        ),
        trailing: RoundIcon(
          icon: SvgPicture.asset(
            Assets.continueIcon,
            color: ApplicationColors.cornflowerBlue,
          ),
          iconSize: Dimensions.size36,
          iconPadding: Dimensions.size8,
          iconColor: ApplicationColors.transparent,
        ),
      ),
    );
  }
}
