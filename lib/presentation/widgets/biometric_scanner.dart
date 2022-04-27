import 'package:diyapp/di/injection.dart';
import 'package:diyapp/extensions.dart';
import 'package:diyapp/presentation/register/widgets/header_text.dart';
import 'package:diyapp/presentation/widgets/loading_screen.dart';
import 'package:diyapp/presentation/widgets/round_icon.dart';
import 'package:diyapp/resources/dimensions.dart';
import 'package:diyapp/resources/font_sizes.dart';
import 'package:diyapp/resources/fonts.dart';
import 'package:diyapp/resources/strings.dart';
import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';

class BiometricsScanner extends StatefulWidget {
  const BiometricsScanner({
    Key? key,
    required this.title,
    this.onBiometricsScanned,
    this.onPinPressed,
  }) : super(key: key);

  final String title;
  final VoidCallback? onBiometricsScanned;
  final VoidCallback? onPinPressed;

  @override
  _BiometricsScannerState createState() => _BiometricsScannerState();
}

class _BiometricsScannerState extends State<BiometricsScanner> {
  bool isSuccess = false;

  @override
  void initState() {
    super.initState();
    final localAuth = getIt<LocalAuthentication>();
    localAuth
        .authenticate(localizedReason: Strings.scanToLogin, biometricOnly: true)
        .then((success) {
      if (success) {
        widget.onBiometricsScanned!();
        setState(() {
          isSuccess = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return isSuccess
        ? const LoadingScreen()
        : Column(
            children: [
              const Spacer(),
              Center(child: HeaderText(widget.title)),
              const Spacer(),
              PinButton(
                onPressed: widget.onPinPressed,
              ),
              const Spacer(),
            ],
          );
  }
}

class PinButton extends StatelessWidget {
  const PinButton({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            Strings.useUsernamePassword,
            style: TextStyle(
              fontFamily: Fonts.amalia,
              fontWeight: FontWeight.bold,
              fontSize: FontSizes.size16,
              color: context.theme.colorScheme.secondary,
            ),
          ),
          const SizedBox(width: Dimensions.size8),
          const RoundIcon.arrowRight(
            iconSize: Dimensions.size20,
            iconPadding: Dimensions.size4,
          )
        ],
      ),
    );
  }
}
