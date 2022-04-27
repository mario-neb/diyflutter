import 'package:diyapp/application/settings/contact/contact_bloc.dart';
import 'package:diyapp/localization/app_localizations_key.dart';
import 'package:diyapp/presentation/settings/contact/widgets/contact_list_tile.dart';
import 'package:diyapp/resources/assets.dart';
import 'package:diyapp/resources/constants.dart';
import 'package:diyapp/resources/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContactList extends StatelessWidget {
  const ContactList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ContactBloc>();
    return Column(
      children: [
        ContactListTile(
          title: AppLocalizationsKey.contactsEmail.translate(context),
          subtitle: Constants.applicationContactEmail,
          icon: SvgPicture.asset(Assets.contactsEmailIcon),
          onPressed: () => bloc.add(const ContactEvent.emailPressed()),
        ),
        const SizedBox(height: Dimensions.size12),
        ContactListTile(
          title: AppLocalizationsKey.web.translate(context),
          subtitle: Uri.parse(Constants.applicationContactWebsite).host,
          icon: SvgPicture.asset(Assets.contactsWebIcon),
          onPressed: () => bloc.add(const ContactEvent.websitePressed()),
        ),
        const SizedBox(height: Dimensions.size12),
        ContactListTile(
          title: AppLocalizationsKey.profilePhoneNumber.translate(context),
          subtitle: Constants.applicationContactPhone,
          icon: SvgPicture.asset(Assets.contactsPhoneIcon),
          onPressed: () => bloc.add(const ContactEvent.phoneNumberPressed()),
        ),
      ],
    );
  }
}
