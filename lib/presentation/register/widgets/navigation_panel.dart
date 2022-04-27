import 'package:diyapp/presentation/register/widgets/cancel_button.dart';
import 'package:diyapp/presentation/widgets/buttons.dart';
import 'package:diyapp/resources/dimensions.dart';
import 'package:flutter/material.dart';

class NavigationPanel extends StatelessWidget {
  const NavigationPanel({
    Key? key,
    this.onCancelPressed,
    this.onContinuePressed,
  }) : super(key: key);

  final VoidCallback? onCancelPressed;
  final VoidCallback? onContinuePressed;

  @override
  Widget build(BuildContext context) {
    final isCancelVisible = onCancelPressed != null;
    return Wrap(
      alignment: WrapAlignment.center,
      runSpacing: Dimensions.size12,
      children: [
        if (isCancelVisible) ...[
          CancelButton(onPressed: onCancelPressed),
          const SizedBox(width: Dimensions.size8)
        ],
        ConstrainedBox(
          constraints: BoxConstraints(
              maxHeight: 60, maxWidth: isCancelVisible ? 170 : double.infinity),
          child: ArrowButton.next(
            halfButton: false,
            onPressed: onContinuePressed,
          ),
        ),
      ],
    );
  }
}
