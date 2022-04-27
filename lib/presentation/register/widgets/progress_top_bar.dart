import 'package:diyapp/resources/colors.dart';
import 'package:diyapp/resources/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ProgressTopBar extends StatelessWidget with PreferredSizeWidget {
  const ProgressTopBar({
    Key? key,
    required this.progress,
    this.onBackPressed,
  }) : super(key: key);

  final double progress;
  final VoidCallback? onBackPressed;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Visibility(
            visible: onBackPressed != null && progress != 1,
            maintainSize: true,
            maintainAnimation: true,
            maintainState: true,
            child: RawMaterialButton(
              onPressed: onBackPressed ?? () => Navigator.of(context).pop(),
              fillColor: ApplicationColors.white,
              child: const Icon(
                MdiIcons.arrowLeftThick,
                size: Dimensions.size24,
                color: ApplicationColors.black,
              ),
              shape: const CircleBorder(),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: Dimensions.size80),
              child: Stack(
                alignment: Alignment.centerRight,
                children: [
                  LinearPercentIndicator(
                    alignment: MainAxisAlignment.center,
                    lineHeight: Dimensions.size8,
                    percent: progress,
                    animation: true,
                    backgroundColor: ApplicationColors.white,
                    progressColor: ApplicationColors.cornflowerBlue,
                  ),
                  Visibility(
                    visible: progress == 1,
                    child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: ApplicationColors.cornflowerBlue,
                      ),
                      child: const Icon(
                        MdiIcons.check,
                        size: Dimensions.size24,
                        color: ApplicationColors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
