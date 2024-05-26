import 'package:daan_i_app/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../core/utils/color_constant.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyle {
  static TextStyle lato14textOne800 = TextStyle(
    color: ColorConstant.textOne,
    fontSize: 14.sp,
    fontFamily: 'Lato',
    fontWeight: FontWeight.w800,
  );

  static TextStyle montserrat12white600 = TextStyle(
    color: ColorConstant.white,
    fontSize: 12.sp,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );

  static TextStyle montserrat10textTwo600 = TextStyle(
    color: ColorConstant.textTwo,
    fontSize: 10.sp,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );

  static TextStyle lato14colorHeading800 = TextStyle(
    color: ColorConstant.colorHeading,
    fontSize: 14.sp,
    fontFamily: 'Lato',
    fontWeight: FontWeight.w800,
  );

  static TextStyle montserrat12textOne400 = TextStyle(
    color: ColorConstant.textOne,
    fontSize: 12.sp,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );

  static TextStyle montserrat13textTwo500 = TextStyle(
    color: ColorConstant.textTwo,
    fontSize: 13.sp,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
  );
  static TextStyle montserrat11textOne400 = TextStyle(
    color: ColorConstant.textOne,
    fontSize: 11.sp,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );

  static TextStyle montserrat13textOne500 = TextStyle(
    color: ColorConstant.textOne,
    fontSize: 13.sp,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
  );

  static TextStyle lato14Error600 = TextStyle(
    color: ColorConstant.error,
    fontSize: 14.sp,
    fontFamily: 'Lato',
    fontWeight: FontWeight.w600,
  );

  static TextStyle lato14textOne600 = TextStyle(
    color: ColorConstant.textOne,
    fontSize: 14.sp,
    fontFamily: 'Lato',
    fontWeight: FontWeight.w600,
  );
  static TextStyle montserrat13ColorHeading400 = TextStyle(
    color: ColorConstant.colorHeading,
    fontSize: 13.sp,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );
  static TextStyle montserrat10White600 = TextStyle(
    color: ColorConstant.white,
    fontSize: 10.sp,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );

  static TextStyle robotoMed10neu900w500 = TextStyle(
    color: ColorConstant.neutral900,
    fontSize: 10.sp,
    fontFamily: 'RobotoMedium',
    fontWeight: FontWeight.w500,
  );
  static TextStyle robotoMed16neu900w500 = TextStyle(
    color: ColorConstant.neutral900,
    fontSize: 16.sp,
    fontFamily: 'RobotoMedium',
    fontWeight: FontWeight.w500,
  );

  // ! My App Text Style
  static TextStyle roboto22w100 = GoogleFonts.roboto(
    fontSize: 22.sp,
    fontWeight: FontWeight.w100,
  );
  static TextStyle roboto22w400 = GoogleFonts.roboto(
    fontSize: 22.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle roboto22w500 = GoogleFonts.roboto(
    fontSize: 22.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle roboto22w700 = GoogleFonts.roboto(
    fontSize: 22.sp,
    fontWeight: FontWeight.w700,
  );
  static TextStyle roboto20w600 =
      GoogleFonts.roboto(fontSize: 20.sp, fontWeight: FontWeight.w600);
  static TextStyle roboto20wPrimary900 = GoogleFonts.roboto(
    color: Theme.of(Get.context!).colorScheme.primary,
    fontSize: 20.sp,
    fontWeight: FontWeight.w900,
  );
  static TextStyle roboto10w400 = GoogleFonts.roboto(
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle roboto10w500 = GoogleFonts.roboto(
    fontSize: 10.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle roboto10w600 = GoogleFonts.roboto(
    fontSize: 10.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle roboto10w700 = GoogleFonts.roboto(
    fontSize: 10.sp,
    fontWeight: FontWeight.w700,
  );
  static TextStyle roboto12w400 = GoogleFonts.roboto(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle roboto12w500 = GoogleFonts.roboto(
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle roboto12w600 = GoogleFonts.roboto(
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle roboto12Errorw500 = GoogleFonts.roboto(
    fontSize: 12.sp,
    color: Theme.of(Get.context!).colorScheme.error,
    fontWeight: FontWeight.w500,
  );
  static TextStyle roboto12w700 = GoogleFonts.roboto(
    fontSize: 12.sp,
    fontWeight: FontWeight.w700,
  );
  static TextStyle roboto14w400 = GoogleFonts.roboto(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle roboto14w500 = GoogleFonts.roboto(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle roboto14w700 = GoogleFonts.roboto(
    fontSize: 14.sp,
    fontWeight: FontWeight.w700,
  );
  static TextStyle roboto13w700 = GoogleFonts.roboto(
    fontSize: 13.sp,
    fontWeight: FontWeight.w700,
  );
  static TextStyle roboto16w400 = GoogleFonts.roboto(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle roboto16w500 = GoogleFonts.roboto(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
  );
  static TextStyle roboto16w700 = GoogleFonts.roboto(
    fontSize: 16.sp,
    fontWeight: FontWeight.w700,
  );
  static TextStyle roboto16w900 = GoogleFonts.roboto(
    fontSize: 16.sp,
    fontWeight: FontWeight.w900,
  );
  static TextStyle roboto10Backgroundw500 = GoogleFonts.roboto(
    fontSize: 10.sp,
    color: Theme.of(Get.context!).colorScheme.background,
    fontWeight: FontWeight.w500,
  );
  static TextStyle roboto10Backgroundw400 = GoogleFonts.roboto(
    fontSize: 10.sp,
    color: Theme.of(Get.context!).colorScheme.background,
    fontWeight: FontWeight.w400,
  );
  static TextStyle get roboto12Backgroundw500 => GoogleFonts.roboto(
        fontSize: 12.sp,
        color: Theme.of(Get.context!).colorScheme.background,
        fontWeight: FontWeight.w500,
      );
  static TextStyle roboto12Backgroundw400 = GoogleFonts.roboto(
    fontSize: 12.sp,
    color: Theme.of(Get.context!).colorScheme.background,
    fontWeight: FontWeight.w400,
  );
  static TextStyle roboto12Primaryw400 = GoogleFonts.roboto(
    fontSize: 12.sp,
    color: Theme.of(Get.context!).colorScheme.primary,
    fontWeight: FontWeight.w400,
  );
  static TextStyle roboto12Primaryw500 = GoogleFonts.roboto(
    fontSize: 12.sp,
    color: Theme.of(Get.context!).colorScheme.primary,
    fontWeight: FontWeight.w500,
  );
  static TextStyle roboto12Secondaryw500 = GoogleFonts.roboto(
    fontSize: 12.sp,
    color: Theme.of(Get.context!).colorScheme.secondary,
    fontWeight: FontWeight.w500,
  );
   static TextStyle roboto13onBackgroundw500 = GoogleFonts.roboto(
    fontSize: 13.sp,
    color: Theme.of(Get.context!).colorScheme.onBackground,
    fontWeight: FontWeight.w500,
  );

  static TextStyle roboto10onBackgroundw400 = GoogleFonts.roboto(
    fontSize: 10.sp,
    color: Theme.of(Get.context!).colorScheme.onBackground,
    fontWeight: FontWeight.w400,
  );
}
