import 'package:diyapp/extensions.dart';
import 'package:diyapp/localization/app_localizations_key.dart';
import 'package:diyapp/presentation/widgets/buttons.dart';
import 'package:diyapp/presentation/widgets/flexible_single_child_scroll_view.dart';
import 'package:diyapp/resources/dimensions.dart';
import 'package:flutter/material.dart';

class FinalStepPage extends StatelessWidget {
  const FinalStepPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: Dimensions.size24),
      child: _FinalStepBody(),
    );
  }
}

class _FinalStepBody extends StatelessWidget {
  const _FinalStepBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlexibleSingleChildScrollView(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              const Spacer(),
              Text(
                AppLocalizationsKey.formExampleFinalScreenTitle
                    .translate(context),
                style: context.theme.textTheme.headline5,
              ),
              const SizedBox(height: Dimensions.size16),
              Text(
                AppLocalizationsKey.formExampleFinalScreenDescription
                    .translate(context),
                style: context.theme.textTheme.bodyText2,
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              const SizedBox(height: Dimensions.size16),
              ArrowButton(
                text: AppLocalizationsKey.bottomBarHome.translate(context),
                halfButton: false,
                onPressed: () {
                  context.navigator.replaceMainScreen();
                },
              ),
              const SizedBox(height: Dimensions.size16),
            ],
          ),
        ],
      ),
    );
  }
}
