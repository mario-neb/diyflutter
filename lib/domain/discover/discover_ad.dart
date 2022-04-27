import 'package:freezed_annotation/freezed_annotation.dart';

part 'discover_ad.freezed.dart';

@freezed
// TODO: change class name
class DiscoverAd with _$DiscoverAd {
  const factory DiscoverAd({
    required String asset,
    required String title,
  }) = _DiscoverAd;
}
