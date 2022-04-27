import 'package:diyapp/application/profile/profile_bloc.dart';
import 'package:diyapp/di/injection.dart';
import 'package:diyapp/localization/app_localizations_key.dart';
import 'package:diyapp/presentation/profile/widgets/profile_page.dart';
import 'package:diyapp/presentation/widgets/failure_screen.dart';
import 'package:diyapp/presentation/widgets/loading_screen.dart';
import 'package:diyapp/presentation/widgets/top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nil/nil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          getIt<ProfileBloc>()..add(const ProfileEvent.profileRequested()),
      child: Scaffold(
        appBar: TopBar(
          title: AppLocalizationsKey.profileTitle.translate(context),
          automaticallyImplyLeading: false,
        ),
        body: BlocBuilder<ProfileBloc, ProfileState>(
          builder: (_, state) {
            if (state.isLoading) return const LoadingScreen();

            if (state.profileFailure != null) return const FailureScreen();

            if (state.user != null) {
              return ProfilePage(
                user: state.user!,
                profileImage: state.profileImage,
              );
            }

            return nil;
          },
        ),
      ),
    );
  }
}
