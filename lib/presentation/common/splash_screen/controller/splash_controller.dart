// ignore_for_file: unused_import

import 'dart:async';
import 'dart:io';
import 'package:daan_i_app/core/utils/pref_utils.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../../core/app_export.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Future.delayed(const Duration(seconds: 3), () async {
      print(AppStorage.getToken);
      var token = AppStorage.getToken;
      if (token == null || token == '') {
        Get.offAllNamed(AppRoutes.selectLanguageScreen);
      } else {
        print("Else$token");
        Get.offNamed(AppRoutes.custBottomNavigation);
      }
    });
    super.onInit();
  }

  @override
  Future<void> onReady() async {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
