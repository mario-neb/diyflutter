import 'package:dartz/dartz.dart';
import 'package:diyapp/domain/discover/discover_ad.dart';
import 'package:diyapp/domain/discover/discover_failure.dart';
import 'package:diyapp/domain/discover/discover_section.dart';

abstract class DiscoverRepository {
  Future<Either<DiscoverFailure, List<DiscoverAd>>> getAds();
  Future<Either<DiscoverFailure, List<DiscoverSectionEntity>>> getSections();
}
