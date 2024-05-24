import 'dart:async';

import 'package:daan_i_app/core/utils/pref_utils.dart';

import '../../../../core/app_export.dart';
import '../../../../data/network/network_api_services.dart';

class OtpController extends GetxController {
  Rx<TextEditingController> otpController = TextEditingController().obs;
  final argumentData = Get.arguments;
  GlobalKey<FormState> otpFormKey = GlobalKey<FormState>();

  RxInt timeCounter = 30.obs;
  late Timer _timer;
  RxBool isLoading = false.obs;

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (timeCounter > 0) {
        timeCounter--;
      } else {
        _timer.cancel();
      }
    });
  }

  @override
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

  void verfyOtpApi() {
    isLoading(true);
    NetworkApiService()
        .postApi(
            url: UrlConstants.otpVerifyUrl,
            body: {
              "email": argumentData['email'],
              'otp': otpController.value.text
            },
            isSetToken: false)
        .then((value) {
      if (value?.data['status'] == true) {
        customSnackBar(value?.data['msg'], msgType: MsgType.success);
        AppStorage.setToken(
            value?.data['response']['accessToken'].toString() ?? "");
        Get.offAllNamed(
          AppRoutes.custBottomNavigation,
        );
      } else {
        // print(value?.data);
        customSnackBar(value?.data['msg'], msgType: MsgType.error);
      }
      isLoading(false);
    }).onError((error, stackTrace) {
      isLoading(false);
      customSnackBar("SomeThing Wents Wrong", msgType: MsgType.error);
    });
  }
}
