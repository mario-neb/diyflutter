import 'package:dartz/dartz.dart';
import 'package:diyapp/domain/core/failures.dart';
import 'package:diyapp/domain/core/value_objects.dart';
import 'package:diyapp/domain/core/value_validators.dart';

class Email extends ValueObject<String> {
  factory Email(String input) {
    return Email._(
      validateStringNotEmpty(input).flatMap(validateEmail),
    );
  }

  const Email._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;
}

class Password extends ValueObject<String> {
  factory Password(String input) {
    return Password._(
      validateStringNotEmpty(input),
    );
  }

  const Password._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;
}

class FirstName extends ValueObject<String> {
  factory FirstName(String input) {
    return FirstName._(
      validateStringNotEmpty(input),
    );
  }

  const FirstName._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;
}

class LastName extends ValueObject<String> {
  factory LastName(String input) {
    return LastName._(
      validateStringNotEmpty(input),
    );
  }

  const LastName._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;
}

class FormDate extends ValueObject<DateTime> {
  factory FormDate(DateTime? input) {
    if (input == null) {
      return FormDate._(left(const ValueFailure.missing()));
    }
    return FormDate._(
      validateDateNotInFuture(input),
    );
  }

  const FormDate._(this.value);

  @override
  final Either<ValueFailure<DateTime>, DateTime> value;
}

class FormReason extends ValueObject<String> {
  factory FormReason(String input) {
    return FormReason._(
      validateStringNotEmpty(input),
    );
  }

  const FormReason._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;
}

class FormDescription extends ValueObject<String> {
  factory FormDescription(String input) {
    return FormDescription._(
      validateStringNotEmpty(input),
    );
  }

  const FormDescription._(this.value);

  @override
  final Either<ValueFailure<String>, String> value;
}
