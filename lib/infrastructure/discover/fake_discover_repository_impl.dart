// ignore_for_file: prefer_const_constructors

import 'package:dartz/dartz.dart';
import 'package:diyapp/domain/discover/discover_ad.dart';
import 'package:diyapp/domain/discover/discover_failure.dart';
import 'package:diyapp/domain/discover/discover_repository.dart';
import 'package:diyapp/domain/discover/discover_section.dart';
import 'package:diyapp/resources/assets.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: DiscoverRepository)
class FakeDiscoverRepositoryImpl implements DiscoverRepository {
  @override
  Future<Either<DiscoverFailure, List<DiscoverAd>>> getAds() async {
    return right(_fakeAds);
  }

  @override
  Future<Either<DiscoverFailure, List<DiscoverSectionEntity>>>
      getSections() async {
    return right(_fakeSections);
  }

  final _fakeAds = [
    DiscoverAd(
      asset: Assets.whiteBackground,
      title: 'loremIpsumText',
    ),
    DiscoverAd(
      asset: Assets.whiteBackground,
      title: 'homeCard2',
    ),
    DiscoverAd(
      asset: Assets.whiteBackground,
      title: 'homeCard3',
    ),
  ];

  final _fakeSections = [
    DiscoverSectionEntity(
      asset: '',
      title: 'homeTitle1QuickAndEasy',
      subtitle: '',
      description: 'homeDescription1',
      buttonTitle: 'homeButton1CreateProfile',
      onPressed: () {},
    ),
    DiscoverSectionEntity(
      asset: 'assets/images/white_background.png',
      subtitle: 'description',
      title: 'title',
      description: 'dummyText',
      buttonTitle: 'formExample',
      onPressed: () {},
    ),
    DiscoverSectionEntity(
      asset: 'assets/images/white_background.png',
      subtitle: 'description',
      title: 'title',
      description: 'dummyText',
      buttonTitle: 'formExample',
      onPressed: () {},
    ),
  ];
}
