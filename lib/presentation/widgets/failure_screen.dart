import 'package:diyapp/resources/fonts.dart';
import 'package:flutter/widgets.dart';

class FailureScreen extends StatelessWidget {
  const FailureScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: add proper failure screen
    return const Center(
        child: Text(
      'Error',
      style: TextStyle(
        fontFamily: Fonts.amalia,
      ),
    ));
  }
}
