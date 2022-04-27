import 'package:flutter/cupertino.dart';

class FlexibleSingleChildScrollView extends StatelessWidget {
  const FlexibleSingleChildScrollView({
    Key? key,
    this.child,
  }) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: child,
        )
      ],
    );
  }
}
