import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static const cta = Color(0xFFC5354F);
  static const cta3 = Color(0xFFF9E4E4);
  static const ctaUnactive = Color(0xFFD8B6BC);
  static const secondaryColor = Color(0xFF159D89);
  static const secondaryLight = Color(0xFFD3E8E4);
  static const inputField = Color(0xFFF2F2F2);
  static const outlineStroke = Color(0xFFE2E2E2);
  static const white = Color(0xFFFFFFFF);
  static const colorHeading = Color(0xFF494949);
  static const textOne = Color(0xFF41404D);
  static const textTwo = Color(0xFF7E7E7E);
  static const orangeOne = Color(0xFFD8712A);
  static const lightSuccess = Color(0xFFE3EAE3);
  static const error = Color(0xFFE42222);
  static const bgOne = Color(0xFFF5F5FA);
  static const transparent = Color(0xFF292929);
  static const grey = Color(0xFF252525);
  static const black = Color(0xFF000000);
  static const bgGrey = Color(0xFF40444F);

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  static const darkBlueColor = Color(0xFF071733);
  static const Color primary300 = Color(0xFFc5354e);
  static const Color secondary300 = Color(0xFF169d88);
  static const Color neutral200 = Color(0xFF6b788e);
  static const Color neutral900 = Color(0xFF091e42);

  // ! My App COlor
  static const success = Color(0xFF42A646);

  //! some extra color use ---

 static const ligtPink=Color.fromARGB(255, 241, 230, 244);
 static const ligtYellow=Color.fromARGB(255, 226, 230, 173);
 static const ligtBrown=Color.fromARGB(255, 250, 207, 176);
 static const ligtGreen=Color.fromARGB(255, 200, 244, 206);

}
