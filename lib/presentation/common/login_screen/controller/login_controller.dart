import '../../../../../core/app_export.dart';

class LoginController extends GetxController
    with GetSingleTickerProviderStateMixin {
  RxBool loading = false.obs;
  late TabController tabController;
  final Rx<TextEditingController> emailController = TextEditingController().obs;
  final Rx<TextEditingController> passController = TextEditingController().obs;
  final formKey = GlobalKey<FormState>();
  @override
  void onInit() {
    tabController = TabController(length: 2, vsync: this);
    super.onInit();
  }
}
