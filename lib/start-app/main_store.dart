part of '../utils/app_import/app_import.dart';

class MainStore extends StatelessWidget {
  const MainStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 960),
      child: const PageSplash(),
      builder: (context, child) {
        return MaterialApp(
          title: 'App Store',
          debugShowCheckedModeBanner: false,
          // * lang
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          // * Theme
          theme: AppThemeChoose.light(context),
          darkTheme: AppThemeChoose.dark(context),
          themeMode: ThemeMode.system,
          home: child,
        );
      },
    );
  }
}
