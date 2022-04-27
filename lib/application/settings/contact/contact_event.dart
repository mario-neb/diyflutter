part of 'contact_bloc.dart';

@freezed
class ContactEvent with _$ContactEvent {
  const factory ContactEvent.emailPressed() = _EmailPressed;

  const factory ContactEvent.websitePressed() = _WebsitePressed;

  const factory ContactEvent.phoneNumberPressed() = _PhoneNumberPressed;
}
