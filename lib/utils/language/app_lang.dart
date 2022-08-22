part of '../app_import/app_import.dart';

class AppLang {
  /// [currentLang] (en, ar)
  ///
  /// [context] need get current locale
  static String currentLang(BuildContext context) =>
      context.locale.languageCode;

  /// {setLang} change lang ex ar to en
  ///
  /// [context] need method setLocal, [locale] send lang change

  static void setLang(BuildContext context, Locale locale) =>
      context.setLocale(locale);
}
