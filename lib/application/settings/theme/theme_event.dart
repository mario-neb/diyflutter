part of 'theme_bloc.dart';

@freezed
class ThemeEvent with _$ThemeEvent {
  const factory ThemeEvent.themeModeChanged(ThemeMode themeMode) =
      _ThemeModeChanged;

  const factory ThemeEvent.themeModeSaved(ThemeMode themeMode) =
      _ThemeModeSaved;
}
