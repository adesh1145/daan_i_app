import 'package:flutter/cupertino.dart';
import '../core/app_export.dart';
import '../theme/app_decoration.dart';
import '../theme/app_style.dart';
import 'custom_button_bottom.dart';
import 'custom_image_view.dart';

datePickerBottomSheets(
    {String? heading,
    String? buttonText,
    CupertinoDatePickerMode? mode,
    DatePickerDateOrder? dateOrder,
    DateTime? initialDateTime,
    DateTime? maximumDate,
    DateTime? minimumDate,
    int? minimumYear,
    int? maximumYear,
    void Function(DateTime)? onChanged}) async {
  Rx<DateTime>? dateTime = DateTime(1).obs;
  return await Get.bottomSheet(
    StatefulBuilder(builder: (context, setState) {
      return Scaffold(
        backgroundColor: ColorConstant.white.withOpacity(0),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              InkWell(
                onTap: () => Get.back(),
                child: Padding(
                  padding: EdgeInsets.only(right: 20.w, bottom: 8.h),
                  child: CustomImageView(
                    svgPath: ImageConstant.close,
                    height: 16.h,
                    width: 16.w,
                  ),
                ),
              ),
              Container(
                width: double.maxFinite,
                child: Container(
                  padding: EdgeInsets.only(
                      left: 16.w, top: 16.h, right: 16.w, bottom: 16.h),
                  decoration: AppDecoration.fillWhite.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL20,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        child: Padding(
                          padding: EdgeInsets.only(top: 2.h, bottom: 10.h),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              heading ?? "Please Pass Heading Param",
                              textScaler: TextScaler.linear(Constants.factor),
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.lato14colorHeading800,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 190.h,
                        child: CupertinoTheme(
                            data: CupertinoThemeData(
                              textTheme: CupertinoTextThemeData(
                                  dateTimePickerTextStyle:
                                      AppStyle.montserrat13textOne500),
                            ),
                            child: CupertinoDatePicker(
                              mode: mode ?? CupertinoDatePickerMode.dateAndTime,
                              dateOrder: DatePickerDateOrder.dmy,
                              initialDateTime:
                                  initialDateTime ?? DateTime.now(),
                              maximumDate: maximumDate,
                              minimumDate: minimumDate,
                              onDateTimeChanged: (value) {
                                dateTime.value = value;
                                onChanged == null ? null : onChanged(value);
                              },
                              maximumYear: maximumYear,
                              minimumYear: minimumYear ?? 1900,
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          decoration: AppDecoration.fillWhite,
          child: Padding(
            padding: EdgeInsets.only(right: 16.w, left: 16.w, bottom: 16.h),
            child: Padding(
              padding: EdgeInsets.only(left: 4.w, top: 16.h, bottom: 10.h),
              child: CustomButtonBottom(
                onTap: () => Get.back(
                    result: dateTime.value.year != 1
                        ? dateTime.value
                        : DateTime.now()),
                fontStyle: ButtonFontStyle.MontserratSemiBold12,
                variant: ButtonVariant.FillActive,
                text: buttonText,
              ),
            ),
          ),
        ),
      );
    }),
    // backgroundColor: Colors.white,
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.w),
    ),
  );
}
