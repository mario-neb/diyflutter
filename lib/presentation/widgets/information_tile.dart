import 'package:diyapp/extensions.dart';
import 'package:diyapp/resources/dimensions.dart';
import 'package:flutter/material.dart';

class InformationTile extends StatelessWidget {
  const InformationTile(this.text,
      {Key? key,
      this.description,
      this.padding = const EdgeInsets.symmetric(vertical: Dimensions.size16)})
      : super(key: key);

  final String text;
  final String? description;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            textAlign: TextAlign.center,
            style: context.theme.textTheme.bodyText2!
                .copyWith(fontSize: Dimensions.size14),
          ),
          if (description != null)
            Padding(
              padding: const EdgeInsets.only(top: Dimensions.size8),
              child: Text(
                description!,
                textAlign: TextAlign.center,
                style: context.theme.textTheme.headline5!.copyWith(
                  fontSize: Dimensions.size16,
                  color: context.theme.colorScheme.secondary,
                ),
              ),
            )
        ],
      ),
    );
  }
}
