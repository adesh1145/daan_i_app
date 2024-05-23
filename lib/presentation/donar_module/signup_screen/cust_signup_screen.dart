import 'package:daan_i_app/widgets/app_bar/custom_app_bar.dart';
import 'package:daan_i_app/widgets/my_widget/custom_text_form_field.dart';
import 'package:daan_i_app/widgets/my_widget/custom_image_view.dart';

import 'package:animated_text_kit/animated_text_kit.dart';
import '../../../../core/app_export.dart';
import 'controller/cust_signup_controller.dart';

class CustSignUpScreen extends GetWidget<CustSignUpController> {
  const CustSignUpScreen({super.key});

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
                child: SingleChildScrollView(
                  child: Column(children: [
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
                    CustomText(" SignUp with Email",
                        style: AppStyle.roboto14w400),
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
                        suffixIconConstraints: BoxConstraints(
                          maxHeight: 25.h,
                        ),
                        suffixIcon: Padding(
                          padding: EdgeInsets.only(right: 6.w),
                          child: controller.isOtpVerfied.value
                              ? const Icon(
                                  Icons.verified,
                                  color: ColorConstant.success,
                                )
                              : CustomElevatedButton(
                                  isExpanded: false,
                                  text: "Verify",
                                  padding: EdgeInsets.zero,
                                  onTap: () => Get.toNamed(AppRoutes.otpScreen,
                                      arguments: {'mobile': "7007765672"}),
                                  textStyle: AppStyle.roboto12Backgroundw500,
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder6,
                                ),
                        )),
                    SizedBox(
                      height: 12.h,
                    ),
                    CustomTextFormField(
                      prefixIcon: const Icon(Icons.person),
                      hintText: " Enter Full Name",
                      labelText: "Name",
                      controller: controller.nameController.value,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      onEditingComplete: () {},
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    CustomTextFormField(
                      prefixIcon: const Icon(Icons.password_outlined),
                      hintText: " Enter Password",
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
                    CustomTextFormField(
                      prefixIcon: const Icon(Icons.password_outlined),
                      hintText: " Enter Confirm Password",
                      labelText: "Confirm Password",
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
                      text: "Sign Up",
                      padding: EdgeInsets.symmetric(vertical: 10.h),
                    ),
                    InkWell(
                        onTap: () => Get.back(),
                        child: Padding(
                          padding: EdgeInsets.only(top: 6.h),
                          child: CustomText(
                            "LogIn?",
                            style: AppStyle.roboto12w400,
                          ),
                        )),
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
                          child: CustomText("Sign Up with"),
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
            ),
          )
        ],
      ),
    );
  }
}
