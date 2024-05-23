import 'package:daan_i_app/core/utils/snack_bar.dart';
import 'package:daan_i_app/data/network/network_api_services.dart';

import '../../../../../core/app_export.dart';

class LoginController extends GetxController
    with GetSingleTickerProviderStateMixin {
  RxBool isLoading = false.obs;
  late TabController tabController;
  final Rx<TextEditingController> emailController = TextEditingController().obs;
  final Rx<TextEditingController> passController = TextEditingController().obs;
  final formKey = GlobalKey<FormState>();
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
            data: {
              "email": emailController.value.text,
              "password": passController.value.text
            },
            isSetToken: false)
        .then((value) {
      if (value?.data['status'] == true) {
        customSnackBar(value?.data['msg'], msgType: MsgType.success);
        Get.offAllNamed(AppRoutes.custBottomNavigation);
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
