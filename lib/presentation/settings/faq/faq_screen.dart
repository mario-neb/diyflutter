import 'package:diyapp/localization/app_localizations_key.dart';
import 'package:diyapp/presentation/settings/faq/faq_section_screen.dart';
import 'package:diyapp/presentation/widgets/top_bar.dart';
import 'package:diyapp/resources/font_sizes.dart';
import 'package:diyapp/resources/fonts.dart';
import 'package:flutter/material.dart';

class FaqScreen extends StatelessWidget {
  const FaqScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(
        title: AppLocalizationsKey.dummyText.translate(context),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              FaqSectionScreen(
                faqWidgetList: _faqWidgetList(context),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<ExpansionTile> _faqWidgetList(BuildContext context) => [
        ExpansionTile(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: Text(
            AppLocalizationsKey.faqQuestion1.translate(context),
            style: const TextStyle(
                fontFamily: Fonts.amalia, fontSize: FontSizes.size18),
          ),
          children: [
            ListTile(
              selectedTileColor: Theme.of(context).scaffoldBackgroundColor,
              tileColor: Theme.of(context).scaffoldBackgroundColor,
              title: Text(
                AppLocalizationsKey.faqAnswer1.translate(context),
                style: const TextStyle(
                    fontFamily: Fonts.amalia, fontSize: FontSizes.size14),
              ),
            ),
          ],
        ),
        ExpansionTile(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: Text(
            AppLocalizationsKey.faqQuestion2.translate(context),
            style: const TextStyle(
                fontFamily: Fonts.amalia, fontSize: FontSizes.size18),
          ),
          children: [
            ListTile(
              selectedTileColor: Theme.of(context).scaffoldBackgroundColor,
              tileColor: Theme.of(context).scaffoldBackgroundColor,
              title: Text(
                AppLocalizationsKey.faqAnswer2.translate(context),
                style: const TextStyle(
                    fontFamily: Fonts.amalia, fontSize: FontSizes.size14),
              ),
            ),
          ],
        ),
        ExpansionTile(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: Text(
            AppLocalizationsKey.faqQuestion3.translate(context),
            style: const TextStyle(
                fontFamily: Fonts.amalia, fontSize: FontSizes.size18),
          ),
          children: [
            ListTile(
              selectedTileColor: Theme.of(context).scaffoldBackgroundColor,
              tileColor: Theme.of(context).scaffoldBackgroundColor,
              title: Text(
                AppLocalizationsKey.faqAnswer3.translate(context),
                style: const TextStyle(
                    fontFamily: Fonts.amalia, fontSize: FontSizes.size14),
              ),
            ),
          ],
        ),
      ];
}
