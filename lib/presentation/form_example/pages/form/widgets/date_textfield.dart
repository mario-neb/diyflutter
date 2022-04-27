import 'package:diyapp/localization/app_localizations_key.dart';
import 'package:diyapp/presentation/widgets/text_fields.dart';
import 'package:flutter/material.dart';

class FormDateTextField extends StatelessWidget {
  const FormDateTextField({
    Key? key,
    this.initialValue,
    this.onChanged,
    this.validator,
  }) : super(key: key);

  final String? initialValue;
  final ValueChanged<DateTime>? onChanged;
  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return DateTimeTextField(
      hintText: AppLocalizationsKey.formExampleDateHint.translate(context),
      onChanged: onChanged,
      validator: validator,
    );
  }
}
