import 'package:flutter/material.dart';

abstract class ApplicationColors {
  ApplicationColors._();

  static const Color black = Colors.black;
  static const Color black12 = Colors.black12;
  static const Color white = Colors.white;
  static const MaterialColor grey = Colors.grey;
  static const Color gallery = Color(0xFFEEEEEE); // Colors.grey[200]
  static const Color wildSand = Color(0xFFF4F4F4); // Colors.grey[300]
  static const Color tundora = Color(0xFF424242); // Colors.grey[800]
  static const Color codGray = Color(0xFF121212);
  static const Color red = Colors.red;
  static const Color blackHaze = Color(0xFFE9EAEA);
  static const Color bombay = Color(0xFFAAABAD);
  static const Color shark = Color(0xFF2B2D33);
  static const Color jumbo = Color(0xFF808185);
  static const Color cornflowerBlue = Color(0xFF0093FF);
  static const Color blue = Colors.blue;
  static const Color transparent = Colors.transparent;
  static const Color jungleGreen = Color(0xFF35B37E);
}

class RTypographyColors {
  const RTypographyColors.light()
      : primary = ApplicationColors.shark,
        secondary = ApplicationColors.jumbo,
        tertiary = ApplicationColors.white,
        error = ApplicationColors.red;

  const RTypographyColors.dark()
      : primary = ApplicationColors.white,
        secondary = ApplicationColors.jumbo,
        tertiary = ApplicationColors.white,
        error = ApplicationColors.red;

  final Color primary;
  final Color secondary;
  final Color tertiary;
  final Color error;
}
