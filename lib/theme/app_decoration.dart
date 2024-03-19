import 'package:daan_i_app/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get whiteBgGreyElevationTwo => BoxDecoration(
        color: ColorConstant.white,
        boxShadow: [
          BoxShadow(
            color: const Color.fromRGBO(0, 0, 0, 0.17),
            offset: const Offset(0.0, 0.2),
            blurRadius: 1.r,
          ),
        ],
      );
  static BoxDecoration get whiteBgGreyElevationThree => BoxDecoration(
        color: ColorConstant.white,
        boxShadow: [
          BoxShadow(
            color: const Color.fromRGBO(0, 0, 0, 0.10),
            offset: const Offset(0.0, 1.0),
            blurRadius: 3.0.r,
          ),
        ],
      );
  static BoxDecoration get borderNeu200rounded3 => BoxDecoration(
      color: ColorConstant.white,
      border: Border.all(
        color: ColorConstant.neutral200,
        width: 1,
      ),
      borderRadius: BorderRadiusStyle.roundedBorder3);
  static BoxDecoration get lightGreyElevation => const BoxDecoration(
        color: ColorConstant.white,
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(102, 102, 102, 0.10),
            offset: Offset(0.0, 1.0),
            blurRadius: 5.0,
          ),
        ],
      );

  static BoxDecoration get borderNeu200rounded5 => BoxDecoration(
      color: ColorConstant.white,
      border: Border.all(
        color: ColorConstant.neutral200,
        width: 1,
      ),
      borderRadius: BorderRadiusStyle.roundedBorder5);

  static BoxDecoration get cta3 => const BoxDecoration(
        color: ColorConstant.cta3,
      );

  static BoxDecoration get grey => const BoxDecoration(
        color: ColorConstant.grey,
      );
  static BoxDecoration get secondaryColor => const BoxDecoration(
        color: ColorConstant.secondaryColor,
      );
  static BoxDecoration get lightBlue => const BoxDecoration(
        color: ColorConstant.lightBlue,
      );

  static BoxDecoration get success => const BoxDecoration(
        color: ColorConstant.success,
      );

  static BoxDecoration get errorTwo => const BoxDecoration(
        color: ColorConstant.errorTwo,
      );

  static BoxDecoration get fillsecondaryLight => const BoxDecoration(
        color: ColorConstant.secondaryLight,
      );

  static BoxDecoration get cta => const BoxDecoration(
        color: ColorConstant.cta,
      );
  static BoxDecoration get borderInputField => BoxDecoration(
        color: ColorConstant.white,
        border: Border.all(
          color: ColorConstant.inputField,
          width: 1,
        ),
      );
  static BoxDecoration get selectedGreen => BoxDecoration(
        color: ColorConstant.secondaryLight,
        border: Border.all(
          color: ColorConstant.secondaryColor,
          width: 1,
        ),
      );
  static BoxDecoration get borderGreen => BoxDecoration(
        color: ColorConstant.white,
        border: Border.all(
          color: ColorConstant.secondaryColor,
          width: 1,
        ),
      );

  static BoxDecoration get borderCta3 => BoxDecoration(
        color: ColorConstant.white,
        border: Border.all(
          color: ColorConstant.cta3,
          width: 1,
        ),
      );

  static BoxDecoration get whiteFill => const BoxDecoration(
        color: ColorConstant.white,
      );

  static BoxDecoration get outlineStroke => BoxDecoration(
        border: Border.all(
          color: ColorConstant.outlineStroke,
          width: 1,
        ),
      );
  static BoxDecoration get searchFieldOutline => BoxDecoration(
        border: Border.all(
          color: ColorConstant.searchFieldOutline,
          width: 1,
        ),
      );

  static BoxDecoration get fillOrange => const BoxDecoration(
        color: ColorConstant.orangeTwo,
      );

  static BoxDecoration get fill => const BoxDecoration(
        color: ColorConstant.fill,
      );

  static BoxDecoration get lime => const BoxDecoration(
        color: ColorConstant.lime,
      );
  static BoxDecoration get lightSuccess => const BoxDecoration(
        color: ColorConstant.lightSuccess,
      );
  static BoxDecoration get fillsuccess => const BoxDecoration(
        color: ColorConstant.success,
      );
  static BoxDecoration get fillcta => const BoxDecoration(
        color: ColorConstant.cta,
      );
  static BoxDecoration get fillbgGrey => const BoxDecoration(
        color: ColorConstant.bgGrey,
      );
  static BoxDecoration get fillsecondaryColor => const BoxDecoration(
        color: ColorConstant.secondaryColor,
      );
  static BoxDecoration get orangeTwo => const BoxDecoration(
        color: ColorConstant.orangeTwo,
      );
  static BoxDecoration get filledInputField => BoxDecoration(
        color: ColorConstant.inputField,
        border: Border.all(
          color: ColorConstant.inputField,
          width: 1,
        ),
      );

  static BoxDecoration get filledWhite => BoxDecoration(
        color: ColorConstant.white,
        border: Border.all(
          color: ColorConstant.white,
          width: 1,
        ),
      );
  static BoxDecoration get filledWhiteBorderOutlineStroke => BoxDecoration(
        color: ColorConstant.white,
        border: Border.all(
          color: ColorConstant.outlineStroke,
          width: 1,
        ),
      );

  static BoxDecoration get wallet => const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0,
            0,
          ),
          end: Alignment(
            0.5,
            2,
          ),
          colors: [
            ColorConstant.cta,
            ColorConstant.black,
            ColorConstant.textOne,
          ],
        ),
      );

  static BoxDecoration get borderCtarounded6 => BoxDecoration(
      color: ColorConstant.white,
      border: Border.all(
        color: ColorConstant.cta,
        width: 1,
      ),
      borderRadius: BorderRadiusStyle.roundedBorder6);

  static BorderRadius txtRoundedBorder6 = BorderRadius.circular(
    6.w,
  );

  static BoxDecoration get txtFilllightSuccess => const BoxDecoration(
        color: ColorConstant.lightSuccess,
      );
  static BoxDecoration get txtFillorangeTwo => const BoxDecoration(
        color: ColorConstant.orangeTwo,
      );
  static BoxDecoration get fillGray400 => const BoxDecoration(
        color: ColorConstant.ctaUnactive,
      );
  static BoxDecoration get fillRedbtn => const BoxDecoration(
        color: ColorConstant.cta,
      );
  static BoxDecoration get outlineGray100 => BoxDecoration(
        color: ColorConstant.white,
        border: Border.all(
          color: ColorConstant.inputField,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGreen100 => BoxDecoration(
        color: ColorConstant.secondaryLight,
        border: Border.all(
          color: ColorConstant.secondaryColor,
          width: 1.w,
        ),
      );
  static BoxDecoration get white => BoxDecoration(
        color: ColorConstant.white,
        border: Border.all(
          color: ColorConstant.secondaryColor,
          width: 1.w,
        ),
      );
  static BoxDecoration get outlineGray30001 => BoxDecoration(
        color: ColorConstant.white,
        border: Border.all(
          color: ColorConstant.outlineStroke,
          width: 1,
        ),
      );
  static BoxDecoration get borderWhite => BoxDecoration(
        color: ColorConstant.white,
        border: Border.all(
          color: ColorConstant.white,
          width: 1,
        ),
      );
  static BoxDecoration get fillWhite => const BoxDecoration(
        color: ColorConstant.white,
      );
  static BoxDecoration get fillCta3Rounded16 => BoxDecoration(
      color: ColorConstant.cta3,
      border: Border.all(
        color: ColorConstant.cta3,
        width: 1,
      ),
      borderRadius: BorderRadius.circular(
        16.r,
      ));
  static BoxDecoration get gradientPink700Gray80001 => BoxDecoration(
        gradient: LinearGradient(
          // begin: Alignment(
          //   0,
          //   0,
          // ),
          // end: Alignment(
          //   0.5,
          //   2,
          // ),
          colors: [
            ColorConstant.walletColor1,
            ColorConstant.walletColor2,
            ColorConstant.walletColor3,
          ],
        ),
      );
  static BoxDecoration get gradientRedWhite => BoxDecoration(
          gradient: LinearGradient(
        colors: [
          ColorConstant.gradientRed,
          ColorConstant.gradientLightRed,
          ColorConstant.white,
        ],
        // stops: [0, 1],
        begin: const Alignment(-1, -1),
        end: const Alignment(-0.8, 0),
      ));

  //!

  static BoxDecoration get healthCardBackColor => const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.topRight,
          stops: [0.0, 0.6, 1.35], // Adjust the stops as needed
          colors: [
            Color.fromRGBO(218, 180, 82, 1),
            Color.fromRGBO(197, 53, 79, 1),
            Color.fromRGBO(0, 0, 0, 1),
          ],
        ),
      );

  static BoxDecoration get Cta3fill16 => BoxDecoration(
      color: ColorConstant.cta3,
      border: Border.all(
        color: ColorConstant.cta3,
        width: 1,
      ),
      borderRadius: BorderRadius.circular(
        16.r,
      ));

  static BoxDecoration get inputFieldFill16 => BoxDecoration(
      color: ColorConstant.inputField,
      border: Border.all(
        color: ColorConstant.inputField,
        width: 1,
      ),
      borderRadius: BorderRadius.circular(
        16.r,
      ));

  static BoxDecoration get darkBlueColorBLBR12WithBottomShadow => BoxDecoration(
        color: ColorConstant.darkBlueColor,
        borderRadius: BorderRadiusStyle.customBorderBLBR12,
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.25),
            offset: Offset(0, 5),
            blurRadius: 4,
            spreadRadius: 0,
          ),
        ],
      );

  static BoxDecoration get medGoldCardDecor => BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12.r),
          topRight: Radius.circular(12.r),
        ),
        gradient: const LinearGradient(
          begin: Alignment(0.19, 3.99999),
          end: Alignment.topRight,
          colors: [
            Color(0xFF901B30),
            Color(0xFF941F34),
            Color(0xFF004598),
          ],
          stops: [0.48, 0.48, 1],
        ),
      );
  static BoxDecoration get medGoldCardOfferGradient => const BoxDecoration(
        gradient: LinearGradient(
          // begin: Alignment(0.19, 3.99999),
          // end: Alignment.topRight,
          colors: [
            Color.fromARGB(255, 147, 45, 64),
            Color.fromARGB(255, 146, 41, 60),
            Color.fromARGB(255, 17, 76, 149),
          ],
          stops: [0.48, 0.48, 1],
        ),
      );
  // static BoxDecoration get medGoldCardOfferGradient => BoxDecoration(
  //       gradient: LinearGradient(
  //         // begin: Alignment(0.19, 3.99999),
  //         // end: Alignment.topRight,
  //         colors: [
  //           Color(0xFF901B30),
  //           Color(0xFF941F34),
  //           Color(0xFF004598),
  //         ],
  //         stops: [0.48, 0.48, 1],
  //       ),
  //     );

  static BoxDecoration get medGoldCardBackDecor => const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF000000),
            Color(0xFFC5354F),
            Color(0xFFDAB452),
          ],
          stops: [0.0, 0.8453, 0.9758],
          transform: GradientRotation(192 * (3.1415926535 / 180)),
        ),

        // !gradient_like_css
        // gradient: linearGradient(45,
        //     ['#C5354F 8.77%', '#DAB452 15.7%', '#C5354F 40.77%', '#000 100%']),
      );

  static BoxDecoration get fillOrangeOne3r => BoxDecoration(
      color: ColorConstant.orangeOne,
      borderRadius: BorderRadius.circular(
        3.r,
      ));

  static BoxDecoration get whiteBgGreyElevation => const BoxDecoration(
        color: ColorConstant.white,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.bgGrey,
            offset: Offset(0.0, 1.0),
            blurRadius: 5.0,
          ),
        ],
      );

  static BoxDecoration get borderCtaBR3 => BoxDecoration(
      color: ColorConstant.white,
      border: Border.all(
        color: ColorConstant.cta,
        width: 1,
      ),
      borderRadius: BorderRadiusStyle.roundedBorder3);
  static BoxDecoration get borderCtarounded5 => BoxDecoration(
      color: ColorConstant.white,
      border: Border.all(
        color: ColorConstant.cta,
        width: 1,
      ),
      borderRadius: BorderRadiusStyle.roundedBorder5);

  static BoxDecoration get borderSecondaryColorWidth4 => BoxDecoration(
        color: ColorConstant.white,
        border: Border.all(
          color: ColorConstant.secondaryColor,
          width: 3,
        ),
      );

  // ! -----------------------New App Decorations---------------------------

  static BoxDecoration get borderwarning50 => BoxDecoration(
        color: ColorConstant.warning50,
        border: Border.all(
          color: ColorConstant.warning100,
          width: 1,
        ),
      );
  static BoxDecoration get fillWhiteBorderNeu200 => BoxDecoration(
        color: ColorConstant.white,
        border: Border.all(
          color: ColorConstant.neutral200,
          width: 1,
        ),
      );
  static BoxDecoration get fillWhiteBorderPri300 => BoxDecoration(
        color: ColorConstant.white,
        border: Border.all(
          color: ColorConstant.primary300,
          width: 1,
        ),
      );
  static BoxDecoration get borderPri300rounded3 => BoxDecoration(
      color: ColorConstant.white,
      border: Border.all(
        color: ColorConstant.primary300,
        width: 1,
      ),
      borderRadius: BorderRadiusStyle.roundedBorder3);
  static BoxDecoration get borderSec300rounded3 => BoxDecoration(
      color: ColorConstant.white,
      border: Border.all(
        color: ColorConstant.secondary300,
        width: 1,
      ),
      borderRadius: BorderRadiusStyle.roundedBorder3);
  static BoxDecoration get Border5secondary50 => BoxDecoration(
      color: ColorConstant.secondary50,
      border: Border.all(
        color: ColorConstant.secondary50,
        width: 1,
      ),
      borderRadius: BorderRadius.circular(
        5.r,
      ));
  static BoxDecoration get Border6OrangeTwo => BoxDecoration(
      color: ColorConstant.orangeTwo,
      border: Border.all(
        color: ColorConstant.orangeTwo,
        width: 1,
      ),
      borderRadius: BorderRadius.circular(
        6.r,
      ));
  static BoxDecoration get secodary100 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.secondary100,
          width: 1,
        ),
      );
  static BoxDecoration get neutral20 => const BoxDecoration(
        color: ColorConstant.neutral20,
      );
  static BoxDecoration get secondary100 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.secondary100,
          width: 1,
        ),
      );
  static BoxDecoration get bordersec50 => BoxDecoration(
        color: ColorConstant.secondary50,
        border: Border.all(
          color: ColorConstant.secondary50,
          width: 1,
        ),
      );

  static BoxDecoration get secondary50 => BoxDecoration(
      color: ColorConstant.secondary50,
      border: Border.all(
        color: ColorConstant.secondary50,
        width: 1,
      ),
      borderRadius: BorderRadius.circular(
        5.r,
      ));
  static BoxDecoration get fillWhiteBorderSec300round3 => BoxDecoration(
      color: ColorConstant.white,
      border: Border.all(
        color: ColorConstant.secondary300,
        width: 1,
      ),
      borderRadius: BorderRadiusStyle.roundedBorder3);
  static BoxDecoration get fillSec50 => const BoxDecoration(
        color: ColorConstant.secondary50,
      );
  static BoxDecoration get fillwhiteBorderCtaRounded6 => BoxDecoration(
      color: ColorConstant.white,
      border: Border.all(
        color: ColorConstant.cta,
        width: 1,
      ),
      borderRadius: BorderRadius.circular(
        6.r,
      ));
  static BoxDecoration get fillwhiteBorderCtaRounded3 => BoxDecoration(
      color: ColorConstant.white,
      border: Border.all(
        color: ColorConstant.cta,
        width: 1,
      ),
      borderRadius: BorderRadius.circular(
        3.r,
      ));
  static BoxDecoration get fillwhiteBordersec300Rounded3 => BoxDecoration(
      color: ColorConstant.white,
      border: Border.all(
        color: ColorConstant.secondary300,
        width: 1,
      ),
      borderRadius: BorderRadius.circular(
        3.r,
      ));
  static BoxDecoration get natural20 => BoxDecoration(
      color: ColorConstant.neutral20,
      border: Border.all(
        color: ColorConstant.neutral20,
        width: 1,
      ),
      borderRadius: BorderRadius.circular(
        16.r,
      ));
}

class BorderRadiusStyle {
  static BoxDecoration get lightSuccessRoundedBorder20 => BoxDecoration(
      color: ColorConstant.lightSuccess,
      borderRadius: BorderRadius.circular(
        20.w,
      ));
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
