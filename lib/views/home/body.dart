part of '../../utils/app_import/app_import.dart';

class PageHome extends StatelessWidget {
  const PageHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(AppLangKey.selectLanguage, style: AppTheme.h4(context)).tr(),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () => context.setLocale(AppLangConfig.arLocale),
                child: Text(
                  AppLangKey.arabic.tr(),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: ElevatedButton(
                onPressed: () => print(context.locale.languageCode),
                child: Text('get current lang'),
              ),
            ),
            Spacer(
              flex: 2,
            ),
            Expanded(
              child: ElevatedButton(
                  onPressed: () => context.setLocale(AppLangConfig.enLocale),
                  child: Text(AppLangKey.english.tr())),
            ),
          ]),
        ],
      ),
    ));
  }
}
