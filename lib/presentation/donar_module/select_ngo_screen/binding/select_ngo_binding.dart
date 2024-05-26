import '../controller/select_ngo_controller.dart';
import 'package:get/get.dart';

class SelectNGOBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectNGOController());
  }
}
