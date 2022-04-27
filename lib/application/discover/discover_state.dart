part of 'discover_bloc.dart';

@freezed
class DiscoverState with _$DiscoverState {
  const factory DiscoverState.initial() = _Initial;

  const factory DiscoverState.loadInProgress() = _LoadInProgress;

  const factory DiscoverState.loadSuccess(
    List<DiscoverAd> discoverAds,
    List<DiscoverSectionEntity> discoverSections,
  ) = LoadSuccess;

  const factory DiscoverState.loadFailure(DiscoverFailure discoverFailure) =
      LoadFailure;
}
