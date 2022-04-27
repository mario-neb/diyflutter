part of 'locale_bloc.dart';

@freezed
class LocaleState with _$LocaleState {
  const factory LocaleState({
    Locale? locale,
  }) = _LocaleState;

  factory LocaleState.initial() => const LocaleState();
}
