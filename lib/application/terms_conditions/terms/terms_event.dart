part of 'terms_bloc.dart';

@freezed
class TermsEvent with _$TermsEvent {
  const factory TermsEvent.websitePressed(String url) = _WebsitePressed;
}
