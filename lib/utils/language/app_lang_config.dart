part of '../app_import/app_import.dart';

String kEn = 'en';
String kAr = 'ar';

class AppLangConfig {
// * Path Folder Lang

  static String path = 'assets/lang';

  // * Support Lang

  static Locale enLocale = Locale(kEn);
  static Locale arLocale = Locale(kAr);

  static List<Locale> supportLocal = [enLocale, arLocale];
}
