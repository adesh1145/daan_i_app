import 'package:daan_i_app/presentation/donar_module/home_screen/home_screen_donate.dart';
import 'package:get/get.dart';

class HistoryScreenTabBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeDonateScreen());
  }
}
