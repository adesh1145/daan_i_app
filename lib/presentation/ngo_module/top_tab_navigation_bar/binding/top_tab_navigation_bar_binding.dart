import 'package:get/get.dart';

import '../controller/top_tab_navigation_bar_controller.dart';

class TopTabNavigationBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() =>TopTabNavigationBarController());
  }

  
}