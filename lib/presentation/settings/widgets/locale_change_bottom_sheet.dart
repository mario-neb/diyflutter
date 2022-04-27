import 'package:diyapp/application/settings/locale/locale_bloc.dart';
import 'package:diyapp/extensions.dart';
import 'package:diyapp/localization/app_localization.dart';
import 'package:diyapp/presentation/settings/widgets/circular_checkbox.dart';
import 'package:diyapp/presentation/widgets/custom_bottom_sheet.dart';
import 'package:diyapp/resources/colors.dart';
import 'package:diyapp/resources/dimensions.dart';
import 'package:diyapp/resources/font_sizes.dart';
import 'package:diyapp/resources/fonts.dart';
import 'package:flutter/material.dart' hide CloseButton;
import 'package:flutter_bloc/flutter_bloc.dart';

class LocaleChangeBottomSheet extends StatelessWidget {
  const LocaleChangeBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomBottomSheet(
      height: Dimensions.size250,
      showCancelButton: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ...AppLocalizations.supportedLocales
              .map((l) => _LocaleListTile(locale: l))
              .toList(),
        ],
      ),
    );
  }
}

class _LocaleListTile extends StatelessWidget {
  const _LocaleListTile({
    Key? key,
    required this.locale,
  }) : super(key: key);

  final Locale locale;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<LocaleBloc>();
    return ListTile(
      onTap: () {
        bloc.add(LocaleEvent.localeSaved(locale));
        context.navigator.pop();
      },
      leading: Image.asset(
        locale.asset,
        width: Dimensions.size32,
      ),
      title: Text(
        locale.nameTranslated(context),
        style: const TextStyle(
            fontFamily: Fonts.amalia,
            fontWeight: FontWeight.bold,
            fontSize: FontSizes.size14,
            color: ApplicationColors.black),
      ),
      trailing: Visibility(
        visible:
            context.localizations.locale.languageCode == locale.languageCode,
        child: const CircularCheckbox(),
      ),
    );
  }
}
