import 'package:diyapp/presentation/widgets/circle.dart';
import 'package:diyapp/resources/assets.dart';
import 'package:diyapp/resources/colors.dart';
import 'package:diyapp/resources/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CircularCheckbox extends StatelessWidget {
  const CircularCheckbox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Circle(
      color: ApplicationColors.blackHaze,
      padding: const EdgeInsets.all(Dimensions.size8),
      child: SvgPicture.asset(Assets.checkbox),
    );
  }
}
