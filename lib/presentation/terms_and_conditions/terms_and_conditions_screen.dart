import 'package:diyapp/application/terms_conditions/terms/terms_bloc.dart';
import 'package:diyapp/di/injection.dart';
import 'package:diyapp/localization/app_localizations_key.dart';
import 'package:diyapp/presentation/widgets/texts.dart';
import 'package:diyapp/presentation/widgets/top_bar.dart';
import 'package:diyapp/resources/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  const TermsAndConditionsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<TermsBloc>(),
      child: Scaffold(
        appBar: TopBar(
            title:
                AppLocalizationsKey.settingsTermsConditions.translate(context)),
        body: const SingleChildScrollView(
          child: _TermsContent(),
        ),
      ),
    );
  }
}

class _TermsContent extends StatelessWidget {
  const _TermsContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Dimensions.size28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: Dimensions.size20),
          HeaderText(
            text: AppLocalizationsKey.termsText1.translate(context),
          ),
          const SizedBox(height: Dimensions.size20),
          TitleText(
            text: AppLocalizationsKey.termsText2.translate(context),
          ),
          const SizedBox(height: Dimensions.size20),
        ],
      ),
    );
  }
}
