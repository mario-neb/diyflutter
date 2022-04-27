import 'package:dartz/dartz.dart';
import 'package:diyapp/domain/form_example/form_example_data.dart';
import 'package:diyapp/domain/form_example/form_example_failure.dart';

abstract class FormExampleRepository {
  Future<Either<FormExampleFailure, Unit>> createFormExample(
      FormExampleData formExample);
}
