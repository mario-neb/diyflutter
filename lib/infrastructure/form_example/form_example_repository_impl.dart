import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:diyapp/domain/form_example/form_example_data.dart';
import 'package:diyapp/domain/form_example/form_example_failure.dart';
import 'package:diyapp/domain/form_example/form_example_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: FormExampleRepository)
class FormExampleRepositoryImpl implements FormExampleRepository {
  final CollectionReference collection =
      FirebaseFirestore.instance.collection('formExample');
  @override
  Future<Either<FormExampleFailure, Unit>> createFormExample(
      FormExampleData formExample) async {
    try {
      collection.add(formExample.formDocument);
      return right(unit);
    } catch (e) {
      return left(const FormExampleFailure.unexpected());
    }
  }
}
