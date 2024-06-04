import '../controller/ngo_signup_controller.dart';
import 'package:get/get.dart';

class CustSignupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NgoSignUpController());
  }
}
