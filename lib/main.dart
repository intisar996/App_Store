import 'package:easy_localization/easy_localization.dart';

import 'utils/app_import/app_import.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(EasyLocalization(
    supportedLocales: AppLangConfig.supportLocal,
    path: AppLangConfig.path,
    fallbackLocale: AppLangConfig.enLocale,
    child: const MainStore(),
  ));
}
