import 'package:diyapp/localization/app_localizations_key.dart';
import 'package:diyapp/presentation/widgets/text_fields.dart';
import 'package:flutter/material.dart';

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    Key? key,
    this.initialValue,
    this.onChanged,
    this.validator,
  }) : super(key: key);

  final String? initialValue;
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return DiyTextField(
      hintText: AppLocalizationsKey.enterYourPassword.translate(context),
      initialValue: initialValue,
      onChanged: onChanged,
      validator: validator,
      obscureText: true,
    );
  }
}
