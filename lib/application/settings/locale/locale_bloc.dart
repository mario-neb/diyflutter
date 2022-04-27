import 'dart:async';

import 'package:diyapp/domain/settings/settings_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'locale_bloc.freezed.dart';
part 'locale_event.dart';
part 'locale_state.dart';

@injectable
class LocaleBloc extends Bloc<LocaleEvent, LocaleState> {
  LocaleBloc(this._settingsRepository) : super(LocaleState.initial()) {
    _localeSubscription = _settingsRepository.locale.listen(
      (locale) => add(LocaleEvent.localeChanged(locale)),
    );
  }

  final SettingsRepository _settingsRepository;
  StreamSubscription<Locale>? _localeSubscription;

  @override
  Stream<LocaleState> mapEventToState(
    LocaleEvent event,
  ) async* {
    yield* event.map(
      localeChanged: (e) async* {
        yield state.copyWith(locale: e.locale);
      },
      localeSaved: (e) async* {
        _settingsRepository.saveLocale(e.locale);
      },
    );
  }

  @override
  Future<void> close() async {
    await _localeSubscription?.cancel();
    _settingsRepository.dispose();
    return super.close();
  }
}
