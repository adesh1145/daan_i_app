import 'package:daan_i_app/localization/app_localizations.dart';

import 'core/app_export.dart';
import 'core/utils/dismiss_keyboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return DismissKeyboard(
          child: GetMaterialApp(
            debugShowCheckedModeBanner: false,
            // theme: ThemeData(
            //   primarySwatch: Colors.red,
            //   useMaterial3: true,
            //   visualDensity: VisualDensity.adaptivePlatformDensity,
            // ),
            // translations: AppLocalization(),
            locale: Get.deviceLocale,
            supportedLocales: AppLocalizations.supportedLocales,
            fallbackLocale: const Locale('en', 'US'),
            localizationsDelegates: AppLocalizations.localizationsDelegates,

            title: 'Daan-i',
            initialRoute: AppRoutes.initialRoute,
            getPages: AppRoutes.pages,
          ),
        );
      },
    );
  }
}
