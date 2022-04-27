import 'dart:async';

import 'package:diyapp/domain/settings/settings_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'theme_bloc.freezed.dart';
part 'theme_event.dart';
part 'theme_state.dart';

@injectable
class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc(this._settingsRepository) : super(ThemeState.initial()) {
    _themeModeSubscription = _settingsRepository.themeMode.listen(
      (themeMode) => add(ThemeEvent.themeModeChanged(themeMode)),
    );
  }

  final SettingsRepository _settingsRepository;
  StreamSubscription<ThemeMode>? _themeModeSubscription;

  @override
  Stream<ThemeState> mapEventToState(
    ThemeEvent event,
  ) async* {
    yield* event.map(
      themeModeChanged: (e) async* {
        yield state.copyWith(themeMode: e.themeMode);
      },
      themeModeSaved: (e) async* {
        _settingsRepository.saveThemeMode(e.themeMode);
      },
    );
  }

  @override
  Future<void> close() async {
    await _themeModeSubscription?.cancel();
    _settingsRepository.dispose();
    return super.close();
  }
}
