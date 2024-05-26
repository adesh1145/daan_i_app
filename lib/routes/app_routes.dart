import 'package:daan_i_app/presentation/common/login_screen/binding/login_binding.dart';
import 'package:daan_i_app/presentation/common/login_screen/login_screen.dart';
import 'package:daan_i_app/presentation/common/onboarding_screen/binding/onboarding_binding.dart';
import 'package:daan_i_app/presentation/common/onboarding_screen/onboarding_screen.dart';
import 'package:daan_i_app/presentation/common/otp_screen/binding/otp_binding.dart';
import 'package:daan_i_app/presentation/common/otp_screen/otp_screen.dart';
import 'package:daan_i_app/presentation/common/select_address_screen/binding/select_address_binding.dart';
import 'package:daan_i_app/presentation/common/select_address_screen/select_address_screen.dart';
import 'package:daan_i_app/presentation/common/splash_screen/binding/splash_binding.dart';
import 'package:daan_i_app/presentation/common/splash_screen/splash_screen.dart';
import 'package:daan_i_app/presentation/donar_module/botton_navigation_bar/bottom_navigation_bar.dart';
import 'package:daan_i_app/presentation/donar_module/select_ngo_screen/binding/select_ngo_binding.dart';
import 'package:daan_i_app/presentation/donar_module/select_ngo_screen/select_ngo_screen.dart';
import 'package:daan_i_app/presentation/donar_module/signup_screen/binding/cust_signup_binding.dart';
import 'package:daan_i_app/presentation/donar_module/signup_screen/cust_signup_screen.dart';
import 'package:get/get.dart';

import '../presentation/common/map_address_screen/binding/map_address_binding.dart';
import '../presentation/common/map_address_screen/map_address_screen.dart';
import '../presentation/common/select_language_screen/binding/select_language_binding.dart';
import '../presentation/common/select_language_screen/select_language_screen.dart';
import '../presentation/donar_module/botton_navigation_bar/binding/bootom_navigation_bar_binding.dart';
import '../presentation/donar_module/cust_profile_tab_screen/edit_profile_screen.dart';

class AppRoutes {
  //! Conmmon Screen Name

  static const String splashScreen = '/splashScreen';
  static const String onBoardingScreen = '/onBoardingScreen';
  static const String selectLanguageScreen = '/selectLanguageScreen';
  static const String loginScreen = '/loginScreen';
  static const String otpScreen = '/otpScreen';

  //! Customer Screen Name
  static const String custSignUpScreen = '/custSignUpScreen';
  static const String custBottomNavigation = '/custBottomNavigation';
  static const String custEditProfileScreen = '/custEditProfileScreen';
  static const String mapAddressScreen = '/mapAddressScreen';
  static const String addAddressScreen = '/addAddressScreen';
  static const String selectAddressScreen = '/selectAddressScreen';
  static const String selectNGOScreen = '/selectNGOScreen';

  static List<GetPage> pages = [
    //! Common Screen

    GetPage(
      name: splashScreen,
      page: () => const SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: onBoardingScreen,
      page: () => OnbordingScreen(),
      bindings: [
        OnBoardingBinding(),
      ],
    ),
    GetPage(
      name: selectLanguageScreen,
      page: () => const SelectLanguageScreen(),
      bindings: [
        SelectLanguageBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => const LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: otpScreen,
      page: () => const OtpScreen(),
      bindings: [
        OtpBinding(),
      ],
    ),

    //! Customer Screen
    GetPage(
      name: custSignUpScreen,
      page: () => const CustSignUpScreen(),
      bindings: [
        CustSignupBinding(),
      ],
    ),
    GetPage(
      name: custBottomNavigation,
      page: () => const CustBottomNavigation(),
      bindings: [
        CustBottomNavigationBarBinding(),
      ],
    ),
    GetPage(
      name: custEditProfileScreen,
      page: () => CustProfileTabEditProfileScreen(),
    ),
    GetPage(
        name: mapAddressScreen,
        page: () => const MapAddressScreen(),
        bindings: [MapAddressBinding()]),
    GetPage(
        name: selectAddressScreen,
        page: () => const SelectAddressScreen(),
        bindings: [SelectAddressBinding()]),
    GetPage(
        name: selectNGOScreen,
        page: () => const SelectNGOScreen(),
        bindings: [SelectNGOBinding()]),

    //! NGO Screen

//  GetPage(
//       name: selectLanguageScreen,
//       page: () => SelectLanguageScreen(),
//       bindings: [
//         SelectLanguageBinding(),
//       ],
//     ),
  ];
}
