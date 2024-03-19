import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../core/constants/constants.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget});

  final ButtonShape? shape;

  final ButtonPadding? padding;

  final ButtonVariantBack? variant;

  final ButtonFontStyleBack? fontStyle;

  final Alignment? alignment;

  final EdgeInsetsGeometry? margin;

  final VoidCallback? onTap;

  final double? width;

  final double? height;

  final String? text;

  final Widget? prefixWidget;

  final Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonWithOrWithoutIcon(),
      ),
    );
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          prefixWidget ?? SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          suffixWidget ?? SizedBox(),
        ],
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            flex: 1,
            child: Center(
              child: SvgPicture.asset(
                ImageConstant.backArrow,
                height: height,
                width: width,

                // color: ColorConstant.bgGrey,
              ),
            ),
          ),
          Expanded(
            flex: 10,
            child: Center(
              child: Text(
                text ?? "",
                style: _setFontStyle(),
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.right,
                // style: AppStyle.txtMontserratSemiBold12,
                textScaler: TextScaler.linear(Constants.factor),
              ),
            ),
          ),
        ],
      );
    }
  }

  _buildTextButtonStyle() {
    return TextButton.styleFrom(
      fixedSize: Size(
        width ?? double.maxFinite,
        height ?? 40.h,
      ),
      padding: _setPadding(),
      backgroundColor: _setColor(),
      side: _setTextButtonBorder(),
      shape: RoundedRectangleBorder(
        borderRadius: _setBorderRadius(),
      ),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll10:
        return EdgeInsets.all(
          10.h,
        );
      case ButtonPadding.PaddingT7:
        return EdgeInsets.only(
          top: 7.h,
          right: 7.w,
          bottom: 7.h,
        );
      default:
        return EdgeInsets.only(
          left: 12.w,
          right: 12.w,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariantBack.White:
        return ColorConstant.white;
      case ButtonVariantBack.OutlinePink700:
        return ColorConstant.white;
      case ButtonVariantBack.FillWhiteA700:
        return ColorConstant.white;
      case ButtonVariantBack.FillPink700:
        return ColorConstant.cta;
      case ButtonVariantBack.FillSecondaryColor:
        return ColorConstant.secondaryColor;
      default:
        return ColorConstant.white;
    }
  }

  _setTextButtonBorder() {
    switch (variant) {
      case ButtonVariantBack.White:
        return BorderSide(
          color: ColorConstant.secondaryColor,
          width: 1.00.w,
        );
      case ButtonVariantBack.OutlinePink700:
        return BorderSide(
          color: ColorConstant.cta,
          width: 1.00.w,
        );
      case ButtonVariantBack.FillSecondaryColor:
        return BorderSide(
          color: ColorConstant.secondaryColor,
          width: 1.00.w,
        );
      default:
        return BorderSide(
          color: ColorConstant.outlineStroke,
          width: 1.00.w,
        );
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.RoundedBorder16:
        return BorderRadius.circular(
          16.00.w,
        );
      case ButtonShape.RoundedBorder3:
        return BorderRadius.circular(
          3.00.w,
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          6.00.w,
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyleBack.MontserratRegular13:
        return TextStyle(
          color: ColorConstant.textOne,
          fontSize: 13.sp,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
          height: 1.23.h,
        );
      case ButtonFontStyleBack.MontserratMedium14:
        return TextStyle(
          color: ColorConstant.white,
          fontSize: 14.sp,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500,
          height: 1.29.h,
        );
      case ButtonFontStyleBack.MontserratSemiBold12:
        return TextStyle(
          color: ColorConstant.bgGrey,
          fontSize: 12.sp,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
          height: 1.25.h,
        );
      case ButtonFontStyleBack.Montserrat12cta600:
        return TextStyle(
          color: ColorConstant.cta,
          fontSize: 12.sp,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
          height: 1.25.h,
        );
      case ButtonFontStyleBack.Montserrat12white600:
        return TextStyle(
          color: ColorConstant.white,
          fontSize: 12.sp,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
          height: 1.25.h,
        );
      // case ButtonFontStyleBack.MontserratSemiBold10:
      //   return TextStyle(
      //     color: ColorConstant.gray80001,
      //     fontSize: 10.sp,
      //     fontFamily: 'Montserrat',
      //     fontWeight: FontWeight.w600,
      //     height: 1.20.h,
      //   );
      // case ButtonFontStyleBack.MontserratRegular10:
      //   return TextStyle(
      //     color: ColorConstant.gray80001,
      //     fontSize: 10.sp,
      //     fontFamily: 'Montserrat',
      //     fontWeight: FontWeight.w400,
      //     height: 1.30.h,
      //   );
      case ButtonFontStyleBack.MontserratSemiBold12WhiteA700:
        return TextStyle(
          color: ColorConstant.white,
          fontSize: 12.sp,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
          height: 1.25.h,
        );
      default:
        return TextStyle(
          color: ColorConstant.bgGrey,
          fontSize: 12.sp,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder6,
  RoundedBorder16,
  RoundedBorder3,
}

enum ButtonPadding {
  PaddingT12,
  PaddingAll10,
  PaddingT7,
}

enum ButtonVariantBack {
  OutlineGray30001,
  White,
  FillGray80001,
  OutlinePink700,
  FillWhiteA700,
  OutlineGray30001_1,
  FillGray400,
  FillPink700,
  FillSecondaryColor,
}

enum ButtonFontStyleBack {
  MontserratRegular12,
  MontserratRegular13,
  MontserratMedium14,
  MontserratSemiBold12,
  // MontserratSemiBold10,
  MontserratRegular10,
  Montserrat12cta600,
  Montserrat12white600,
  MontserratSemiBold12WhiteA700,
}
