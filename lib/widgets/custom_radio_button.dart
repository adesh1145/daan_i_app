import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/utils/color_constant.dart';

// ignore: must_be_immutable
class CustomRadioButton extends StatelessWidget {
  CustomRadioButton(
      {this.fontStyle,
      this.activeColor,
      this.fillColor,
      this.alignment,
      this.onChange,
      this.isRightCheck = false,
      this.iconSize,
      this.iconScale,
      this.value,
      this.groupValue,
      this.text,
      this.width,
      this.margin});

  RadioFontStyle? fontStyle;

  Alignment? alignment;

  Function(String)? onChange;

  bool? isRightCheck;

  double? iconSize;
  double? iconScale;

  String? value;

  String? groupValue;

  String? text;

  double? width;

  Color? activeColor;

  EdgeInsetsGeometry? margin;

  MaterialStateProperty<Color?>? fillColor;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildRadioButtonWidget(),
          )
        : _buildRadioButtonWidget();
  }

  _buildRadioButtonWidget() {
    return InkWell(
      onTap: () {
        onChange!(value!);
      },
      child: Container(
        width: width,
        margin: margin ?? EdgeInsets.zero,
        child: isRightCheck! ? getRightSideRadio() : getLeftSideRadio(),
      ),
    );
  }

  Widget getRightSideRadio() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 12.w, top: 17.h, bottom: 17.h),
          child: getTextWidget(),
        ),
        Padding(
          padding: EdgeInsets.only(right: 12.w, top: 17.h, bottom: 17.h),
          child: getRadioWidget(),
        ),
      ],
    );
  }

  Widget getLeftSideRadio() {
    return Row(
      children: [
        getRadioWidget(),
        Padding(
          padding: EdgeInsets.only(
            left: 8.w,
          ),
          child: getTextWidget(),
        ),
      ],
    );
  }

  Widget getTextWidget() {
    return Text(
      text ?? "",
      textAlign: TextAlign.center,
      style: _setFontStyle(),
    );
  }

  Widget getRadioWidget() {
    return SizedBox(
      height: iconSize,
      width: iconSize,
      child: Transform.scale(
        scale: iconScale ?? 1,
        child: Radio<String>(
          value: value ?? "",
          groupValue: groupValue,
          fillColor: fillColor,
          activeColor: activeColor ?? ColorConstant.transparent,
          onChanged: (value) {
            onChange!(value!);
          },
          visualDensity: VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
        ),
      ),
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      case RadioFontStyle.RobotoMed14neu900w500:
        return TextStyle(
          color: ColorConstant.neutral900,
          fontSize: 14.sp,
          fontFamily: 'RobotoMedium',
          fontWeight: FontWeight.w500,
          height: 1.23.h,
        );
      case RadioFontStyle.RobotoMed12neu200w400:
        return TextStyle(
          color: ColorConstant.neutral200,
          fontSize: 12.sp,
          fontFamily: 'RobotoMedium',
          fontWeight: FontWeight.w400,
          height: 1.23.h,
        );
      default:
        return TextStyle(
          color: ColorConstant.textOne,
          fontSize: 13.sp,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500,
          height: 1.23.h,
        );
    }
  }
}

enum RadioFontStyle {
  MontserratMedium13,
  MontserratRegular12,
  RobotoMed14neu900w500,
  RobotoMed12neu200w400,
}
