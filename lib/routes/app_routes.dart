import 'package:get/get.dart';

import '../presentation/common/select_language_screen/binding/select_language_binding.dart';
import '../presentation/common/select_language_screen/select_language_screen.dart';

class AppRoutes {
  //! Conmmon Screen Name

  static const String selectLanguageScreen = '/select_language_screen';

  static List<GetPage> pages = [
    //! Conmmon Screen

    GetPage(
      name: selectLanguageScreen,
      page: () => SelectLanguageScreen(),
      bindings: [
        SelectLanguageBinding(),
      ],
    ),

    //! Customer Screen
//  GetPage(
//       name: selectLanguageScreen,
//       page: () => SelectLanguageScreen(),
//       bindings: [
//         SelectLanguageBinding(),
//       ],
//     ),

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
