import 'package:daan_i_app/localization/app_localizations.dart';
import 'package:daan_i_app/presentation/donar_module/onboarding_screen.dart';
import 'package:firebase_core/firebase_core.dart';

import 'core/app_export.dart';
import 'core/utils/dismiss_keyboard.dart';
import 'firebase_options.dart';
import 'theme/color_schemes.g.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: const Size(360, 690),
      builder: (context, child) {
        return DismissKeyboard(
          child: GetMaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
            darkTheme:
                ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
            themeMode: ThemeMode.system,
            locale: Get.deviceLocale,
            supportedLocales: AppLocalizations.supportedLocales,
            fallbackLocale: const Locale('en', 'US'),
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            title: 'Daan-i',
            initialRoute: AppRoutes.selectLanguageScreen,
            getPages: AppRoutes.pages,
           // home:OnbordingScreen(),
          ),
        );
      },
    );
  }
}

