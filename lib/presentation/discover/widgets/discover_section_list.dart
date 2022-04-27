import 'package:diyapp/domain/discover/discover_section.dart';
import 'package:diyapp/presentation/discover/widgets/discover_section.dart';
import 'package:diyapp/presentation/discover/widgets/discover_section_full.dart';
import 'package:flutter/material.dart';

class DiscoverSectionList extends StatelessWidget {
  const DiscoverSectionList({
    Key? key,
    required this.discoverSectionList,
  }) : super(key: key);

  final List<DiscoverSectionEntity> discoverSectionList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: discoverSectionList.length,
      itemBuilder: (context, index) {
        final item = discoverSectionList[index];
        if (item is DiscoverSectionEntityFull) {
          return DiscoverSectionFull(
            asset: item.asset,
            subtitle: item.subtitle,
            title: item.title,
            buttonText: item.buttonTitle,
            onPressed: item.onPressed,
          );
        } else {
          return DiscoverSection(
            asset: item.asset,
            subtitle: item.subtitle,
            title: item.title,
            description: item.description,
            buttonText: item.buttonTitle,
            onPressed: item.onPressed,
          );
        }
      },
    );
  }
}
