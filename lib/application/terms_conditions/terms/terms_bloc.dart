import 'dart:async';

import 'package:diyapp/domain/core/apps_launcher.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'terms_bloc.freezed.dart';
part 'terms_event.dart';
part 'terms_state.dart';

@injectable
class TermsBloc extends Bloc<TermsEvent, TermsState> {
  TermsBloc(this._appsLauncher) : super(const TermsState.initial());

  final AppsLauncher _appsLauncher;

  @override
  Stream<TermsState> mapEventToState(
    TermsEvent event,
  ) async* {
    yield* event.map(
      websitePressed: (e) async* {
        _appsLauncher.launchBrowserAppWith(url: e.url);
      },
    );
  }
}
