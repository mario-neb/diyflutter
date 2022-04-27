import 'package:intl/intl.dart';

abstract class Constants {
  Constants._();

  static const String applicationContactEmail = 'marionebiaj@gmail.com';
  static const String applicationContactWebsite =
      'https://www.linkedin.com/in/marionebiaj/';
  static const String applicationContactPhone = '+123456789';

  static const String localeKey = 'localeKey';
  static const String themeModeKey = 'themeModeKey';
  static const String emailKey = 'emailKey';
  static const String pinKey = 'pinKey';
  static const String documentKey = 'documentKey';
  static const String loginMethodKey = 'loginMethodKey';
  static const int imageQuality = 50;

  static DateFormat dateFormat = DateFormat.yMd();
  static DateTime initialDate = DateTime(1997);
  static DateTime firstDate = DateTime(1900);
  static DateTime lastDate = DateTime(2022);
  static const String apiBaseUrlDev = 'https://api.dev.com';
  static const String encriptionKey = 'my 32 length key................';
}
