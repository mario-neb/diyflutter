import 'dart:io';

import 'package:diyapp/domain/auth/user.dart';
import 'package:diyapp/localization/app_localizations_key.dart';
import 'package:diyapp/presentation/profile/widgets/profile_header.dart';
import 'package:diyapp/presentation/profile/widgets/profile_list_tile.dart';
import 'package:diyapp/resources/dimensions.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    Key? key,
    required this.user,
    this.profileImage,
  }) : super(key: key);

  final User user;
  final File? profileImage;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(
        left: Dimensions.size40,
        right: Dimensions.size20,
      ),
      child: Column(
        children: [
          const SizedBox(height: Dimensions.size20),
          ProfileHeader(user: user, profileImage: profileImage),
          const SizedBox(height: Dimensions.size40),
          ProfileListTile(
            title: AppLocalizationsKey.profileEmail.translate(context),
            subtitle: user.email,
          ),
          ProfileListTile(
            title: AppLocalizationsKey.dummyText.translate(context),
            subtitle: user.username,
          ),
          ProfileListTile(
            title: AppLocalizationsKey.profileEmailVerified.translate(context),
            subtitle: 'true',
          ),
        ],
      ),
    );
  }
}
