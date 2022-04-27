import 'package:diyapp/extensions.dart';
import 'package:diyapp/resources/dimensions.dart';
import 'package:flutter/material.dart';

class HeaderWithDescription extends StatelessWidget {
  const HeaderWithDescription(this.text,
      {Key? key,
      this.description,
      this.padding = const EdgeInsets.symmetric(vertical: Dimensions.size40)})
      : super(key: key);

  final String text;
  final String? description;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Column(
        children: [
          Text(
            text,
            textAlign: TextAlign.center,
            style: context.theme.textTheme.headline5!.copyWith(
              color: context.theme.colorScheme.secondary,
            ),
          ),
          if (description != null)
            Padding(
              padding: const EdgeInsets.only(top: Dimensions.size16),
              child: Text(
                description!,
                textAlign: TextAlign.center,
                style: context.theme.textTheme.bodyText2,
              ),
            )
        ],
      ),
    );
  }
}
