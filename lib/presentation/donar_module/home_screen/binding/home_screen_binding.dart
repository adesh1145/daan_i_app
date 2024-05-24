import 'package:daan_i_app/presentation/donar_module/home_screen/home_screen_donate.dart';

import '../controller/home_screen_controller.dart';
import 'package:get/get.dart';

class HomeScreenTabBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeDonateScreen());
  }
}
