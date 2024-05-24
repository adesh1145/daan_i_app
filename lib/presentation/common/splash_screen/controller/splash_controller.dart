// ignore_for_file: unused_import

import 'dart:async';
import 'dart:io';
import 'package:daan_i_app/core/utils/pref_utils.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../../core/app_export.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  Future<void> onReady() async {
    Future.delayed(const Duration(seconds: 3), () async {
      AppStorage.getToken == null || AppStorage.getToken == ''
          ? Get.offAllNamed(AppRoutes.loginScreen)
          : Get.offNamed(AppRoutes.custBottomNavigation);
    });
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
