// ignore_for_file: unused_import

import 'package:daan_i_app/presentation/donar_module/cust_profile_tab_screen/controller/cust_profile_tab_controller.dart';
import 'package:get/get.dart';

import '../../home_screen/controller/home_screen_controller.dart';
import '../controller/bottom_navigation_bar_controller.dart';

class CustBottomNavigationBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CustBottomNavigationBarController>(
        () => CustBottomNavigationBarController());
    Get.lazyPut<CustProfileTabController>(() => CustProfileTabController());
    Get.lazyPut<HomeScreenTabController>(() => HomeScreenTabController());
  }
}
