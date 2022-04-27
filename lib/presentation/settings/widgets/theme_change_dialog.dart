import 'package:diyapp/application/settings/theme/theme_bloc.dart';
import 'package:diyapp/extensions.dart';
import 'package:diyapp/localization/app_localizations_key.dart';
import 'package:diyapp/presentation/widgets/buttons.dart';
import 'package:diyapp/resources/dimensions.dart';
import 'package:diyapp/resources/font_sizes.dart';
import 'package:diyapp/resources/fonts.dart';
import 'package:flutter/material.dart' hide CloseButton;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ThemeChangeDialog extends StatelessWidget {
  const ThemeChangeDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ThemeBloc>();
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimensions.size28),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _ThemeModeButton(
            title: AppLocalizationsKey.lightMode.translate(context),
            icon: MdiIcons.brightness4,
            onPressed: () {
              bloc.add(const ThemeEvent.themeModeSaved(ThemeMode.light));
              context.navigator.pop();
            },
          ),
          _ThemeModeButton(
            title: AppLocalizationsKey.darkMode.translate(context),
            icon: MdiIcons.weatherNight,
            onPressed: () {
              bloc.add(const ThemeEvent.themeModeSaved(ThemeMode.dark));
              context.navigator.pop();
            },
          ),
          const CloseButton(),
        ],
      ),
    );
  }
}

class _ThemeModeButton extends StatelessWidget {
  const _ThemeModeButton({
    Key? key,
    required this.title,
    required this.icon,
    this.onPressed,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return RawMaterialButton(
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: Dimensions.size28,
            color: theme.colorScheme.secondary,
          ),
          const SizedBox(width: Dimensions.size20),
          Text(
            title,
            style: TextStyle(
              fontSize: FontSizes.size20,
              color: theme.colorScheme.secondary,
              fontFamily: Fonts.amalia,
            ),
          ),
        ],
      ),
    );
  }
}
