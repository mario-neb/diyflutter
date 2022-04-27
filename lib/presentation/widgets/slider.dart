import 'package:diyapp/resources/colors.dart';
import 'package:flutter/material.dart';

class DiyAppSlider extends StatelessWidget {
  const DiyAppSlider({
    Key? key,
    required this.actualValue,
    required this.minValue,
    required this.maxValue,
    required this.divisions,
    required this.onChanged,
  }) : super(key: key);

  final ValueNotifier<double> actualValue;
  final double minValue;
  final double maxValue;
  final int divisions;
  final Function(double)? onChanged;

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        activeTrackColor: ApplicationColors.cornflowerBlue,
        inactiveTrackColor: ApplicationColors.white,
        trackHeight: 15,
      ),
      child: Slider(
          activeColor: ApplicationColors.cornflowerBlue,
          value: actualValue.value,
          min: minValue.toDouble(),
          max: maxValue.toDouble(),
          divisions: divisions,
          label: actualValue.value.toStringAsFixed(0),
          onChanged: onChanged),
    );
  }
}
