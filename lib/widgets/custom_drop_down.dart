// // ignore_for_file: constant_identifier_names, non_constant_identifier_names

// import '../../core/app_export.dart';
// import '../../core/constants/constants.dart';
// import '../../core/utils/color_constant.dart';

// // ignore: must_be_immutable
// class CustomDropDown extends StatelessWidget {
//   CustomDropDown(
//       {super.key,
//       this.shape,
//       this.onPressed,
//       this.onChanged,
//       this.onSelect,
//       this.padding,
//       this.variant,
//       this.fontStyle,
//       this.items,
//       this.alignment,
//       this.width,
//       this.height,
//       this.margin,
//       this.focusNode,
//       this.contentPadding,
//       this.hintText,
//       this.labelText,
//       this.prefix,
//       this.prefixConstraints,
//       this.suffix,
//       this.value,
//       this.suffixConstraints,
//       this.hintStyle,
//       this.itemsList,
//       this.context});

//   BuildContext? context;

//   DropDownViewShape? shape;

//   VoidCallback? onPressed;

//   Function(dynamic)? onChanged;
//   Function(dynamic)? onSelect;

//   DropDownViewPadding? padding;

//   DropDownViewVariant? variant;

//   DropDownViewFontStyle? fontStyle;
//   DropDownViewHintTextStyle? hintStyle;

//   Alignment? alignment;

//   double? width;
//   double? height;
//   dynamic value;
//   EdgeInsetsGeometry? contentPadding;
//   EdgeInsetsGeometry? margin;

//   FocusNode? focusNode;

//   String? hintText;
//   String? labelText;

//   Widget? prefix;

//   BoxConstraints? prefixConstraints;
//   Widget? suffix;
//   BoxConstraints? suffixConstraints;
//   List<DropdownMenuItem<dynamic>>? items;
//   List<CustomDropdownMenuItem>? itemsList;
//   RxString searchValue = "".obs;
//   // GlobalKey _TextFormFieldKey = GlobalKey();
//   @override
//   Widget build(BuildContext context) {
//     return Align(
//       alignment: alignment ?? Alignment.center,
//       child: _buildDropDownViewWidget(context),
//     );
//   }

//   RxBool isDropDownVisible = false.obs;
//   _buildDropDownViewWidget(BuildContext context) {
//     return Obx(() => Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Container(
//               width: width ?? double.maxFinite,
//               height: height,
//               margin: margin,
//               child: TextFormField(
//                 // key: _TextFormFieldKey,

//                 onChanged: (value) {
//                   searchValue.value = value;
//                   isDropDownVisible.value = true;
//                 },

//                 onTap: () {
//                   isDropDownVisible.value
//                       ? isDropDownVisible.value = false
//                       : isDropDownVisible.value = true;
//                   onPressed == null ? null : onPressed!;
//                 },
//                 focusNode: focusNode,
//                 style: _setFontStyle(context),

//                 decoration: _buildDecoration(context),
//               ),
//             ),
//             Visibility(
//               visible: isDropDownVisible.value,
//               child: Card(
//                 elevation: 5,
//                 child: Container(
//                   padding: EdgeInsets.only(
//                       top: 10.h, bottom: 10.h, left: 10.w, right: 10.w),
//                   // color: ColorConstant.white,
//                   height: (itemsList == null ? 0 : itemsList!.length) < 10
//                       ? null
//                       : 300.h,
//                   child: ListView.builder(
//                     shrinkWrap: true,
//                     itemCount: itemsList == null ? 0 : itemsList!.length,
//                     itemBuilder: (context, index) {
//                       return Obx(
//                         () => Visibility(
//                           visible: searchValue.value == ""
//                               ? true
//                               : itemsList![index]
//                                   .value
//                                   .toString()
//                                   .toLowerCase()
//                                   .contains(searchValue.value.toLowerCase()),
//                           child: InkWell(
//                               onTap: () {
//                                 onSelect == null
//                                     ? null
//                                     : onSelect!(itemsList![index].Id);
//                                 isDropDownVisible.value
//                                     ? isDropDownVisible.value = false
//                                     : isDropDownVisible.value = true;
//                               },
//                               child: Text(itemsList![index].value)),
//                         ),
//                       );
//                     },
//                   ),
//                 ),
//               ),
//             )
//           ],
//         ));
//   }

//   InputDecoration _buildDecoration(BuildContext context) {
//     return InputDecoration(
//       hintText: hintText ?? "",
//       labelText: labelText ?? "",
//       hintStyle: _setHintStyle(context),
//       border: _setBorderStyle(context),
//       enabledBorder: _setBorderStyle(context),
//       focusedBorder: _setBorderStyle(context),
//       disabledBorder: _setBorderStyle(context),
//       prefixIcon: prefix,
//       prefixIconConstraints: prefixConstraints,
//       suffixIcon: suffix,
//       suffixIconConstraints: suffixConstraints,
//       fillColor: _setFillColor(context),
//       filled: _setFilled(context),
//       isDense: true,
//       contentPadding: contentPadding ??
//           EdgeInsets.only(left: 16.w, top: 12.h, bottom: 12.h, right: 16.w),
//     );
//   }

//   TextStyle _setFontStyle(BuildContext context) {
//     switch (fontStyle) {
//       case DropDownViewFontStyle.PoppinsReg10blackw500:
//         return TextStyle(
//           color: ColorConstant.textOne,
//           fontSize: 10.sp * Constants.factor,
//           fontFamily: 'RobotoRegular',
//           fontWeight: FontWeight.w500,
//         );
//       case DropDownViewFontStyle.PoppinsReg12blackw500:
//         return TextStyle(
//           color: ColorConstant.textOne,
//           fontSize: 12.sp * Constants.factor,
//           fontFamily: 'RobotoRegular',
//           fontWeight: FontWeight.w500,
//         );
//       case DropDownViewFontStyle.PoppinsReg14blackw500:
//         return TextStyle(
//           color: ColorConstant.textOne,
//           fontSize: 14.sp * Constants.factor,
//           fontFamily: 'RobotoRegular',
//           fontWeight: FontWeight.w500,
//         );

//       default:
//         return TextStyle(
//           color: ColorConstant.black,
//           fontSize: 10.sp * Constants.factor,
//           fontFamily: 'RobotoRegular',
//           fontWeight: FontWeight.w500,
//         );
//     }
//   }

//   TextStyle _setHintStyle(BuildContext context) {
//     switch (hintStyle) {
//       case DropDownViewHintTextStyle.PoppinsReg10hintColorw500:
//         return TextStyle(
//           color: ColorConstant.hintColor,
//           fontSize: 10.sp * Constants.factor,
//           fontFamily: 'RobotoRegular',
//           fontWeight: FontWeight.w500,
//         );
//       default:
//         return TextStyle(
//           color: ColorConstant.hintColor,
//           fontSize: 10.sp * Constants.factor,
//           fontFamily: 'RobotoRegular',
//           fontWeight: FontWeight.w500,
//         );
//     }
//   }

//   BorderRadius _setOutlineBorderRadius(BuildContext context) {
//     switch (shape) {
//       case DropDownViewShape.RoundedBorder5:
//         return BorderRadius.circular(
//           5.00.r,
//         );
//       default:
//         return BorderRadius.circular(
//           5.00.r,
//         );
//     }
//   }

//   OutlineInputBorder _setBorderStyle(BuildContext context) {
//     switch (variant) {
//       // case SearchViewVariant.BorderOutneStroke:
//       //   return OutlineInputBorder(
//       //     borderRadius: _setOutlineBorderRadius(context),
//       //     borderSide: BorderSide(color: ColorConstant.OutlineStroke),
//       //   );
//       default:
//         return OutlineInputBorder(
//           borderRadius: _setOutlineBorderRadius(context),
//           borderSide: const BorderSide(color: ColorConstant.hintColor),
//         );
//     }
//   }

//   Color _setFillColor(BuildContext context) {
//     switch (variant) {
//       case DropDownViewVariant.fillWhite:
//         return ColorConstant.white;
//       default:
//         return ColorConstant.white;
//     }
//   }

//   _setFilled(BuildContext context) {
//     switch (variant) {
//       // case SearchViewVariant.BorderOutneStroke:
//       //   return true;
//       // case SearchViewVariant.None:
//       //   return false;
//       default:
//         return true;
//     }
//   }
// }

// enum DropDownViewShape {
//   RoundedBorder5,
// }

// enum DropDownViewPadding {
//   None,
// }

// enum DropDownViewVariant { fillWhite, None }

// enum DropDownViewHintTextStyle {
//   None,
//   PoppinsReg10hintColorw500,
// }

// enum DropDownViewFontStyle {
//   None,
//   PoppinsReg10blackw500,
//   PoppinsReg12blackw500,
//   PoppinsReg14blackw500,
// }

// class CustomDropdownMenuItem {
//   String value;
//   dynamic Id;
//   CustomDropdownMenuItem({required this.value, required this.Id});
// }

// ignore_for_file: constant_identifier_names

import '../core/app_export.dart';

// ignore: must_be_immutable
class CustomDropDown extends StatelessWidget {
  CustomDropDown(
      {super.key,
      this.shape,
      this.onPressed,
      this.onChanged,
      this.padding,
      this.variant,
      this.fontStyle,
      this.items,
      this.alignment,
      this.width,
      this.height,
      this.margin,
      this.focusNode,
      this.contentPadding,
      this.hintText,
      this.prefix,
      this.icons,
      this.prefixConstraints,
      this.suffix,
      this.value,
      this.suffixConstraints,
      this.hintStyle,
      this.context});

  BuildContext? context;

  DropDownViewShape? shape;

  VoidCallback? onPressed;

  Function(dynamic)? onChanged;

  DropDownViewPadding? padding;

  DropDownViewVariant? variant;

  DropDownViewFontStyle? fontStyle;
  DropDownViewHintTextStyle? hintStyle;

  Alignment? alignment;

  double? width;
  double? height;
  dynamic value;
  EdgeInsetsGeometry? contentPadding;
  EdgeInsetsGeometry? margin;

  FocusNode? focusNode;

  String? hintText;

  Widget? prefix;
  Widget? icons;

  BoxConstraints? prefixConstraints;
  Widget? suffix;
  BoxConstraints? suffixConstraints;
  List<DropdownMenuItem<dynamic>>? items;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment ?? Alignment.center,
      child: _buildDropDownViewWidget(context),
    );
  }

  _buildDropDownViewWidget(BuildContext context) {
    return Container(
      width: width ?? double.maxFinite,
      height: height,
      margin: margin,
      child: ButtonTheme(
        alignedDropdown: true,
        child: DropdownButtonFormField(
          items: items,
          onChanged: onChanged,
          onTap: onPressed,
          focusNode: focusNode,
          style: _setFontStyle(context),
          decoration: _buildDecoration(context),
          icon: icons,
          value: value,
          menuMaxHeight: 400.h,
        ),
      ),
    );
  }

  InputDecoration _buildDecoration(BuildContext context) {
    return InputDecoration(
      hintText: hintText ?? "",
      hintStyle: _setHintStyle(context),
      border: _setBorderStyle(context),
      enabledBorder: _setBorderStyle(context),
      focusedBorder: _setBorderStyle(context),
      disabledBorder: _setBorderStyle(context),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffix,
      suffixIconConstraints: suffixConstraints,
      fillColor: _setFillColor(context),
      filled: _setFilled(context),
      isDense: true,
      contentPadding: contentPadding ??
          EdgeInsets.only(left: 16.w, top: 12.h, bottom: 12.h, right: 16.w),
    );
  }

  TextStyle _setFontStyle(BuildContext context) {
    switch (fontStyle) {
      case DropDownViewFontStyle.robotoReg12neu900w400:
        return TextStyle(
          color: ColorConstant.neutral900,
          fontSize: 14.sp * Constants.factor,
          fontFamily: 'RobotoRegular',
          fontWeight: FontWeight.w500,
        );

      default:
        return TextStyle(
          color: ColorConstant.black,
          fontSize: 10.sp * Constants.factor,
          fontFamily: 'RobotoRegular',
          fontWeight: FontWeight.w500,
        );
    }
  }

  TextStyle _setHintStyle(BuildContext context) {
    switch (hintStyle) {
      case DropDownViewHintTextStyle.robotoReg12neu200w400:
        return TextStyle(
          color: ColorConstant.neutral200,
          fontSize: 10.sp * Constants.factor,
          fontFamily: 'RobotoRegular',
          fontWeight: FontWeight.w500,
        );
      default:
        return TextStyle(
          color: ColorConstant.inputField,
          fontSize: 10.sp * Constants.factor,
          fontFamily: 'RobotoRegular',
          fontWeight: FontWeight.w500,
        );
    }
  }

  BorderRadius _setOutlineBorderRadius(BuildContext context) {
    switch (shape) {
      case DropDownViewShape.RoundedBorder5:
        return BorderRadius.circular(
          5.00.r,
        );
      default:
        return BorderRadius.circular(
          5.00.r,
        );
    }
  }

  OutlineInputBorder _setBorderStyle(BuildContext context) {
    switch (variant) {
      // case SearchViewVariant.BorderOutneStroke:
      //   return OutlineInputBorder(
      //     borderRadius: _setOutlineBorderRadius(context),
      //     borderSide: BorderSide(color: ColorConstant.OutlineStroke),
      //   );
      default:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(context),
          borderSide: const BorderSide(color: ColorConstant.inputField),
        );
    }
  }

  Color _setFillColor(BuildContext context) {
    switch (variant) {
      case DropDownViewVariant.fillWhite:
        return ColorConstant.white;
      default:
        return ColorConstant.white;
    }
  }

  _setFilled(BuildContext context) {
    switch (variant) {
      // case SearchViewVariant.BorderOutneStroke:
      //   return true;
      // case SearchViewVariant.None:
      //   return false;
      default:
        return true;
    }
  }
}

enum DropDownViewShape {
  RoundedBorder5,
}

enum DropDownViewPadding {
  None,
}

enum DropDownViewVariant { fillWhite, None }

enum DropDownViewHintTextStyle {
  None,
  robotoReg12neu200w400,
}

enum DropDownViewFontStyle {
  None,

  robotoReg12neu900w400,
}
