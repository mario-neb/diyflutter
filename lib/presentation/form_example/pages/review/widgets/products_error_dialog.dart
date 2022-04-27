import 'package:diyapp/domain/form_example/form_example_failure.dart';
import 'package:diyapp/localization/app_localizations_key.dart';
import 'package:diyapp/presentation/widgets/dialog.dart';
import 'package:flutter/material.dart';

class FormErrorDialog extends StatelessWidget {
  const FormErrorDialog({
    Key? key,
    this.onButtonPressed,
    required this.failure,
  }) : super(key: key);

  final VoidCallback? onButtonPressed;
  final FormExampleFailure failure;

  @override
  Widget build(BuildContext context) {
    return DiyDialog(
      icon: Icons.sentiment_dissatisfied,
      title: failure.map(
        unexpected: (_) => AppLocalizationsKey.error.translate(context),
      ),
      message: failure.map(
        unexpected: (_) => 'Unexpected error',
      ),
      onButtonPressed: onButtonPressed,
    );
  }
}
