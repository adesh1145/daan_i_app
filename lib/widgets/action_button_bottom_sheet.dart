import '../core/app_export.dart';

class ActionButtonBottomSheet extends GetxController {
  ActionButtonBottomSheet(
      {controller,
      String? heading,
      TextStyle? headingStyle,
      String? subHeading,
      required Widget? img,
      String? leftBtnText,
      String? rightBtnTxt,
      isRightButtonActionButton = true,
      VoidCallback? ontLeftBtnTap,
      VoidCallback? onBackBtnTap,
      VoidCallback? ontRightBtnTap}) {
    if (Get.isBottomSheetOpen == false) {
      Get.bottomSheet(
        StatefulBuilder(builder: (context, setState) {
          return PopScope(
            canPop: false,
            onPopInvoked: (didPop) {
              if (didPop) return;
              onBackBtnTap == null ? Get.back() : onBackBtnTap();
            },
            child: Scaffold(
              backgroundColor: ColorConstant.white.withOpacity(0),
              body: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    // height: 200.h,
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.background,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.w),
                            topRight: Radius.circular(20.w))),

                    padding: EdgeInsets.only(
                        top: 35.h, left: 16.w, right: 16.w, bottom: 16.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        img ?? Container(),
                        Padding(
                          padding: EdgeInsets.only(top: 20.h),
                          child: Text(
                            heading.toString(),
                            textScaler: customTextScaler,
                            textAlign: TextAlign.left,
                            style: headingStyle ?? AppStyle.roboto20wPrimary900,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: 8.h, left: 20.w, right: 20.w),
                          child: Text(
                            subHeading.toString(),
                            textScaler: customTextScaler,
                            textAlign: TextAlign.center,
                            style: AppStyle.roboto12w500,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 40.h),
                          child:
                           Row(
                            children: [
                              leftBtnText == null
                                  ? Container()
                                  : Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.only(right: 6.w),
                                        child: isRightButtonActionButton ==
                                                false
                                            ? CustomElevatedButton(
                                                text: leftBtnText.toString(),
                                                onTap: ontLeftBtnTap ??
                                                    () {
                                                      Get.back();
                                                    },
                                              )
                                            : CustomOutlinedButton(
                                                backgroundColor:
                                                    Theme.of(Get.context!)
                                                        .colorScheme
                                                        .background,
                                                textStyle:
                                                    AppStyle.roboto16w500,
                                                text: leftBtnText.toString(),
                                                onTap: ontLeftBtnTap ??
                                                    () {
                                                      Get.back();
                                                    },
                                              ),
                                      ),
                                    ),
                              rightBtnTxt == null
                                  ? Container()
                                  : Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 6.w),
                                        child: isRightButtonActionButton
                                            ? CustomElevatedButton(
                                                text: rightBtnTxt.toString(),
                                                onTap: ontRightBtnTap ??
                                                    () {
                                                      Get.back();
                                                    },
                                              )
                                            : CustomOutlinedButton(
                                                backgroundColor:
                                                    Theme.of(Get.context!)
                                                        .colorScheme
                                                        .background,
                                                textStyle:
                                                    AppStyle.roboto16w500,
                                                text: rightBtnTxt.toString(),
                                                onTap: ontRightBtnTap ??
                                                    () {
                                                      Get.back();
                                                    },
                                              ),
                                      ),
                                    )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }),
        // backgroundColor: Colors.white,
        elevation: 0,
        // isScrollControlled: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.w), topRight: Radius.circular(20.w)),
        ),
      );
    }
  }
}
