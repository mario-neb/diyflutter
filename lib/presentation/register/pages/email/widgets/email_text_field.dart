import 'package:diyapp/localization/app_localizations_key.dart';
import 'package:diyapp/presentation/widgets/text_fields.dart';
import 'package:flutter/material.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({
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
      hintText: AppLocalizationsKey.enterYourEmail.translate(context),
      keyboardType: TextInputType.emailAddress,
      initialValue: initialValue,
      onChanged: onChanged,
      validator: validator,
    );
  }
}
