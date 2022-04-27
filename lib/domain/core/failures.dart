import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail({
    required T failedValue,
  }) = InvalidEmail<T>;

  const factory ValueFailure.empty({
    required T failedValue,
  }) = Empty<T>;

  const factory ValueFailure.missing() = Missing<T>;

  const factory ValueFailure.wrongLength({
    required T failedValue,
  }) = WrongLength<T>;

  const factory ValueFailure.invalidConfirmationCode({
    required T failedValue,
  }) = InvalidConfirmationCode<T>;

  const factory ValueFailure.invalidValue({
    required T failedValue,
  }) = InvalidValue<T>;
}
