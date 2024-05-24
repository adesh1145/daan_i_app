import 'package:daan_i_app/core/utils/snack_bar.dart';
import 'package:daan_i_app/data/network/network_api_services.dart';

import '../../../../../core/app_export.dart';
import '../../../../core/utils/logger.dart';
import '../../../../core/utils/pref_utils.dart';

class LoginController extends GetxController
    with GetSingleTickerProviderStateMixin {
  RxBool isLoading = false.obs;
  late TabController tabController;
  final Rx<TextEditingController> emailController = TextEditingController().obs;
  final Rx<TextEditingController> passController = TextEditingController().obs;
  final loginFormKey = GlobalKey<FormState>();
  @override
  void onInit() {
    tabController = TabController(length: 2, vsync: this);
    super.onInit();
  }

  void donarLoginApi() {
    isLoading(true);
    NetworkApiService()
        .postApi(
            url: UrlConstants.donarLoginUrl,
            body: {
              "email": emailController.value.text,
              "password": passController.value.text
            },
            isSetToken: false)
        .then((value) async {
      if (value?.data['status'] == true) {
        customSnackBar(value?.data['msg'], msgType: MsgType.success);
        if (value?.data['response']['isVerify'] == true) {
          await AppStorage.setToken(
              value?.data['response']['token']['accessToken'] ?? "");
          Get.offAllNamed(
            AppRoutes.custBottomNavigation,
          );
        } else {
          Get.toNamed(AppRoutes.otpScreen,
              arguments: {'email': emailController.value.text});
        }
      } else {
        if (value?.data['response']['isVerify'] == false) {
          customSnackBar("Otp Has Been Sent at email",
              msgType: MsgType.success);
          Get.toNamed(AppRoutes.otpScreen,
              arguments: {'email': emailController.value.text});
        } else {
          customSnackBar(value?.data['msg'], msgType: MsgType.error);
        }
        // print(value?.data);
      }
      isLoading(false);
    }).onError((error, stackTrace) {
      isLoading(false);
      customSnackBar("SomeThing Wents Wrong", msgType: MsgType.error);
      Logger.logPrint(error.toString(), stackTrace: stackTrace);
    });
  }
}
