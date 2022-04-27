import 'package:diyapp/extensions.dart';
import 'package:diyapp/localization/app_localizations_key.dart';
import 'package:diyapp/presentation/discover/discover_screen.dart';
import 'package:diyapp/presentation/home/home_guest_screen.dart';
import 'package:diyapp/presentation/home/home_screen.dart';
import 'package:diyapp/presentation/profile/profile_screen.dart';
import 'package:diyapp/presentation/settings/settings_screen.dart';
import 'package:diyapp/resources/colors.dart';
import 'package:diyapp/resources/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MainScaffold extends HookWidget {
  const MainScaffold({
    Key? key,
    required this.isUserLoggedIn,
  }) : super(key: key);

  final bool isUserLoggedIn;

  final authenticatedScreens = const [
    HomeScreen(),
    ProfileScreen(),
    SettingsScreen()
  ];

  final unauthenticatedScreens = const [
    HomeGuestScreen(),
    DiscoverScreen(),
    SettingsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final currentIndex = useState(0);
    if (!isUserLoggedIn && currentIndex.value > unauthenticatedScreens.length) {
      currentIndex.value = 0;
    }
    final currentScreen = isUserLoggedIn
        ? authenticatedScreens[currentIndex.value]
        : unauthenticatedScreens[currentIndex.value];
    return Scaffold(
      body: currentScreen,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: theme.scaffoldBackgroundColor,
        iconSize: isUserLoggedIn ? 30 : 25,
        onTap: (index) => currentIndex.value = index,
        currentIndex: currentIndex.value,
        selectedItemColor: theme.colorScheme.secondary,
        unselectedItemColor: ApplicationColors.grey,
        selectedLabelStyle: const TextStyle(fontFamily: Fonts.amalia),
        unselectedLabelStyle: const TextStyle(fontFamily: Fonts.amalia),
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home_outlined),
            label: AppLocalizationsKey.bottomBarHome.translate(context),
          ),
          if (isUserLoggedIn)
            BottomNavigationBarItem(
              icon: const Icon(MdiIcons.accountCircleOutline),
              label: AppLocalizationsKey.bottomBarProfile.translate(context),
            ),
          if (!isUserLoggedIn)
            BottomNavigationBarItem(
              icon: const Icon(MdiIcons.inboxFullOutline),
              label: AppLocalizationsKey.bottomBarDiscover.translate(context),
            ),
          BottomNavigationBarItem(
            icon: const Icon(MdiIcons.cogOutline),
            label: AppLocalizationsKey.bottomBarSettings.translate(context),
          ),
        ],
      ),
    );
  }
}
