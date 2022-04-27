// ignore_for_file: unnecessary_raw_strings

import 'package:dartz/dartz.dart';
import 'package:diyapp/domain/core/failures.dart';

Either<ValueFailure<String>, String> validateEmail(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<DateTime>, DateTime> validateDateNotEmpty(DateTime input) {
  if (input.toString().isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.empty(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.empty(failedValue: input));
  }
}

Either<ValueFailure<List<T>>, List<T>> validateListNotEmpty<T>(List<T> input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.empty(failedValue: input));
  }
}

Either<ValueFailure<DateTime>, DateTime> validateDateNotInFuture(
    DateTime input) {
  if (input.isAfter(DateTime.now())) {
    return left(ValueFailure.empty(failedValue: input));
  } else {
    return right(input);
  }
}
