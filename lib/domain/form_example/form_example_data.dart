import 'package:diyapp/domain/value_objects/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_example_data.freezed.dart';

@freezed
class FormExampleData with _$FormExampleData {
  const factory FormExampleData({
    required FirstName firstName,
    required LastName lastName,
    required FormDate date,
    required FormReason reason,
    required FormDescription description,
  }) = _FormExampleData;

  const FormExampleData._();

  factory FormExampleData.initialised() => FormExampleData(
        firstName: FirstName(''),
        lastName: LastName(''),
        date: FormDate(null),
        reason: FormReason(''),
        description: FormDescription(''),
      );
  factory FormExampleData.toDomain(FormExampleData data) => FormExampleData(
        firstName: data.firstName,
        lastName: data.lastName,
        date: data.date,
        reason: data.reason,
        description: data.description,
      );

  Map<String, String> get formDocument {
    return {
      'firstname': firstName.getOrCrash(),
      'lastName': lastName.getOrCrash(),
      'reason': reason.getOrCrash(),
      'description': description.getOrCrash(),
      'date': date.getOrCrash().toIso8601String(),
    };
  }
}
