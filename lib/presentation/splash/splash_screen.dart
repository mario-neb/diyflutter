import 'dart:async';

import 'package:diyapp/extensions.dart';
import 'package:diyapp/resources/assets.dart';
import 'package:diyapp/resources/colors.dart';
import 'package:diyapp/resources/dimensions.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 500))
        .then((value) => context.navigator.replaceMainScreen());
    return Scaffold(
      backgroundColor: ApplicationColors.cornflowerBlue,
      body: Center(
        child: Image.asset(
          Assets.logoTransparent,
          width: Dimensions.size150,
          height: Dimensions.size50,
        ),
      ),
    );
  }
}
