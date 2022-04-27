import 'package:diyapp/resources/dimensions.dart';
import 'package:flutter/material.dart';

class FaqSectionScreen extends StatelessWidget {
  const FaqSectionScreen({
    Key? key,
    required this.faqWidgetList,
  }) : super(key: key);
  final List<ExpansionTile> faqWidgetList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: Dimensions.size20, vertical: Dimensions.size20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ...faqWidgetList,
        ],
      ),
    );
  }
}
