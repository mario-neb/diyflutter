import 'package:diyapp/extensions.dart';
import 'package:diyapp/resources/colors.dart';
import 'package:diyapp/resources/dimensions.dart';
import 'package:diyapp/resources/fonts.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class TopBar extends StatelessWidget with PreferredSizeWidget {
  const TopBar({
    Key? key,
    required this.title,
    this.automaticallyImplyLeading = true,
    this.onBackPressed,
  }) : super(key: key);

  final String title;
  final bool automaticallyImplyLeading;
  final VoidCallback? onBackPressed;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final parentRoute = ModalRoute.of(context);
    final bool canPop =
        ((parentRoute?.canPop ?? false) || onBackPressed != null) &&
            automaticallyImplyLeading;
    return AppBar(
      automaticallyImplyLeading: automaticallyImplyLeading,
      backgroundColor: theme.scaffoldBackgroundColor,
      centerTitle: true,
      elevation: 0,
      leading: Visibility(
        visible: canPop,
        child: Container(
          padding: const EdgeInsets.only(left: Dimensions.size8),
          alignment: Alignment.center,
          child: RawMaterialButton(
            onPressed: onBackPressed ?? () => Navigator.of(context).pop(),
            fillColor: ApplicationColors.white,
            child: const Icon(
              MdiIcons.arrowLeftThick,
              size: 25,
              color: ApplicationColors.black,
            ),
            padding: const EdgeInsets.all(Dimensions.size4),
            shape: const CircleBorder(),
          ),
        ),
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: Dimensions.size20,
          fontWeight: FontWeight.bold,
          fontFamily: Fonts.amalia,
          color: theme.colorScheme.secondary,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
