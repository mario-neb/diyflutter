import 'package:diyapp/extensions.dart';
import 'package:diyapp/resources/fonts.dart';
import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  const HeaderText(
    this.text, {
    Key? key,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: context.theme.textTheme.headline5!.copyWith(
          color: context.theme.colorScheme.secondary, fontFamily: Fonts.amalia),
    );
  }
}
