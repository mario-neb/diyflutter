import 'package:flutter/material.dart';

class DiySnackbar extends StatelessWidget {
  const DiySnackbar({Key? key, required this.messsage}) : super(key: key);

  final String messsage;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: SnackBar(
      content: Text(messsage),
    ));
  }
}
