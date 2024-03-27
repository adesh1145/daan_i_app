// ignore_for_file: unused_import

import 'dart:async';
import 'dart:io';
import 'package:permission_handler/permission_handler.dart';

import '../../../../core/app_export.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  Future<void> onReady() async {
    Future.delayed(const Duration(milliseconds: 5000), () async {
      Get.offAllNamed(AppRoutes.loginScreen);
    });
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
