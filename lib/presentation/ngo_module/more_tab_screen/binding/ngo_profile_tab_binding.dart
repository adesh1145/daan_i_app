import '../controller/ngo_profile_tab_controller.dart';
import 'package:get/get.dart';

class NgoTabBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NgoTabController());
  }
}
