import 'package:daan_i_app/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get border2PrimaryRounded12 => BoxDecoration(
      border: Border.all(
          width: 2.h, color: Theme.of(Get.context!).colorScheme.primary),
      borderRadius: BorderRadiusStyle.roundedBorder12);
  static BoxDecoration get border2OutlineRounded12 => BoxDecoration(
      border: Border.all(color: Theme.of(Get.context!).colorScheme.outline),
      borderRadius: BorderRadiusStyle.roundedBorder12);
  static BoxDecoration fillSecondaryContainerRounded6 = BoxDecoration(
      color: Theme.of(Get.context!).colorScheme.secondaryContainer,
      borderRadius: BorderRadiusStyle.roundedBorder6);
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder4 = BorderRadius.circular(
    4.r,
  );
  static BorderRadius roundedBorder5 = BorderRadius.circular(
    5.r,
  );
  static BorderRadius roundedBorder6 = BorderRadius.circular(
    6.r,
  );

  static BorderRadius roundedBorder8 = BorderRadius.circular(
    8.r,
  );

  static BorderRadius roundedBorder10 = BorderRadius.circular(
    10.r,
  );
  static BorderRadius roundedBorder12 = BorderRadius.circular(
    12.r,
  );
}
