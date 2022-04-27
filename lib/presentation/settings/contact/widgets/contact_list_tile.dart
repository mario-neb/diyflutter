import 'package:diyapp/extensions.dart';
import 'package:diyapp/presentation/widgets/round_icon.dart';
import 'package:diyapp/resources/colors.dart';
import 'package:diyapp/resources/dimensions.dart';
import 'package:diyapp/resources/font_sizes.dart';
import 'package:diyapp/resources/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ContactListTile extends StatelessWidget {
  const ContactListTile({
    Key? key,
    required this.title,
    required this.icon,
    required this.subtitle,
    this.onPressed,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final String title;
  final String subtitle;
  final SvgPicture icon;

  @override
  Widget build(BuildContext context) {
    final color = context.theme.colorScheme.secondary;
    return Container(
      height: Dimensions.size70,
      child: ListTile(
        shape: RoundedRectangleBorder(
          side: const BorderSide(
              color: ApplicationColors.cornflowerBlue, width: 2),
          borderRadius: BorderRadius.circular(Dimensions.size16),
        ),
        contentPadding: EdgeInsets.zero,
        onTap: onPressed,
        leading: RoundIcon(
          icon: icon,
          iconSize: Dimensions.size24,
          iconColor: ApplicationColors.transparent,
          // backgroundColor: ApplicationColors.white,
          iconPadding: Dimensions.size8,
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: Dimensions.size24),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: FontSizes.size16,
              color: ApplicationColors.grey,
              fontFamily: Fonts.amalia,
            ),
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(left: Dimensions.size24),
          child: Text(
            subtitle,
            style: TextStyle(
              fontSize: FontSizes.size16,
              color: color,
              fontWeight: FontWeight.bold,
              fontFamily: Fonts.amalia,
            ),
          ),
        ),
        trailing: Padding(
          padding: const EdgeInsets.only(right: Dimensions.size12),
          child: Icon(
            MdiIcons.arrowRightThick,
            size: Dimensions.size24,
            color: color,
          ),
        ),
      ),
    );
  }
}
