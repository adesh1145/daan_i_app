import 'package:daan_i_app/core/app_export.dart';

class CustBottomNavigationBarController extends GetxController {
  dynamic argumentData = Get.arguments;

  RxInt tabIndex = 0.obs;
  Rx<DateTime> lastTime = DateTime.now().obs;

  RxInt numberClick = 0.obs;
  RxBool canExit = false.obs;
  void changeTabIndex(int index) {
    tabIndex(index);
    update();
  }

  @override
  void onInit() {
    super.onInit();
  }
}
