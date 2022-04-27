import 'package:freezed_annotation/freezed_annotation.dart';

part 'discover_failure.freezed.dart';

@freezed
class DiscoverFailure with _$DiscoverFailure {
  const factory DiscoverFailure.unexpected() = _Unexpected;
}
