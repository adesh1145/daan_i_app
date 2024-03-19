import '../core/app_export.dart';

// ignore: must_be_immutable
class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {this.maxLength,
      this.onChanged,
      this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.width,
      this.margin,
      this.controller,
      this.focusNode,
      this.isObscureText = false,
      this.textInputAction = TextInputAction.next,
      this.textInputType = TextInputType.text,
      this.maxLines,
      this.hintText,
      this.prefix,
      this.prefixConstraints,
      this.suffix,
      this.suffixConstraints,
      this.validator,
      this.labelText,
      this.labelStyle,
      this.readOnly,
      this.onTap,
      this.capital,
      this.floatingLabelBehavior,
      this.autofocus,
      this.minLines,
      this.inputFormatters});

  bool? autofocus;

  FloatingLabelBehavior? floatingLabelBehavior;

  TextCapitalization? capital;

  Function(String)? onChanged;

  VoidCallback? onTap;

  TextFormFieldShape? shape;

  TextFormFieldPadding? padding;

  TextFormFieldVariant? variant;

  TextFormFieldFontStyle? fontStyle;

  Alignment? alignment;

  double? width;

  EdgeInsetsGeometry? margin;

  TextEditingController? controller;

  FocusNode? focusNode;

  bool? isObscureText;

  TextInputAction? textInputAction;

  TextInputType? textInputType;

  int? maxLength;

  int? maxLines;

  int? minLines;

  String? hintText;

  bool? readOnly;

  Widget? prefix;

  BoxConstraints? prefixConstraints;

  Widget? suffix;

  BoxConstraints? suffixConstraints;

  FormFieldValidator<String>? validator;

  String? labelText;

  TextFormFieldFontStyle? labelStyle;

  List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildTextFormFieldWidget(),
          )
        : _buildTextFormFieldWidget();
  }

  _buildTextFormFieldWidget() {
    return Container(
      width: width ?? double.maxFinite,
      margin: margin,
      child: TextFormField(
        onTap: onTap,
        onChanged: onChanged,
        controller: controller,
        focusNode: focusNode,
        autofocus: autofocus ?? false,
        style: _setFontStyle(),
        obscureText: isObscureText!,
        readOnly: readOnly ?? false,
        maxLength: maxLength,
        minLines: minLines ?? 1,
        textInputAction: textInputAction ?? TextInputAction.next,
        keyboardType: textInputType,
        maxLines: maxLines ?? 1,
        decoration: _buildDecoration(),
        validator: validator,
        inputFormatters: inputFormatters,
        textCapitalization: capital ?? TextCapitalization.sentences,
      ),
    );
  }

  _buildDecoration() {
    return InputDecoration(
      counterText: "",
      hintText: hintText ?? "",
      labelText: labelText ?? "",
      floatingLabelBehavior:
          floatingLabelBehavior ?? FloatingLabelBehavior.auto,
      hintStyle: _setFontStyle(),
      labelStyle: _setlebelFontStyle(),
      border: _setBorderStyle(),
      enabledBorder: _setBorderStyle(),
      focusedBorder: _setBorderStyle(),
      disabledBorder: _setBorderStyle(),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffix,
      suffixIconConstraints: BoxConstraints(
          //suffixIconConstraints
          maxHeight: 12.h),
      fillColor: _setFillColor(),
      filled: _setFilled(),
      isDense: true,
      contentPadding: _setPadding(),
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      case TextFormFieldFontStyle.MontserratSemiBold14:
        return TextStyle(
          color: ColorConstant.black,
          fontSize: 14.sp * Constants.factor,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
          height: 1.29,
        );
      case TextFormFieldFontStyle.MontserratSemiBold12:
        return TextStyle(
          color: ColorConstant.black,
          fontSize: 12.sp * Constants.factor,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
          height: 1.25,
        );
      // case TextFormFieldFontStyle.MontserratSemiBold12Bluegray400:
      //   return TextStyle(
      //     color: ColorConstant.blueGray400,
      //     fontSize: 12.sp*Constants.factor,
      //     fontFamily: 'Montserrat',
      //     fontWeight: FontWeight.w600,
      //     height: 1.25,
      //   );
      case TextFormFieldFontStyle.MontserratRegular13:
        return TextStyle(
          color: ColorConstant.bgGrey,
          fontSize: 13.sp * Constants.factor,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
          height: 1.23,
        );
      case TextFormFieldFontStyle.MontserratRegular10:
        return TextStyle(
          color: ColorConstant.textOne,
          fontSize: 10.sp * Constants.factor,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
          height: 1.30,
        );
      // case TextFormFieldFontStyle.MontserratRegular12:
      //   return TextStyle(
      //     color: ColorConstant.blueGray80002,
      //     fontSize: 12.sp,
      //     fontFamily: 'Montserrat',
      //     fontWeight: FontWeight.w400,
      //     height: 1.25,
      //   );
      // case TextFormFieldFontStyle.textFieldFontStyle:
      //   return TextStyle(
      //     color: ColorConstant.textFieldColor,
      //     fontSize: 13.sp,
      //     fontFamily: 'Montserrat',
      //     fontWeight: FontWeight.w400,
      //     height: 1.25,
      //   );
      case TextFormFieldFontStyle.MontserratRegular12Gray80003:
        return TextStyle(
          color: ColorConstant.textOne,
          fontSize: 12.sp * Constants.factor,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
          height: 1.25,
        );
      default:
        return TextStyle(
          color: ColorConstant.bgGrey,
          fontSize: 13.sp * Constants.factor,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
          height: 1.23,
        );
    }
  }

  _setlebelFontStyle() {
    switch (fontStyle) {
      case TextFormFieldFontStyle.MontserratSemiBold14:
        return TextStyle(
          color: ColorConstant.black,
          fontSize: 14.sp * Constants.factor,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
          height: 1.29,
        );
      // case TextFormFieldFontStyle.MontserratSemiBold12:
      //   return TextStyle(
      //     color: ColorConstant.black900,
      //     fontSize: 12.sp*Constants.factor,
      //     fontFamily: 'Montserrat',
      //     fontWeight: FontWeight.w600,
      //     height: 1.25,
      //   );
      // case TextFormFieldFontStyle.MontserratSemiBold12Bluegray400:
      //   return TextStyle(
      //     color: ColorConstant.blueGray400,
      //     fontSize: 12.sp*Constants.factor,
      //     fontFamily: 'Montserrat',
      //     fontWeight: FontWeight.w600,
      //     height: 1.25,
      //   );
      // case TextFormFieldFontStyle.MontserratRegular13:
      //   return TextStyle(
      //     color: ColorConstant.blueGray800,
      //     fontSize: 13.sp*Constants.factor,
      //     fontFamily: 'Montserrat',
      //     fontWeight: FontWeight.w400,
      //     height: 1.23,
      //   );
      case TextFormFieldFontStyle.Roboto10neutral60w500:
        return TextStyle(
          color: ColorConstant.neutral60,
          fontSize: 10.sp * Constants.factor,
          fontFamily: 'RobotoMedium',
          fontWeight: FontWeight.w500,
          height: 1.23,
        );
      case TextFormFieldFontStyle.MontserratRegular10:
        return TextStyle(
          color: ColorConstant.textOne,
          fontSize: 10.sp * Constants.factor,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
          height: 1.30,
        );
      case TextFormFieldFontStyle.MontserratRegular12:
        return TextStyle(
          color: ColorConstant.cta,
          fontSize: 12.sp * Constants.factor,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
          height: 1.25,
        );
      case TextFormFieldFontStyle.MontserratRegular12Gray80003:
        return TextStyle(
          color: ColorConstant.bgGrey,
          fontSize: 12.sp * Constants.factor,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
          height: 1.25,
        );
      case TextFormFieldFontStyle.Roboto10neutral900w500:
        return TextStyle(
          color: ColorConstant.neutral900,
          fontSize: 10.sp * Constants.factor,
          fontFamily: 'RobotoMedium',
          fontWeight: FontWeight.w500,
          height: 1.23,
        );
      case TextFormFieldFontStyle.Roboto10neutral900w400:
        return TextStyle(
          color: ColorConstant.neutral900,
          fontSize: 10.sp * Constants.factor,
          fontFamily: 'RobotoMedium',
          fontWeight: FontWeight.w400,
          height: 1,
        );

      default:
        return TextStyle(
          color: ColorConstant.textOne,
          fontSize: 13.sp * Constants.factor,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
          height: 1.23,
        );
    }
  }

  _setOutlineBorderRadius() {
    switch (shape) {
      default:
        return BorderRadius.circular(
          6.00.w,
        );
    }
  }

  _setBorderStyle() {
    switch (variant) {
      case TextFormFieldVariant.White:
        return OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorConstant.white,
            width: 0,
          ),
        );
      case TextFormFieldVariant.FillWhiteA700:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.OutlineGray30004_1:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.outlineStroke,
            width: 1,
          ),
        );
      case TextFormFieldVariant.FillDeeporange5001:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.FillGray10001:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.OutlineGray30004_2:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.outlineStroke,
            width: 1,
          ),
        );
      case TextFormFieldVariant.OutlineScecondaryColor:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.secondaryColor,
            width: 1,
          ),
        );

      case TextFormFieldVariant.None:
        return InputBorder.none;
      default:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.outlineStroke,
            width: 1,
          ),
        );
    }
  }

  _setFillColor() {
    switch (variant) {
      case TextFormFieldVariant.White:
        return ColorConstant.white;
      case TextFormFieldVariant.FillWhiteA700:
        return ColorConstant.white;
      case TextFormFieldVariant.OutlineGray30004_1:
        return ColorConstant.outlineStroke;
      case TextFormFieldVariant.FillDeeporange5001:
        return ColorConstant.orangeTwo;
      // case TextFormFieldVariant.FillGray10001:
      //   return ColorConstant.gray10001;
      // case TextFormFieldVariant.OutlineGray30004_2:
      //   return ColorConstant.gray10001;
      case TextFormFieldVariant.FillneutralN20:
        return ColorConstant.neutral20;
      default:
        return ColorConstant.white;
    }
  }

  _setFilled() {
    switch (variant) {
      case TextFormFieldVariant.White:
        return true;
      case TextFormFieldVariant.FillWhiteA700:
        return true;
      case TextFormFieldVariant.OutlineGray30004_1:
        return true;
      case TextFormFieldVariant.FillDeeporange5001:
        return true;
      case TextFormFieldVariant.FillGray10001:
        return true;
      case TextFormFieldVariant.OutlineGray30004_2:
        return true;
      case TextFormFieldVariant.OutlineScecondaryColor:
        return true;

      case TextFormFieldVariant.None:
        return false;
      default:
        return true;
    }
  }

  _setPadding() {
    switch (padding) {
      case TextFormFieldPadding.PaddingT16:
        return EdgeInsets.only(
          left: 16.w,
          top: 16.h,
          bottom: 16.h,
        );
      case TextFormFieldPadding.PaddingAll19:
        return EdgeInsets.all(
          19.w,
        );
      case TextFormFieldPadding.PaddingT15:
        return EdgeInsets.only(
          left: 12.w,
          top: 15.h,
          right: 12.w,
          bottom: 15.h,
        );
      case TextFormFieldPadding.PaddingLR16TB8:
        return EdgeInsets.only(
          left: 16.w,
          top: 8.h,
          right: 16.w,
          bottom: 8.h,
        );
      case TextFormFieldPadding.PaddingAll8:
        return EdgeInsets.all(
          8.w,
        );
      case TextFormFieldPadding.PaddingAll4:
        return EdgeInsets.all(
          4.w,
        );
      case TextFormFieldPadding.PaddingAll12:
        return EdgeInsets.all(
          12.w,
        );
      case TextFormFieldPadding.PaddingAll0:
        return EdgeInsets.all(
          0.w,
        );
      default:
        return EdgeInsets.all(
          16.w,
        );
    }
  }
}

enum TextFormFieldShape {
  RoundedBorder6,
}

enum TextFormFieldPadding {
  PaddingAll16,
  PaddingT16,
  PaddingAll19,
  PaddingT15,
  PaddingAll8,
  PaddingAll4,
  PaddingAll12,
  PaddingAll0,
  PaddingLR16TB8
}

enum TextFormFieldVariant {
  None,
  OutlineGray30004,
  White,
  FillWhiteA700,
  OutlineGray30004_1,
  FillDeeporange5001,
  FillGray10001,
  OutlineGray30004_2,
  OutlineScecondaryColor,
  FillneutralN20
}

enum TextFormFieldFontStyle {
  MontserratRegular13Gray60002,
  MontserratSemiBold14,
  MontserratSemiBold12,
  MontserratSemiBold12Bluegray400,
  MontserratRegular13,
  MontserratRegular10,
  NunitoSansRegular16,
  MontserratRegular12,
  textFieldFontStyle,
  MontserratRegular12Gray80003,
  Roboto10neutral60w500,
  Roboto10neutral900w500,
  Roboto10neutral900w400,
  roboto12neutral60w500
}
