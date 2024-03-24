import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/constants.dart';
import '../../core/utils/image_constant.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import 'custom_image_view.dart';

// ignore: must_be_immutable
class CustomContainerDashboard extends StatelessWidget {
  CustomContainerDashboard({
    this.title,
    this.subtitle,
    this.onTap,
    this.icon,
    Key? key,
  }) : super(key: key);

  String? title;
  String? subtitle;
  VoidCallback? onTap;
  String? icon;
  @override
  Widget build(BuildContext context) {
    return icon != null
        ? InkWell(
            onTap: onTap,
            child: Container(
              width: double.maxFinite,
              child: Container(
                padding: EdgeInsets.only(
                  left: 15.w,
                  top: 11.h,
                  right: 15.w,
                  bottom: 11.h,
                ),
                // decoration: AppDecoration.filledInputField.copyWith(
                //   borderRadius: BorderRadiusStyle.roundedBorder6,
                // ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          title!,
                          textScaler: TextScaler.linear(Constants.factor),
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.montserrat12textOne400,
                        ),
                        CustomImageView(
                            svgPath: icon ?? ImageConstant.ambulance),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 9.h,
                      ),
                      child: Text(
                        subtitle!,
                        textScaler: TextScaler.linear(Constants.factor),
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.lato14Error600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        : InkWell(
            onTap: onTap,
            child: Container(
              padding: EdgeInsets.only(
                left: 16.w,
                top: 12.h,
                right: 16.w,
                bottom: 12.h,
              ),
              // decoration: AppDecoration.filledInputField.copyWith(
              //   borderRadius: BorderRadiusStyle.roundedBorder6,
              // ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    title!,
                    textScaler: TextScaler.linear(Constants.factor),
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.montserrat12textOne400,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 10.h,
                    ),
                    child: Text(
                      subtitle!,
                      textScaler: TextScaler.linear(Constants.factor),
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.lato14textOne600,
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}
