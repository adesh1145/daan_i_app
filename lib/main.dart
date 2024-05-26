import 'package:daan_i_app/core/utils/pref_utils.dart';
import 'package:daan_i_app/localization/app_localizations.dart';
import 'package:daan_i_app/presentation/common/onboarding_screen/onboarding_screen.dart';
import 'package:firebase_core/firebase_core.dart';

import 'core/app_export.dart';
import 'core/utils/dismiss_keyboard.dart';
import 'core/utils/initial_bindings.dart';
import 'firebase_options.dart';
import 'theme/color_schemes.g.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await AppStorage.init();
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
            initialBinding: InitialBindings(),
            supportedLocales: AppLocalizations.supportedLocales,
            fallbackLocale: const Locale('en', 'US'),
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            title: 'Daan-i',
            initialRoute: AppRoutes.splashScreen,
            getPages: AppRoutes.pages,
            // home:OnbordingScreen(),
            // home:OnbordingScreen(),
          ),
        );
      },
    );
  }
}
