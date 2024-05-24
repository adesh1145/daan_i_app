import '../../../../../core/app_export.dart';
import '../../../../core/utils/logger.dart';
import '../../../../data/network/network_api_services.dart';

class CustSignUpController extends GetxController {
  RxBool isLoading = false.obs;
  RxBool isOtpVerfied = false.obs;

  final Rx<TextEditingController> emailController = TextEditingController().obs;
  final Rx<TextEditingController> nameController = TextEditingController().obs;
  final Rx<TextEditingController> mobileController =
      TextEditingController().obs;
  final Rx<TextEditingController> passController = TextEditingController().obs;
  final Rx<TextEditingController> confirmPassController =
      TextEditingController().obs;
  final signupFormKey = GlobalKey<FormState>();

  void donarSignUpApi() {
    isLoading(true);
    NetworkApiService()
        .postApi(
            url: UrlConstants.donarSignUpUrl,
            body: {
              "email": emailController.value.text,
              "password": passController.value.text,
              "name": nameController.value.text,
              'mobile': mobileController.value.text
            },
            isSetToken: false)
        .then((value) {
      if (value?.data['status'] == true) {
        customSnackBar(value?.data['msg'], msgType: MsgType.success);

        Get.toNamed(AppRoutes.otpScreen,
            arguments: {'email': emailController.value.text});
      } else {
        // print(value?.data);
        customSnackBar(value?.data['msg'], msgType: MsgType.error);
      }
      isLoading(false);
    }).onError((error, stackTrace) {
      isLoading(false);
      customSnackBar("SomeThing Wents Wrong", msgType: MsgType.error);
      Logger.logPrint(error.toString(), stackTrace: stackTrace);
    });
  }
}
