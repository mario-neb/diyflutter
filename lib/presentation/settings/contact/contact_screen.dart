import 'package:diyapp/application/settings/contact/contact_bloc.dart';
import 'package:diyapp/di/injection.dart';
import 'package:diyapp/localization/app_localizations_key.dart';
import 'package:diyapp/presentation/settings/contact/widgets/contact_list.dart';
import 'package:diyapp/presentation/widgets/top_bar.dart';
import 'package:diyapp/resources/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ContactBloc>(),
      child: Scaffold(
        appBar: TopBar(
          title: AppLocalizationsKey.settingsContacts.translate(context),
        ),
        body: const Padding(
          padding: EdgeInsets.only(
            left: Dimensions.size28,
            right: Dimensions.size20,
          ),
          child: ContactList(),
        ),
      ),
    );
  }
}
