import '../../../../../core/app_export.dart';

class CustSignUpController extends GetxController {
  RxBool loading = false.obs;
  RxBool isOtpVerfied = false.obs;

  final Rx<TextEditingController> emailController = TextEditingController().obs;
  final Rx<TextEditingController> nameController = TextEditingController().obs;
  final Rx<TextEditingController> passController = TextEditingController().obs;
  final Rx<TextEditingController> confirmPassController =
      TextEditingController().obs;
  final formKey = GlobalKey<FormState>();
  @override
  void onInit() {
    super.onInit();
  }
}
