import 'package:daan_i_app/widgets/app_bar/custom_app_bar.dart';
import 'package:daan_i_app/widgets/custom_text_form_field.dart';
import 'package:daan_i_app/widgets/my_widget/custom_image_view.dart';

import 'package:animated_text_kit/animated_text_kit.dart';
import '../../../../core/app_export.dart';
import 'controller/login_controller.dart';

class LoginScreen extends GetWidget<LoginController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: CustomAppBar(
      //   tittle: AppLocalizations.of(context)!.selectLanguage,
      //   centerTitle: true,
      //   isBackBtnVisible: false,
      // ),

      body: Stack(
        children: [
          SizedBox(
            width: Get.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.appLogo,
                  // width: double.maxFinite,
                  height: 200.h,
                  // alignment: Alignment.center,
                ),
              ],
            ),
          ),
          Align(
            alignment: AlignmentDirectional.bottomEnd,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
              height: 490.h,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondaryContainer,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.r),
                    topRight: Radius.circular(20.r)),
              ),
              child: Form(
                key: controller.formKey,
                child: Column(children: [
                  TabBar(
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    labelPadding: EdgeInsets.only(bottom: 6.h),
                    controller: controller.tabController,
                    tabs: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: CustomText("Donar"),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: CustomText("NGO"),
                      ),
                    ],
                  ),
                  AnimatedTextKit(
                    totalRepeatCount: 200,
                    isRepeatingAnimation: true,
                    animatedTexts: [
                      TyperAnimatedText("Welcome Daan-i",
                          speed: const Duration(milliseconds: 100),
                          textStyle: AppStyle.roboto20w600),
                    ],
                    onTap: () {},
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  CustomText("Login / SignUp", style: AppStyle.roboto14w400),
                  SizedBox(
                    height: 24.h,
                  ),
                  CustomTextFormField(
                    prefixIcon: const Icon(Icons.email_outlined),
                    hintText: " Enter Email",
                    labelText: "Email",
                    controller: controller.emailController.value,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    onEditingComplete: () {},
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  CustomTextFormField(
                    prefixIcon: const Icon(Icons.password_outlined),
                    hintText: "Enter Password",
                    labelText: "Password",
                    isPassword: true,
                    controller: controller.passController.value,
                    keyboardType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.next,
                    onEditingComplete: () {},
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  CustomElevatedButton(
                    text: "Log in",
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    onTap: () => controller.tabController.index == 0
                        ? Get.offAllNamed(AppRoutes.custBottomNavigation)
                        : null,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                          onTap: () {
                            controller.tabController.index == 0
                                ? Get.toNamed(AppRoutes.custSignUpScreen)
                                : null;
                          },
                          child: Padding(
                            padding: EdgeInsets.only(top: 6.h),
                            child: CustomText(
                              "Register ?",
                              style: AppStyle.roboto12w400,
                            ),
                          )),
                      InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: EdgeInsets.only(top: 6.h),
                            child: CustomText(
                              "Forget Password ?",
                              style: AppStyle.roboto12w400,
                            ),
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Divider(
                        color: Theme.of(context).colorScheme.outline,
                      )),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.w),
                        child: CustomText("Login with"),
                      ),
                      Expanded(
                          child: Divider(
                        color: Theme.of(context).colorScheme.outline,
                      )),
                    ],
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.google,
                    height: 48.h,
                  ),
                ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}
