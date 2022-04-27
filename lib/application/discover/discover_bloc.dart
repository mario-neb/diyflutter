import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:diyapp/domain/discover/discover_ad.dart';
import 'package:diyapp/domain/discover/discover_failure.dart';
import 'package:diyapp/domain/discover/discover_repository.dart';
import 'package:diyapp/domain/discover/discover_section.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'discover_bloc.freezed.dart';
part 'discover_event.dart';
part 'discover_state.dart';

@injectable
class DiscoverBloc extends Bloc<DiscoverEvent, DiscoverState> {
  DiscoverBloc(this._discoverRepository) : super(const DiscoverState.initial());

  final DiscoverRepository _discoverRepository;

  @override
  Stream<DiscoverState> mapEventToState(
    DiscoverEvent event,
  ) async* {
    yield* event.map(
      fetchData: _mapInitEventToState,
    );
  }

  Stream<DiscoverState> _mapInitEventToState(FetchData event) async* {
    yield const DiscoverState.loadInProgress();
    final failureOrDiscoverAds = await _discoverRepository.getAds();
    final failureOrDiscoverSections = await _discoverRepository.getSections();
    yield failureOrDiscoverAds.fold(
      (f) => DiscoverState.loadFailure(f),
      (ads) => failureOrDiscoverSections.fold(
        (f) => DiscoverState.loadFailure(f),
        (sections) => DiscoverState.loadSuccess(ads, sections),
      ),
    );
  }
}
