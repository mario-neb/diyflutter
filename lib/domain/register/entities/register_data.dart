import 'package:diyapp/domain/value_objects/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_data.freezed.dart';

@freezed
class RegisterData with _$RegisterData {
  const factory RegisterData({
    required Email email,
    required Password password,
  }) = _RegisterData;

  const RegisterData._();

  factory RegisterData.empty() => RegisterData(
        email: Email(''),
        password: Password(''),
      );
}
