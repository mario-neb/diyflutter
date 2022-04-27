import 'package:diyapp/domain/register/entities/register_data.dart';
import 'package:diyapp/domain/value_objects/value_objects.dart';
import 'package:diyapp/presentation/register/pages/email/widgets/email_text_field.dart';
import 'package:diyapp/presentation/register/pages/email/widgets/password_text_field.dart';
import 'package:diyapp/presentation/register/widgets/header_text.dart';
import 'package:diyapp/presentation/register/widgets/navigation_panel.dart';
import 'package:diyapp/resources/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class EmailPasswordScreen extends HookWidget {
  const EmailPasswordScreen({
    Key? key,
    required this.title,
    this.onEmailPasswordSelected,
  }) : super(key: key);

  final String title;
  final ValueChanged<RegisterData>? onEmailPasswordSelected;

  @override
  Widget build(BuildContext context) {
    final password = useState('');
    final email = useState('');

    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      const Spacer(),
      HeaderText(title),
      const SizedBox(height: Dimensions.size32),
      Column(
        children: [
          EmailTextField(
            onChanged: (value) {
              email.value = value;
            },
          ),
          const SizedBox(height: Dimensions.size32),
          PasswordTextField(
            onChanged: (value) {
              password.value = value;
            },
          ),
          const SizedBox(height: Dimensions.size32),
          NavigationPanel(
            onContinuePressed: () {
              onEmailPasswordSelected!(
                RegisterData(
                  email: Email(email.value),
                  password: Password(password.value),
                ),
              );
            },
          ),
        ],
      ),
      const Spacer(),
    ]);
  }
}
