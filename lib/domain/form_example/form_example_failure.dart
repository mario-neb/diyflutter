import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_example_failure.freezed.dart';

@freezed
class FormExampleFailure with _$FormExampleFailure {
  const factory FormExampleFailure.unexpected() = _Unexpected;
}
