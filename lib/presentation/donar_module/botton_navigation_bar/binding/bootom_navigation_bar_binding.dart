// ignore_for_file: unused_import

import 'package:get/get.dart';

import '../controller/bottom_navigation_bar_controller.dart';

class CustBottomNavigationBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CustBottomNavigationBarController>(
        () => CustBottomNavigationBarController());
  }
}
