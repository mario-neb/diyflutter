// ignore_for_file: deprecated_member_use

import 'package:diyapp/resources/colors.dart';
import 'package:diyapp/resources/font_sizes.dart';
import 'package:diyapp/resources/fonts.dart';
import 'package:flutter/material.dart';

abstract class Themes {
  Themes._();

  static ThemeData light = ThemeData(
    brightness: Brightness.light,
    hoverColor: ApplicationColors.black,
    focusColor: ApplicationColors.white,
    hintColor: ApplicationColors.gallery,
    appBarTheme: const AppBarTheme(
      color: ApplicationColors.gallery,
    ),
    primaryColor: ApplicationColors.white,
    scaffoldBackgroundColor: ApplicationColors.gallery,
    accentColor: ApplicationColors.black,
    cardColor: ApplicationColors.white,
    textTheme: buildTextTheme(const RTypographyColors.light()),
  );

  static ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    hoverColor: ApplicationColors.cornflowerBlue,
    focusColor: ApplicationColors.cornflowerBlue,
    hintColor: ApplicationColors.tundora,
    primarySwatch: ApplicationColors.grey,
    backgroundColor: ApplicationColors.gallery,
    accentColor: ApplicationColors.white,
    accentIconTheme: const IconThemeData(color: ApplicationColors.black),
    dividerColor: ApplicationColors.black12,
    cardColor: ApplicationColors.black,
    primaryColor: ApplicationColors.codGray,
    appBarTheme: const AppBarTheme(
      color: ApplicationColors.tundora,
    ),
    scaffoldBackgroundColor: ApplicationColors.tundora,
    textTheme: buildTextTheme(const RTypographyColors.dark()),
  );

  static TextTheme buildTextTheme(RTypographyColors textColor) {
    return TextTheme(
      // TODO: To be added if needed
      // /// Extremely large text.
      // headline1: TextStyle(
      //   fontSize:,
      //   fontWeight:,
      //   color:,
      // ),
      //
      // /// Very, very large text.
      // ///
      // /// Used for the date in the dialog shown by [showDatePicker].
      // headline2: TextStyle(
      //   fontSize:,
      //   fontWeight:,
      //   color:,
      // ),
      //
      /// Very large text.
      headline3: TextStyle(
        fontSize: FontSizes.size36,
        fontWeight: FontWeight.bold,
        fontFamily: Fonts.amalia,
        color: textColor.tertiary,
      ),

      /// Large text.
      headline4: TextStyle(
        fontSize: FontSizes.size24,
        fontWeight: FontWeight.bold,
        color: textColor.secondary,
        fontFamily: Fonts.amalia,
      ),

      /// Used for large text in dialogs (e.g., the month and year in the dialog
      /// shown by [showDatePicker]).
      headline5: TextStyle(
        fontSize: FontSizes.size24,
        fontWeight: FontWeight.bold,
        color: textColor.primary,
        fontFamily: Fonts.amalia,
      ),

      /// Used for the primary text in app bars and dialogs (e.g., [AppBar.title]
      /// and [AlertDialog.title]).
      headline6: TextStyle(
        fontSize: FontSizes.size18,
        fontWeight: FontWeight.bold,
        color: textColor.primary,
        fontFamily: Fonts.amalia,
      ),

      /// Used for the primary text in lists (e.g., [ListTile.title]).
      subtitle1: TextStyle(
        fontSize: FontSizes.size24,
        fontWeight: FontWeight.bold,
        color: textColor.primary,
        fontFamily: Fonts.amalia,
      ),

      /// For medium emphasis text that's a little smaller than [subtitle1].
      subtitle2: TextStyle(
        fontSize: FontSizes.size14,
        fontWeight: FontWeight.bold,
        color: textColor.primary,
        fontFamily: Fonts.amalia,
      ),

      /// Used for emphasizing text that would otherwise be [bodyText2].
      bodyText1: TextStyle(
        fontSize: FontSizes.size16,
        fontWeight: FontWeight.bold,
        color: textColor.secondary,
        fontFamily: Fonts.amalia,
      ),

      /// The default text style for [Material].
      bodyText2: TextStyle(
        fontSize: FontSizes.size16,
        fontWeight: FontWeight.normal,
        color: textColor.secondary,
        fontFamily: Fonts.amalia,
      ),

      /// Used for auxiliary text associated with images.
      caption: TextStyle(
        fontSize: FontSizes.size16,
        fontWeight: FontWeight.normal,
        color: textColor.secondary,
        fontFamily: Fonts.amalia,
      ),

      /// Used for text on [ElevatedButton], [TextButton] and [OutlinedButton].
      button: TextStyle(
        fontSize: FontSizes.size14,
        fontWeight: FontWeight.bold,
        color: textColor.primary,
        fontFamily: Fonts.amalia,
      ),

      /// The smallest style.
      ///
      /// Typically used for captions or to introduce a (larger) headline.
      overline: TextStyle(
        fontSize: FontSizes.size12,
        fontWeight: FontWeight.bold,
        color: textColor.secondary,
        fontFamily: Fonts.amalia,
      ),
    );
  }
}
