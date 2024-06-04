import 'package:get/get.dart';

import '../controller/order_screen_controller.dart';

class OrderScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OrderScreenController());
  }
}
