import 'package:diyapp/application/discover/discover_bloc.dart';
import 'package:diyapp/application/login/login_bloc.dart';
import 'package:diyapp/di/injection.dart';
import 'package:diyapp/domain/discover/discover_ad.dart';
import 'package:diyapp/domain/discover/discover_section.dart';
import 'package:diyapp/extensions.dart';
import 'package:diyapp/localization/app_localizations_key.dart';
import 'package:diyapp/presentation/discover/widgets/discover_card.dart';
import 'package:diyapp/presentation/discover/widgets/discover_page_indicator.dart';
import 'package:diyapp/presentation/discover/widgets/discover_section.dart';
import 'package:diyapp/presentation/discover/widgets/discover_section_list.dart';
import 'package:diyapp/presentation/register/register_screen.dart';
import 'package:diyapp/presentation/widgets/failure_screen.dart';
import 'package:diyapp/presentation/widgets/loading_screen.dart';
import 'package:diyapp/resources/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nil/nil.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({
    Key? key,
  }) : super(key: key);

  // TODO: _useHardcodedValues is used to select hardcoded or dynamic data, remove when correct approach will be provided
  static const bool _useHardcodedValues = true;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          getIt<DiscoverBloc>()..add(const DiscoverEvent.fetchData()),
      child: SafeArea(
        child: Scaffold(
          body: _useHardcodedValues
              ? const _DiscoverContentHardcoded()
              : BlocBuilder<DiscoverBloc, DiscoverState>(
                  builder: (_, state) => state.map(
                    initial: (_) => nil,
                    loadInProgress: (_) => const LoadingScreen(),
                    loadFailure: (_) => const FailureScreen(),
                    loadSuccess: (state) => _DiscoverContent(
                      discoverAds: state.discoverAds,
                      discoverSections: state.discoverSections,
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}

class _DiscoverContent extends StatelessWidget {
  const _DiscoverContent({
    Key? key,
    required this.discoverAds,
    required this.discoverSections,
  }) : super(key: key);

  final List<DiscoverAd> discoverAds;
  final List<DiscoverSectionEntity> discoverSections;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          DiscoverPageIndicator(
            discoverAds: discoverAds,
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const RegisterScreen(),
              ),
            ),
          ),
          DiscoverSectionList(
            discoverSectionList: discoverSections,
          ),
        ],
      ),
    );
  }
}

class _DiscoverContentHardcoded extends StatelessWidget {
  const _DiscoverContentHardcoded({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          DiscoverPageIndicator(
            discoverCards: _discoverCardList(context),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const RegisterScreen(),
              ),
            ),
          ),
          ..._discoverSections(context),
        ],
      ),
    );
  }

  List<Widget> _discoverSections(BuildContext context) => [
        DiscoverSection(
          title: AppLocalizationsKey.discoverTitle.translate(context),
          description:
              AppLocalizationsKey.discoverDescription.translate(context),
          buttonText: AppLocalizationsKey.formExample.translate(context),
          onPressed: () => context.navigator
              .pushLoginScreen(LoginRedirect.FormExampleScreen),
        ),
      ];

  List<DiscoverCard> _discoverCardList(BuildContext context) => [
        DiscoverCard(
          asset: Assets.natureImageAlb1,
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
