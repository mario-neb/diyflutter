import 'package:freezed_annotation/freezed_annotation.dart';

part 'launch_failure.freezed.dart';

@freezed
class LaunchFailure with _$LaunchFailure {
  const factory LaunchFailure.unableToOpenEmailApp() = _UnableToOpenEmailApp;

  const factory LaunchFailure.unableToOpenBrowserApp() =
      _UnableToOpenBrowserApp;

  const factory LaunchFailure.unableToOpenPhoneDialerApp() =
      _UnableToOpenPhoneDialerApp;
}
