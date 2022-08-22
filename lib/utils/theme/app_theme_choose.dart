part of '../app_import/app_import.dart';

/// DOC : https://api.flutter.dev/flutter/material/ThemeData-class.html
/// Doc : https://api.flutter.dev/flutter/material/TextTheme-class.html

class AppThemeChoose {
  // * Font Lang

  // * [font family]  enFont عشان يتخزن في  string يحول الخط حق
  static String? enFont = GoogleFonts.aBeeZee().fontFamily;
  static String? arFont = GoogleFonts.cairo().fontFamily;

  ///
  ///  [fontFamily] check Lang =   arFont و العكس لو عربي  enFont لو كان الخط انجليزي عطيني

  static String? fontFamily(BuildContext context) =>
      AppLang.currentLang(context) == kEn ? enFont : arFont;

  // * App Bar Theme

  ///  theme light customize()
  /// [copywith] =  يعني اقدر منها اعدل في الثيم و باقي الخصائص ما تتغير
  static ThemeData light(BuildContext context) {
    return ThemeData.light().copyWith(
      appBarTheme: AppBarTheme(
          backgroundColor: AppColors.bgWhite,
          foregroundColor: AppColors.bgBlack,
          centerTitle: true,
          elevation: 10,
          titleTextStyle: Theme.of(context)
              .textTheme
              .headline5
              ?.copyWith(fontFamily: fontFamily(context))),

      // TODO : tabBarTheme
      // elevatedButtonTheme: ElevatedButtonThemeData(
      //     style: ButtonStyle(
      //   backgroundColor: MaterialStateProperty.all(Colors.yellowAccent),
      //   foregroundColor: MaterialStateProperty.all(AppColors.bgBlack),
      // )),

      /// h5 = if not null use - if null not use

      // * Text Theme
      /// [displayColor] => h1 to h4, and caption
      /// [bodyColor] => is applied the remaining text styles =  displayColor تطبق على كل الاشياء الي ما موجودة في .
      /// Apply = h1 to h4, and caption بعدل عليهم كلهم مره 1 == بس تطبيق مش تعديل
      /// copywith = اذا اريد اعدل عليهم  و كل واحد بوحده
      textTheme: Theme.of(context).textTheme.apply(
            displayColor: AppColors.bgBlack,
            bodyColor: AppColors.bgBlack,
            fontFamily: fontFamily(context),
          ),
    );
  }

  /// [dark] theme dark custom
  static ThemeData dark(BuildContext context) {
    return ThemeData.dark().copyWith(
      // * appBar theme
      appBarTheme: AppBarTheme(
        foregroundColor: AppColors.bgWhite,
        centerTitle: true,
        elevation: 10,
        titleTextStyle: Theme.of(context)
            .textTheme
            .headline5
            ?.copyWith(fontFamily: fontFamily(context)),
        // systemOverlayStyle: const SystemUiOverlayStyle(
        //   statusBarBrightness: Brightness.dark,
        // ),
      ),

      // * Text Theme
      /// displayColor ~>  headline1 to headline4, and caption
      /// bodyColor  ~> is applied to the remaining text styles.
      textTheme: Theme.of(context).textTheme.apply(
            displayColor: AppColors.bgWhite,
            bodyColor: AppColors.bgWhite,
            fontFamily: fontFamily(context),
          ),
    );
  }
}
