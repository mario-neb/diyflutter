import 'package:diyapp/extensions.dart';
import 'package:diyapp/resources/colors.dart';
import 'package:diyapp/resources/constants.dart';
import 'package:diyapp/resources/dimensions.dart';
import 'package:diyapp/resources/font_sizes.dart';
import 'package:diyapp/resources/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class DiyTextField extends StatelessWidget {
  const DiyTextField({
    Key? key,
    this.initialValue,
    this.hintText,
    this.onChanged,
    this.validator,
    this.keyboardType,
    this.inputFormatters,
    this.suffixIcon,
    this.readOnly = false,
    this.textAlign = TextAlign.start,
    this.controller,
    this.onTap,
    this.obscureText = false,
  }) : super(key: key);

  final String? initialValue;
  final String? hintText;
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String>? validator;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? suffixIcon;
  final bool readOnly;
  final TextAlign textAlign;
  final TextEditingController? controller;
  final GestureTapCallback? onTap;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: textAlign,
      onTap: onTap,
      obscureText: obscureText,
      controller: controller,
      readOnly: readOnly,
      inputFormatters: inputFormatters,
      keyboardType: keyboardType,
      initialValue: initialValue,
      autocorrect: false,
      onChanged: onChanged,
      validator: validator,
      cursorColor: ApplicationColors.cornflowerBlue,
      style: const TextStyle(
        fontSize: FontSizes.size16,
        color: ApplicationColors.black,
        fontFamily: Fonts.amalia,
        fontWeight: FontWeight.bold,
      ),
      decoration: InputDecoration(
          suffixIcon: suffixIcon,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: Dimensions.size24,
            vertical: 18,
          ),
          hintStyle: const TextStyle(
            fontSize: FontSizes.size14,
            color: ApplicationColors.bombay,
            fontFamily: Fonts.amalia,
            fontWeight: FontWeight.bold,
          ),
          hintText: hintText,
          filled: true,
          fillColor: ApplicationColors.white,
          hintMaxLines: 2,
          errorMaxLines: 2),
    );
  }
}

class DateTimeTextField extends HookWidget {
  const DateTimeTextField({
    Key? key,
    this.hintText,
    this.onChanged,
    this.validator,
  }) : super(key: key);

  final String? hintText;
  final ValueChanged<DateTime>? onChanged;
  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    return DiyTextField(
      controller: controller,
      onTap: () => _showDatePicker(context, controller),
      readOnly: true,
      suffixIcon: const Icon(
        Icons.calendar_today,
        color: ApplicationColors.bombay,
      ),
      hintText: hintText,
      validator: validator,
    );
  }

  Future<void> _showDatePicker(
      BuildContext context, TextEditingController controller) async {
    final dateTime = await showDatePicker(
      context: context,
      initialDate: Constants.initialDate,
      firstDate: Constants.firstDate,
      lastDate: Constants.lastDate,
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            colorScheme: ColorScheme.light(
              primary: ApplicationColors.grey[800]!,
            ),
            dialogBackgroundColor: ApplicationColors.grey[300],
          ),
          child: child!,
        );
      },
    );
    controller.text = dateTime!.toFormattedString();
    onChanged!(dateTime);
  }
}
