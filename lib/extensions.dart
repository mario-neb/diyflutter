import 'package:diyapp/domain/settings/login_method/login_method.dart';
import 'package:diyapp/localization/app_localization.dart';
import 'package:diyapp/presentation/forgot_password/forgot_password_page.dart';
import 'package:diyapp/presentation/form_example/form_example_screen.dart';
import 'package:diyapp/presentation/home/home_screen.dart';
import 'package:diyapp/presentation/login/login_screen.dart';
import 'package:diyapp/presentation/main/main_screen.dart';
import 'package:diyapp/presentation/register/register_screen.dart';
import 'package:diyapp/presentation/settings/contact/contact_screen.dart';
import 'package:diyapp/presentation/settings/faq/faq_screen.dart';
import 'package:diyapp/presentation/terms_and_conditions/terms_and_conditions_screen.dart';
import 'package:diyapp/resources/assets.dart';
import 'package:diyapp/resources/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localized_locales/flutter_localized_locales.dart';
import 'package:intl/intl.dart';

extension BuildContextExtensions on BuildContext {
  ThemeData get theme => Theme.of(this);

  AppLocalizations get localizations => AppLocalizations.of(this);

  NavigatorState get navigator => Navigator.of(this);

  bool get isAndroid => theme.platform == TargetPlatform.android;

  bool get isIOS => theme.platform == TargetPlatform.iOS;

  MediaQueryData get media => MediaQuery.of(this);
}

extension NavigatorStatextensions on NavigatorState {
  void navigate(Widget screen) {
    context.navigator.push(
      MaterialPageRoute(
        builder: (context) => screen,
      ),
    );
  }

  void replacement(Widget screen) {
    context.navigator.pushReplacement(
      MaterialPageRoute(
        builder: (context) => screen,
      ),
    );
  }

  void navigateWithArguments(Widget screen, dynamic arguments) {
    context.navigator.push(
      MaterialPageRoute(
        builder: (context) => screen,
        settings: RouteSettings(arguments: arguments),
      ),
    );
  }

  void replacementWithArguments(Widget screen, dynamic arguments) {
    context.navigator.pushReplacement(
      MaterialPageRoute(
        builder: (context) => screen,
        settings: RouteSettings(arguments: arguments),
      ),
    );
  }

  void pushTermsAndConditionsScreen() {
    context.navigator.navigate(const TermsAndConditionsScreen());
  }

  void pushContactsScreen() {
    context.navigator.navigate(const ContactScreen());
  }

  void pushHomeScreen() {
    context.navigator.navigate(const HomeScreen());
  }

  void pushLoginScreen([dynamic arguments]) {
    context.navigator.navigateWithArguments(const LoginScreen(), arguments);
  }

  void pushRegisterScreen() {
    context.navigator.navigate(const RegisterScreen());
  }

  void replaceRegisterScreen([dynamic arguments]) {
    context.navigator
        .replacementWithArguments(const RegisterScreen(), arguments);
  }

  void replaceMainScreen() {
    context.navigator.replacement(const MainScreen());
  }

  void pushForgotPasswordScreen() {
    context.navigator.navigate(const ForgotPasswordPage());
  }

  void replaceFormExampleScreen() {
    context.navigator.replacement(const FormExampleScreen());
  }

  void pushFaqScreen() {
    context.navigator.navigate(const FaqScreen());
  }

  void goToHomeScreen() {
    context.navigator.pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => const MainScreen()),
        (Route<dynamic> route) => false);
  }
}

extension StringExtensions on String {
  String capitalize() => toBeginningOfSentenceCase(this)!;

  String removeLast() {
    if (length == 0) return this;
    return substring(0, length - 1);
  }

  ThemeMode toThemeMode() {
    return ThemeMode.values.firstWhere(
      (s) => s.value == this,
    );
  }

  LoginMethod toLoginMethod() {
    return LoginMethod.values.firstWhere(
      (s) => s.value == this,
    );
  }
}

extension DateTimeExtensions on DateTime {
  String toFormattedString() => Constants.dateFormat.format(this);
}

extension ThemeModeExtensions on ThemeMode {
  String get value => toString().split('.').last;
}

extension LocaleExtensions on Locale {
  String get value => toString().split('.').last;

  String get asset {
    switch (languageCode) {
      case 'en':
        return Assets.english;
      case 'sq':
        return Assets.albanian;
      default:
        throw UnimplementedError();
    }
  }

  String nameTranslated(BuildContext context) {
    return LocaleNames.of(context)!.nameOf(languageCode)!.capitalize();
  }
}
