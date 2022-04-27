import 'package:flutter/material.dart';

// TODO: change class name
class DiscoverSectionEntity {
  DiscoverSectionEntity({
    required this.asset,
    required this.subtitle,
    required this.title,
    required this.description,
    required this.buttonTitle,
    // TODO: replace onPressed by deep linking
    this.onPressed,
  });

  String asset;
  String subtitle;
  String title;
  String description;
  String buttonTitle;
  VoidCallback? onPressed;
}

// TODO: change class name
class DiscoverSectionEntityFull extends DiscoverSectionEntity {
  DiscoverSectionEntityFull({
    required String asset,
    required String subtitle,
    required String title,
    required String description,
    required String buttonTitle,
    // TODO: replace onPressed by deep linking
    VoidCallback? onPressed,
  }) : super(
          asset: asset,
          subtitle: subtitle,
          title: title,
          description: description,
          buttonTitle: buttonTitle,
          onPressed: onPressed,
        );
}
