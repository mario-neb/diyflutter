import 'package:diyapp/application/auth/auth_bloc.dart';
import 'package:diyapp/application/settings/login_method/login_method_bloc.dart';
import 'package:diyapp/extensions.dart';
import 'package:diyapp/localization/app_localizations_key.dart';
import 'package:diyapp/presentation/settings/widgets/locale_change_bottom_sheet.dart';
import 'package:diyapp/presentation/settings/widgets/login_method_change_bottom_sheet.dart';
import 'package:diyapp/presentation/settings/widgets/settings_list_tile.dart';
import 'package:diyapp/presentation/settings/widgets/theme_change_dialog.dart';
import 'package:diyapp/resources/assets.dart';
import 'package:diyapp/resources/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingsList extends StatelessWidget {
  const SettingsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<AuthBloc>();
    final isUserLoggedIn = bloc.state.maybeMap(
      authenticated: (_) => true,
      orElse: () => false,
    );
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: Dimensions.size32,
              right: Dimensions.size20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                OutlinedListTile(
                  title: AppLocalizationsKey.settingsTheme.translate(context),
                  icon: SvgPicture.asset(Assets.changePinIcon),
                  onPressed: () => _showThemeChangeDialog(context),
                ),
                const SizedBox(height: Dimensions.size12),
                OutlinedListTile(
                  title:
                      AppLocalizationsKey.settingsLanguage.translate(context),
                  icon: SvgPicture.asset(Assets.languageIcon),
                  onPressed: () => _showLocaleChangeBottomSheet(context),
                ),
                const SizedBox(height: Dimensions.size12),
                if (isUserLoggedIn) ...[
                  BlocBuilder<LoginMethodBloc, LoginMethodState>(
                    builder: (_, state) => OutlinedListTile(
                      title: AppLocalizationsKey.settingsDefaultLoginMethod
                          .translate(context),
                      icon: SvgPicture.asset(Assets.logoutIcon),
                      onPressed: () => _showLoginMethodChangeDialog(context),
                    ),
                  ),
                  const SizedBox(height: Dimensions.size12),
                ],
                OutlinedListTile(
                  title: AppLocalizationsKey.settingsTermsConditions
                      .translate(context),
                  icon: SvgPicture.asset(Assets.termsIcon),
                  onPressed: () {
                    context.navigator.pushTermsAndConditionsScreen();
                  },
                ),
                const SizedBox(height: Dimensions.size12),
                OutlinedListTile(
                  title:
                      AppLocalizationsKey.settingsContacts.translate(context),
                  icon: SvgPicture.asset(Assets.contactsIcon),
                  onPressed: () {
                    context.navigator.pushContactsScreen();
                  },
                ),
                const SizedBox(height: Dimensions.size12),
                OutlinedListTile(
                  title: AppLocalizationsKey.frequentlyAskedQuestions
                      .translate(context),
                  icon: SvgPicture.asset(Assets.termsIcon),
                  onPressed: () {
                    context.navigator.pushFaqScreen();
                  },
                ),
                const SizedBox(height: Dimensions.size12),
                Visibility(
                  visible: isUserLoggedIn,
                  child: OutlinedListTile(
                    title:
                        AppLocalizationsKey.settingsLogout.translate(context),
                    icon: SvgPicture.asset(Assets.logoutIcon),
                    onPressed: () => bloc.add(const AuthEvent.loggedOut()),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showThemeChangeDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) {
        return Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 250,
            child: const ThemeChangeDialog(),
          ),
        );
      },
    );
  }

  void _showLocaleChangeBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (_) => const LocaleChangeBottomSheet(),
    );
  }

  void _showLoginMethodChangeDialog(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (_) => const LoginMethodChangeBottomSheet(),
    );
  }
}
