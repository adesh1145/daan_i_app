import 'package:daan_i_app/widgets/app_bar/custom_app_bar.dart';

import '../../../core/app_export.dart';
import '../../../widgets/my_widget/custom_image_view.dart';
import 'controller/otp_controller.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpScreen extends GetWidget<OtpController> {
  const OtpScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => controller.isLoading.value
          ? const Center(child: CircularProgressIndicator())
          : Scaffold(
              appBar: const CustomAppBar(
                tittle: "OTP Screen",
                isBackBtnVisible: false,
              ),
              body: Form(
                key: controller.otpFormKey,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  width: double.maxFinite,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 16.h,
                        ),
                        CustomText(
                          "Enter OTP to Sign in",
                          style: AppStyle.roboto16w700.copyWith(
                              // color: Theme.of(context).colorScheme.background,
                              ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(right: 16.w, top: 12.h),
                            child: Column(children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: SizedBox(
                                  width: double.maxFinite,
                                  child: CustomText(
                                      "A 4 digit OTP has been sent to your mobile number",
                                      maxLines: 3,
                                      style: AppStyle.roboto12w400),
                                ),
                              ),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomText(
                                        " ${controller.argumentData['email']}  ",
                                        style: AppStyle.roboto12w400),
                                    InkWell(
                                      onTap: () => Get.back(),
                                      child: Row(
                                        children: [
                                          Icon(Icons.edit,
                                              size: 14.sp,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primary),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 5.w),
                                              child: CustomText("Edit",
                                                  style: AppStyle
                                                      .roboto12Primaryw400))
                                        ],
                                      ),
                                    ),
                                  ])
                            ])),
                        Container(
                          width: 200.w,
                          padding: EdgeInsets.only(
                            top: 18.h,
                          ),
                          child: PinCodeTextField(
                            appContext: context,
                            controller: controller.otpController.value,
                            length: 4,
                            blinkWhenObscuring: true,
                            autoFocus: true,
                            autoDisposeControllers: false,
                            enablePinAutofill: true,
                            obscureText: false,
                            obscuringCharacter: '*',
                            keyboardType: TextInputType.number,
                            autoDismissKeyboard: true,
                            enableActiveFill: true,
                            showCursor: true,
                            cursorColor: Theme.of(context).colorScheme.primary,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            onChanged: (val) {
                              if (true) {
                                if (

                                    // controller.otpController.value.text
                                    //       .trim()
                                    //       .toString() ==
                                    //   controller.otpData.toString()
                                    true) {
                                  // CustomSnackBar(
                                  //     "OTP Verification Completed", "S");
                                  // controller.saveData();
                                } else {}
                              } else {}
                            },
                            // textStyle: AppStyle.montserrat13bgGrey400,
                            pinTheme: PinTheme(
                                fieldHeight: 36.h,
                                fieldWidth: 36.w,
                                shape: PinCodeFieldShape.box,
                                borderRadius: BorderRadius.circular(6),
                                selectedFillColor: Theme.of(context)
                                    .colorScheme
                                    .secondaryContainer,
                                activeFillColor: Theme.of(context)
                                    .colorScheme
                                    .secondaryContainer,
                                inactiveFillColor: Theme.of(context)
                                    .colorScheme
                                    .secondaryContainer,
                                inactiveColor: Theme.of(context)
                                    .colorScheme
                                    .outlineVariant,
                                selectedColor:
                                    Theme.of(context).colorScheme.primary,
                                activeColor:
                                    Theme.of(context).colorScheme.primary),
                          ),
                        ),
                        controller.timeCounter.value == 0
                            ? Column(
                                children: [
                                  true
                                      ? Padding(
                                          padding: EdgeInsets.only(left: 16.w),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.warning,
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .error,
                                                ),
                                                SizedBox(
                                                  width: 6.w,
                                                ),
                                                CustomText("Incorrect OTP",
                                                    style: AppStyle
                                                        .roboto12Errorw500),
                                              ]),
                                        )
                                      : Container(),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 16.w, top: 20.h),
                                    child: Row(children: [
                                      InkWell(
                                        onTap: () {
                                          controller.timeCounter.value = 30;

                                          // controller.callResendOtp();
                                          controller.startTimer();
                                        },
                                        child: Container(
                                            padding: EdgeInsets.only(
                                                left: 4.w,
                                                top: 4.h,
                                                right: 4.w,
                                                bottom: 4.h),
                                            decoration: AppDecoration
                                                .fillSecondaryContainerRounded6,
                                            child: CustomText("Resend OTP",
                                                style: AppStyle
                                                    .roboto12Secondaryw500)),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(left: 12),
                                        padding: EdgeInsets.only(
                                            left: 4.w,
                                            top: 4.h,
                                            right: 4.w,
                                            bottom: 4.h),
                                        decoration: AppDecoration
                                            .fillSecondaryContainerRounded6,
                                        child: CustomText(
                                            "Receive OTP Via Call",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.roboto12Secondaryw500),
                                      )
                                    ]),
                                  ),
                                ],
                              )
                            : Text(
                                "Resend OTP after ${controller.timeCounter.value}",
                                maxLines: null,
                                textScaler:
                                    const TextScaler.linear(Constants.factor),
                                textAlign: TextAlign.left,
                                style: AppStyle.roboto12Primaryw500.copyWith(
                                    color:
                                        Theme.of(context).colorScheme.outline)),
                        const Spacer(),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 16.h),
                          child: CustomElevatedButton(
                            text: "Verify",
                            onTap: () {
                              if (controller.otpController.value.text.length ==
                                  4) {
                                controller.verfyOtpApi();
                              } else {
                                customSnackBar("Enter 4 Digit OTP");
                              }
                            },
                          ),
                        ),
                      ]),
                ),
              ),
            ),
    );
  }
}
