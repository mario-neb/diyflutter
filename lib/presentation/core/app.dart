import 'package:diyapp/application/auth/auth_bloc.dart';
import 'package:diyapp/application/settings/locale/locale_bloc.dart';
import 'package:diyapp/application/settings/login_method/login_method_bloc.dart';
import 'package:diyapp/application/settings/theme/theme_bloc.dart';
import 'package:diyapp/di/injection.dart';
import 'package:diyapp/localization/app_localization.dart';
import 'package:diyapp/presentation/core/locale_builder.dart';
import 'package:diyapp/presentation/core/theme_builder.dart';
import 'package:diyapp/presentation/splash/splash_screen.dart';
import 'package:diyapp/resources/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_localized_locales/flutter_localized_locales.dart';

class App extends StatelessWidget {
  const App({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthBloc>(),
        ),
        BlocProvider(
          create: (_) => getIt<LocaleBloc>(),
        ),
        BlocProvider(
          create: (_) => getIt<ThemeBloc>(),
        ),
        BlocProvider(
          create: (_) => getIt<LoginMethodBloc>(),
        )
      ],
      child: LocaleBuilder(
        builder: (locale) => ThemeBuilder(
          builder: (themeMode) => MaterialApp(
            locale: locale,
            supportedLocales: AppLocalizations.supportedLocales,
            localizationsDelegates: _localizationsDelegates,
            localeResolutionCallback: _buildLocaleResolutionCallback,
            themeMode: themeMode,
            theme: Themes.light,
            darkTheme: Themes.dark,
            debugShowCheckedModeBanner: false,
            home: const SplashScreen(),
          ),
        ),
      ),
    );
  }

  final List<LocalizationsDelegate> _localizationsDelegates = const [
    AppLocalizations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    LocaleNamesLocalizationsDelegate(),
    GlobalCupertinoLocalizations.delegate,
  ];

  Locale? _buildLocaleResolutionCallback(
    Locale? locale,
    Iterable<Locale> supportedLocales,
  ) {
    return supportedLocales.firstWhere(
      (element) => element.languageCode == locale?.languageCode,
      orElse: () => supportedLocales.last,
    );
  }
}
