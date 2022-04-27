import 'package:diyapp/domain/value_objects/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_password_data.freezed.dart';

@freezed
class ForgotPasswordData with _$ForgotPasswordData {
  const factory ForgotPasswordData({
    required Email email,
  }) = _ForgotPasswordData;

  const ForgotPasswordData._();

  factory ForgotPasswordData.empty() => ForgotPasswordData(
        email: Email(''),
      );
}
