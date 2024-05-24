import 'package:daan_i_app/widgets/my_widget/custom_image_view.dart';

import '../../../core/app_export.dart';
import 'controller/splash_controller.dart';

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Center(
            child: CustomImageView(
              imagePath: ImageConstant.appLogo,
            ),
          ) /* add child content here */,
        ),
      ),
    );
  }
}
