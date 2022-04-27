import 'package:flutter/material.dart';

class Square extends StatelessWidget {
  const Square({
    Key? key,
    this.size,
    this.padding,
    this.margin,
    this.color,
    this.decoration,
    this.child,
    this.alignment,
    this.clipBehaviour = Clip.none,
  }) : super(key: key);

  final double? size;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final Color? color;
  final Decoration? decoration;
  final Widget? child;
  final AlignmentGeometry? alignment;
  final Clip clipBehaviour;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      child: AspectRatio(
        aspectRatio: 1,
        child: Container(
          padding: padding,
          color: color,
          decoration: decoration,
          margin: margin,
          child: child,
          alignment: alignment,
          clipBehavior: clipBehaviour,
        ),
      ),
    );
  }
}
