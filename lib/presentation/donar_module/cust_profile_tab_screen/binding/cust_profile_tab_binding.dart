import '../controller/cust_profile_tab_controller.dart';
import 'package:get/get.dart';

class CustProfileTabBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NgoProfileTabController());
  }
}
