import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../core/constants/constants.dart';
import '../core/utils/image_constant.dart';
import '../theme/app_style.dart';
import 'custom_image_view.dart';

class NoInternet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 16.w, right: 16.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomImageView(
              svgPath: ImageConstant.noDataFound,
              height: 90.w,
              width: 90.w,
              radius: BorderRadius.circular(68.w),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16.h),
              child: Text(
                "This is unexpected...".tr,
                textScaler: TextScaler.linear(Constants.factor),
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.lato14textOne800,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.h),
              child: Text(
                "Something went wrong, Don't worry, we're already on it. Meanwhile, you can retry now or check back in a bit",
                textScaler: TextScaler.linear(Constants.factor),
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: AppStyle.montserrat12textOne400,
              ),
            ),
          ],
        ));
  }
}
