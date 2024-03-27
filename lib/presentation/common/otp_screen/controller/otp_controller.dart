import 'dart:async';

import '../../../../core/app_export.dart';

class OtpController extends GetxController {
  Rx<TextEditingController> otpController = TextEditingController().obs;
  final argumentData = Get.arguments;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  RxInt timeCounter = 30.obs;
  late Timer _timer;
  RxBool loading = false.obs;

  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (timeCounter > 0) {
        timeCounter--;
      } else {
        _timer.cancel();
      }
    });
  }

  @override
  void codeUpdated() {
    // otpController.value.text = code!;
  }

  @override
  void onInit() {
    super.onInit();
    // listenForCode();
    startTimer();
  }

  @override
  Future<void> onReady() async {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
