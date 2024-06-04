import '../controller/home_screen_controller.dart';
import 'package:get/get.dart';

class HomeScreenTabBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeScreenTabController());
  }
}
