import 'package:flutter/services.dart';

class LimitRangeTextInputFormatter extends TextInputFormatter {
  LimitRangeTextInputFormatter(this.min, this.max) : assert(min < max);

  final num min;
  final num max;

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final value = int.parse(newValue.text);
    if (value < min) {
      return TextEditingValue(text: min.toStringAsFixed(0));
    } else if (value > max) {
      return TextEditingValue(text: max.toStringAsFixed(0));
    }
    return newValue;
  }
}
