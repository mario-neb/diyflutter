import 'package:diyapp/presentation/widgets/circle.dart';
import 'package:diyapp/resources/assets.dart';
import 'package:diyapp/resources/colors.dart';
import 'package:diyapp/resources/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum IconType { right, down, none }

class RoundIcon extends StatelessWidget {
  const RoundIcon(
      {Key? key,
      this.iconSize,
      this.icon,
      this.iconColor,
      this.backgroundColor,
      this.iconPadding,
      this.iconType = IconType.none})
      : super(key: key);

  const RoundIcon.arrowDown(
      {Key? key,
      this.icon,
      this.iconSize = Dimensions.size12,
      this.iconColor = ApplicationColors.transparent,
      this.backgroundColor = ApplicationColors.wildSand,
      this.iconPadding = Dimensions.size12,
      this.iconType = IconType.down})
      : super(key: key);

  const RoundIcon.arrowRight(
      {Key? key,
      this.icon,
      this.iconSize = Dimensions.size16,
      this.iconColor = ApplicationColors.transparent,
      this.backgroundColor = ApplicationColors.cornflowerBlue,
      this.iconPadding = Dimensions.size8,
      this.iconType = IconType.right})
      : super(key: key);

  final double? iconSize;
  final SvgPicture? icon;
  final Color? iconColor;
  final Color? backgroundColor;
  final double? iconPadding;
  final IconType iconType;

  @override
  Widget build(BuildContext context) {
    return Circle(
      padding: EdgeInsets.all(iconPadding ?? 0),
      color: backgroundColor,
      child: Circle(
        color: iconColor,
        padding: const EdgeInsets.all(Dimensions.size8),
        child: _getIcon(iconType, icon),
      ),
    );
  }

  SvgPicture? _getIcon(IconType iconType, SvgPicture? icon) {
    switch (iconType) {
      case IconType.right:
        return SvgPicture.asset(Assets.continueIcon);
      case IconType.down:
        return SvgPicture.asset(Assets.dropdownIcon);
      default:
        return icon;
    }
  }
}
