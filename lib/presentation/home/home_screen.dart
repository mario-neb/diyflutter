import 'package:diyapp/extensions.dart';
import 'package:diyapp/localization/app_localizations_key.dart';
import 'package:diyapp/presentation/discover/widgets/discover_card.dart';
import 'package:diyapp/presentation/discover/widgets/discover_page_indicator.dart';
import 'package:diyapp/presentation/discover/widgets/discover_section.dart';
import 'package:diyapp/resources/assets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: _HomeContentHardcoded(),
      ),
    );
  }
}

class _HomeContentHardcoded extends StatelessWidget {
  const _HomeContentHardcoded({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          DiscoverPageIndicator(
            discoverCards: _discoverCardList(context),
          ),
          ..._discoverSections(context),
        ],
      ),
    );
  }

  List<Widget> _discoverSections(BuildContext context) => [
        DiscoverSection(
          asset: 'assets/images/alb_tirana_cartoon.png',
          subtitle:
              AppLocalizationsKey.mainScreenMoreInformation.translate(context),
          title: AppLocalizationsKey.mainScreenTitle.translate(context),
          description:
              AppLocalizationsKey.mainScreenDescription.translate(context),
          buttonText: AppLocalizationsKey.formExample.translate(context),
          onPressed: () => context.navigator.replaceFormExampleScreen(),
        ),
      ];

  List<DiscoverCard> _discoverCardList(BuildContext context) => [
        DiscoverCard(
          asset: Assets.natureImageAlb2,
          title: AppLocalizationsKey.loremIpsumText.translate(context),
        ),
        DiscoverCard(
          asset: Assets.natureImageAlb4,
          title: AppLocalizationsKey.loremIpsumText.translate(context),
        ),
        DiscoverCard(
          asset: Assets.natureImageAlb3,
          title: AppLocalizationsKey.loremIpsumText.translate(context),
        ),
      ];
}
