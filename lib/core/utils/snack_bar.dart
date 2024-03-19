// ignore_for_file: unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme/app_style.dart';
import '../app_export.dart';
import 'color_constant.dart';

void customSnackBar(String msg, {MsgType msgType = MsgType.success}) {
  Get.rawSnackbar(
    messageText: Text(msg, style: AppStyle.montserrat12white600),
    icon: msgType == MsgType.success
        ? const Icon(
            Icons.check_circle_rounded,
            color: ColorConstant.success,
          )
        : msgType == MsgType.error
            ? const Icon(
                Icons.error_outline_rounded,
                color: ColorConstant.error,
              )
            : const Icon(
                Icons.warning_amber_rounded,
                color: ColorConstant.orangeOne,
              ),
    backgroundColor: ColorConstant.bgGrey,
    duration: const Duration(milliseconds: 2000),
    margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
    padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
    snackPosition: SnackPosition.TOP,
    borderRadius: 5,
    animationDuration: const Duration(milliseconds: 1000),
    backgroundGradient: const LinearGradient(
      colors: [ColorConstant.bgGrey, ColorConstant.bgGrey],
    ),
  );
}

enum MsgType { error, warning, success }
