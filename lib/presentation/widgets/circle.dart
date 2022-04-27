import 'package:flutter/material.dart';

class Circle extends StatelessWidget {
  const Circle({
    Key? key,
    this.padding,
    this.margin,
    this.color,
    this.child,
  }) : super(key: key);

  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final Color? color;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
      margin: margin,
      child: child,
    );
  }
}
