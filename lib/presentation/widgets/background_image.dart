import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    Key? key,
    required this.asset,
    required this.child,
    this.roundedCornerRadius = 0,
  }) : super(key: key);

  final String asset;
  final Widget child;
  final double roundedCornerRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(asset),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.all(Radius.circular(roundedCornerRadius)),
      ),
      child: child,
    );
  }
}
