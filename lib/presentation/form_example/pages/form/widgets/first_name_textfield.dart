import 'package:diyapp/localization/app_localizations_key.dart';
import 'package:diyapp/presentation/widgets/text_fields.dart';
import 'package:flutter/material.dart';

class FirstNameTextField extends StatelessWidget {
  const FirstNameTextField({
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
      hintText: AppLocalizationsKey.formExampleFirstNameHint.translate(context),
      keyboardType: TextInputType.name,
      initialValue: initialValue,
      onChanged: onChanged,
      validator: validator,
    );
  }
}
