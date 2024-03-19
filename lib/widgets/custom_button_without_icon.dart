import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../core/constants/constants.dart';
import '../core/utils/color_constant.dart';

class CustomButtonWithoutIcon extends StatelessWidget {
  CustomButtonWithoutIcon({
    this.shape,
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
    this.suffixWidget,
    this.rowWidget,
    //this.color
  });

  final ButtonShapeWitoutIcon? shape;

  final ButtonPadding? padding;

  final ButtonVariantWithoutIcon? variant;

  final ButtonFontStyleWithoutIcon? fontStyle;

  final Alignment? alignment;

  final EdgeInsetsGeometry? margin;

  final VoidCallback? onTap;

  final double? width;

  final double? height;

  final String? text;

  final Widget? prefixWidget;

  final Widget? suffixWidget;
  final Widget? rowWidget;
  //Color? color;

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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? SizedBox(),
          Expanded(
            flex: 19,
            child: Center(
              child: Text(
                text ?? "",
                style: _setFontStyle(),
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                textScaler: TextScaler.linear(Constants.factor),
              ),
            ),
          ), //
          Expanded(flex: 2, child: suffixWidget ?? SizedBox()),
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
              child: Text(
                text ?? "",
                style: _setFontStyle(),
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                // style: AppStyle.txtMontserratSemiBold12,
                textScaler: TextScaler.linear(Constants.factor),
              ),
            ),
          ),
          //suffixWidget ?? SizedBox(),
          // Expanded(
          //   flex: 1,
          //   child: Center(
          //     child: CustomImageView(
          //       svgPath: ImageConstant.imgArrowrightWhiteA700,
          //     ),
          //   ),
          // ),
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
      case ButtonPadding.PaddingTB20:
        return EdgeInsets.only(left: 20.w, right: 20.w);
      case ButtonPadding.PaddingTB6:
        return EdgeInsets.only(
          top: 6.h,
          bottom: 6.h,
        );
      case ButtonPadding.PaddingT7:
        return EdgeInsets.only(
          // top: 7.h,
          right: 7.w,
          bottom: 7.h,
        );
      default:
        return EdgeInsets.only(
            // left: 12.w,
            // right: 12.w,
            );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariantWithoutIcon.borderTextCta:
        return ColorConstant.white;
      case ButtonVariantWithoutIcon.borderCtafillBgOne:
        return ColorConstant.bgOne;
      case ButtonVariantWithoutIcon.FillWhiteA700:
        return ColorConstant.white;
      case ButtonVariantWithoutIcon.FillGray80001:
        return ColorConstant.bgGrey;
      case ButtonVariantWithoutIcon.CtaThree:
        return ColorConstant.cta3;

      case ButtonVariantWithoutIcon.OutlineGray30001_1:
        return ColorConstant.bgGrey;
      case ButtonVariantWithoutIcon.FillGray400:
        return ColorConstant.bgGrey;
      case ButtonVariantWithoutIcon.FillActive:
        return ColorConstant.cta;
      case ButtonVariantWithoutIcon.LightSuccess:
        return ColorConstant.lightSuccess;
      case ButtonVariantWithoutIcon.OutlineStroke:
        return ColorConstant.white;
      case ButtonVariantWithoutIcon.OutlineStrokeinputField:
        return ColorConstant.white;
      case ButtonVariantWithoutIcon.OutlineBorder:
        return ColorConstant.white;
      case ButtonVariantWithoutIcon.FillUnctive:
        return ColorConstant.ctaUnactive;
      case ButtonVariantWithoutIcon.CtaActiveBorder:
        return ColorConstant.white;
      case ButtonVariantWithoutIcon.secondaryColor:
        return ColorConstant.white;
      case ButtonVariantWithoutIcon.secondaryLightColor:
        return ColorConstant.secondaryLight;
      default:
        return ColorConstant.ctaUnactive;
    }
  }

  _setTextButtonBorder() {
    switch (variant) {
      case ButtonVariantWithoutIcon.borderTextCta:
        return BorderSide(
          color: ColorConstant.cta,
          width: 1.00.w,
        );
      case ButtonVariantWithoutIcon.White:
        return BorderSide(
          color: ColorConstant.bgGrey,
          width: 1.00.w,
        );
      case ButtonVariantWithoutIcon.FillActive:
        return BorderSide(
          color: ColorConstant.cta,
          width: 1.00,
        );
      case ButtonVariantWithoutIcon.OutlineStroke:
        return BorderSide(
          color: ColorConstant.cta,
          width: 1.00,
        );
      case ButtonVariantWithoutIcon.borderCtafillBgOne:
        return BorderSide(
          color: ColorConstant.cta,
          width: 1.00,
        );
      case ButtonVariantWithoutIcon.OutlineStrokeinputField:
        return BorderSide(
          color: ColorConstant.inputField,
          width: 1.00,
        );
      case ButtonVariantWithoutIcon.OutlineBorder:
        return BorderSide(
          color: ColorConstant.outlineStroke,
          width: 1.00,
        );
      case ButtonVariantWithoutIcon.OutlinePink700:
        return BorderSide(
          color: ColorConstant.cta,
          width: 1.00.w,
        );
      case ButtonVariantWithoutIcon.OutlineGray30001_1:
        return BorderSide(
          color: ColorConstant.cta,
          width: 1.00.w,
        );
      case ButtonVariantWithoutIcon.CtaActiveBorder:
        return BorderSide(
          color: ColorConstant.cta,
          width: 1.00.w,
        );
      case ButtonVariantWithoutIcon.secondaryColor:
        return BorderSide(
          color: ColorConstant.secondaryColor,
          width: 1.00.w,
        );
      case ButtonVariantWithoutIcon.secondaryLightColor:
        return BorderSide(
          color: ColorConstant.secondaryColor,
          width: 1.00.w,
        );
      case ButtonVariantWithoutIcon.FillGray80001:
      case ButtonVariantWithoutIcon.FillWhiteA700:
      case ButtonVariantWithoutIcon.FillGray400:
      case ButtonVariantWithoutIcon.FillActive:
      case ButtonVariantWithoutIcon.FillUnctive:
        return null;
      default:
        return BorderSide(
          color: ColorConstant.ctaUnactive,
          width: 1.00.w,
        );
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShapeWitoutIcon.RoundedBorder16:
        return BorderRadius.circular(
          16.00.w,
        );
      case ButtonShapeWitoutIcon.RoundedBorder3:
        return BorderRadius.circular(
          3.00.w,
        );
      case ButtonShapeWitoutIcon.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          6.00.w,
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyleWithoutIcon.MontserratRegular13:
        return TextStyle(
          color: ColorConstant.white,
          fontSize: 13.sp,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
          height: 1.23.h,
        );
      case ButtonFontStyleWithoutIcon.MontserratMedium14:
        return TextStyle(
          color: ColorConstant.white,
          fontSize: 14.sp,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500,
          height: 1.29.h,
        );
      case ButtonFontStyleWithoutIcon.MontserratSemiBold12:
        return TextStyle(
          color: ColorConstant.white,
          fontSize: 12.sp,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
          height: 1.25.h,
        );
      case ButtonFontStyleWithoutIcon.MontserratSemiBold10:
        return TextStyle(
          color: ColorConstant.white,
          fontSize: 10.sp,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
          height: 1.20.h,
        );
      case ButtonFontStyleWithoutIcon.MontserratRegular10:
        return TextStyle(
          color: ColorConstant.white,
          fontSize: 10.sp,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
          height: 1.30.h,
        );
      case ButtonFontStyleWithoutIcon.Montserrat12textOne600:
        return TextStyle(
          color: ColorConstant.textOne,
          fontSize: 12.sp,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
          height: 1.25,
        );
      case ButtonFontStyleWithoutIcon.MontserratSemiBold12WhiteA700:
        return TextStyle(
          color: ColorConstant.white,
          fontSize: 12.sp,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
          height: 1.25.h,
        );
      case ButtonFontStyleWithoutIcon.MontserratSemiBold12Cta600:
        return TextStyle(
          color: ColorConstant.cta,
          fontSize: 12.sp,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
          height: 1.25,
        );

      case ButtonFontStyleWithoutIcon.MontserratTextfour12w600:
        return TextStyle(
          color: ColorConstant.textOne,
          fontSize: 12.sp,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
          height: 1.25,
        );
      case ButtonFontStyleWithoutIcon.CtaActiveBorder:
        return TextStyle(
          color: ColorConstant.cta,
          fontSize: 12.sp,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
          height: 1.25.h,
        );
      case ButtonFontStyleWithoutIcon.Montserrat13textOne500:
        return TextStyle(
          color: ColorConstant.textOne,
          fontSize: 13.sp,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500,
          height: 1.25.h,
        );
      case ButtonFontStyleWithoutIcon.Montserrat12cta600:
        return TextStyle(
          color: ColorConstant.cta,
          fontSize: 12.sp,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
          height: 1.25.h,
        );
      case ButtonFontStyleWithoutIcon.MontserratSecondaryColor12w600:
        return TextStyle(
          color: ColorConstant.secondaryColor,
          fontSize: 12.sp,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
          height: 1.25.h,
        );
      case ButtonFontStyleWithoutIcon.MontserratTextOne12w600:
        return TextStyle(
          color: ColorConstant.textOne,
          fontSize: 12.sp,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
          height: 1.25,
        );

      case ButtonFontStyleWithoutIcon.RobotoMed12pri300w500:
        return TextStyle(
          color: ColorConstant.primary300,
          fontSize: 12.sp,
          fontFamily: 'RobotoMedium',
          fontWeight: FontWeight.w500,
          height: 1.25,
        );
      case ButtonFontStyleWithoutIcon.RobotoMed14pri300w500:
        return TextStyle(
          color: ColorConstant.primary300,
          fontSize: 14.sp,
          fontFamily: 'RobotoMedium',
          fontWeight: FontWeight.w500,
          height: 1.25,
        );
      case ButtonFontStyleWithoutIcon.RobotoMed12whitew500:
        return TextStyle(
          color: ColorConstant.white,
          fontSize: 12.sp,
          fontFamily: 'RobotoMedium',
          fontWeight: FontWeight.w500,
          height: 1.25,
        );
      case ButtonFontStyleWithoutIcon.RobotoMed14whitew500:
        return TextStyle(
          color: ColorConstant.white,
          fontSize: 14.sp,
          fontFamily: 'RobotoMedium',
          fontWeight: FontWeight.w500,
          height: 1.25,
        );
      default:
        return TextStyle(
          color: ColorConstant.white,
          fontSize: 12.sp,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
          height: 1.25.h,
        );
    }
  }
}

enum ButtonShapeWitoutIcon {
  Square,
  RoundedBorder6,
  RoundedBorder16,
  RoundedBorder3,
}

enum ButtonPadding {
  PaddingT12,
  PaddingAll10,
  PaddingTB6,
  PaddingTB20,
  PaddingT7,
}

enum ButtonVariantWithoutIcon {
  red,
  White,
  FillGray80001,
  OutlinePink700,
  FillWhiteA700,
  OutlineGray30001_1,
  FillGray400,
  FillActive,
  FillUnctive,
  LightSuccess,
  OutlineStroke,
  OutlineStrokeinputField,
  OutlineBorder,
  CtaActiveBorder,
  CtaThree,
  borderTextCta,
  borderCtafillBgOne,

  /// created by  manisha
  secondaryColor,
  secondaryLightColor
}

enum ButtonFontStyleWithoutIcon {
  MontserratSemiBold12Cta600,
  MontserratTextfour12w600,
  MontserratRegular12,
  MontserratRegular13,
  MontserratMedium14,
  MontserratSemiBold12,
  MontserratSemiBold10,
  MontserratRegular10,
  MontserratSemiBold12WhiteA700,
  Montserrat12textOne600,
  Montserrat13textOne500,
  CtaActiveBorder,
  Montserrat12cta600,
  MontserratSecondaryColor12w600,
  borderTextCta,
  MontserratTextOne12w600,
  RobotoMed12pri300w500,
  RobotoMed14pri300w500,
  // RobotoReg12whitew500,
  RobotoMed14whitew500,
  RobotoMed12whitew500
}
