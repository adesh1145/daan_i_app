import 'package:daan_i_app/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get border2PrimaryRounded12 => BoxDecoration(
      border: Border.all(
          width: 2.h, color: Theme.of(Get.context!).colorScheme.primary),
      borderRadius: BorderRadiusStyle.roundedBorder12);
  static BoxDecoration get border2OutlineRounded12 => BoxDecoration(
      border: Border.all(color: Theme.of(Get.context!).colorScheme.outline),
      borderRadius: BorderRadiusStyle.roundedBorder12);
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder6 = BorderRadius.circular(
    6.w,
  );
  static BorderRadius roundedBorder5 = BorderRadius.circular(
    5.w,
  );

  static BorderRadius roundedBorder4 = BorderRadius.circular(
    4.w,
  );
  //roundedBorder34
  static BorderRadius roundedBorder34 = BorderRadius.circular(
    34.w,
  );
  static BorderRadius roundedBorder32 = BorderRadius.circular(
    32.w,
  );

  static BorderRadius roundedBorder12 = BorderRadius.circular(
    12.r,
  );
  static BorderRadius roundedBorder17 = BorderRadius.circular(
    17.w,
  );

  static BorderRadius roundedBorder24 = BorderRadius.circular(
    24.w,
  );

  static BorderRadius roundedBorder8 = BorderRadius.circular(
    8.r,
  );

  static BorderRadius customBorderTL20 = BorderRadius.only(
    topLeft: Radius.circular(
      20.w,
    ),
    topRight: Radius.circular(20.w),
  );
  static BorderRadius customBorderTLBL3 = BorderRadius.only(
    topLeft: Radius.circular(
      3.r,
    ),
    bottomLeft: Radius.circular(
      3.r,
    ),
  );
  static BorderRadius customBorderTRBR3 = BorderRadius.only(
    topRight: Radius.circular(
      3.r,
    ),
    bottomRight: Radius.circular(
      3.r,
    ),
  );
  static BorderRadius customBorderBottom8 = BorderRadius.only(
    bottomLeft: Radius.circular(
      8.r,
    ),
    bottomRight: Radius.circular(8.r),
  );

  static BorderRadius txtRoundedBorder6 = BorderRadius.circular(
    6.w,
  );

  static BorderRadius txtRoundedBorder3 = BorderRadius.circular(
    3.w,
  );
  static BorderRadius circleBorder105 = BorderRadius.circular(
    105.w,
  );
  static BorderRadius circleBorder131 = BorderRadius.circular(
    131.w,
  );
  static BorderRadius circleBorder90 = BorderRadius.circular(
    90.w,
  );

  static BorderRadius roundedBorder3 = BorderRadius.circular(
    3.w,
  );
  static BorderRadius customBorderBLBR12 = BorderRadius.only(
    bottomRight: Radius.circular(
      12.w,
    ),
    bottomLeft: Radius.circular(12.w),
  );
}
