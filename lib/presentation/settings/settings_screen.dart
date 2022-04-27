import 'package:diyapp/localization/app_localizations_key.dart';
import 'package:diyapp/presentation/settings/widgets/settings_list.dart';
import 'package:diyapp/presentation/widgets/top_bar.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(
        title: AppLocalizationsKey.settingsTitle.translate(context),
        automaticallyImplyLeading: false,
      ),
      body: const SettingsList(),
    );
  }
}
