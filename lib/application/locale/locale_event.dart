part of 'locale_bloc.dart';

@freezed
class LocaleEvent with _$LocaleEvent {
  const factory LocaleEvent.localeChanged(Locale locale) = _LocaleChanged;

  const factory LocaleEvent.localeSaved(Locale locale) = _LocaleSaved;
}
