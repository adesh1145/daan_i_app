// ignore_for_file: unused_local_variable

import 'dart:convert';
import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import 'package:flutter/foundation.dart';

import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

import 'package:path/path.dart' as p;


class CustomImagePickerController extends GetxController {
  // Rx<PermissionStatus> _permissionStatus = PermissionStatus.granted.obs;
  Rxn<File> image = Rxn<File>();
  String? base64Image;
  // @override
  // void onInit() async {
  //   super.onInit();
  //   // await commonGalleryCamera();
  // }

  Future<void> pickImage() async {
    try {
      final imagePicker = ImagePicker();
      final pickedFile = await imagePicker.pickImage(
        source: ImageSource.gallery,
      );
      if (pickedFile != null) {
        final bytes = await File(pickedFile.path).readAsBytes();
        final kb = bytes.length / 1024;
        final mb = kb / 1024;

        // Generate a new file name for the compressed image
        final dir = await path_provider.getTemporaryDirectory();
        final compressedFileName =
            'compressed_${DateTime.now().millisecondsSinceEpoch}.jpg';
        final targetPath = p.join(dir.path, compressedFileName);

        try {
          final result = await FlutterImageCompress.compressAndGetFile(
            pickedFile.path,
            targetPath,
            minHeight: 1080, // you can play with this to reduce size
            minWidth: 1080,
            quality:
                90, // keep this high to get the original quality of the image
          );
          if (result != null) {
            final data = await result.readAsBytes();
            final newKb = data.length / 1024;
            final newMb = newKb / 1024;
          }
        } catch (e) {
          throw e;
        }

        image.value = File(pickedFile.path);
        File imagefile = File(pickedFile.path);
        Uint8List imagebytes = await imagefile.readAsBytes();
        base64Image = base64.encode(imagebytes);
        update();
      }
    } catch (e) {
      throw e;
    }
  }

  Future<void> captureImage() async {
    final imagePicker = ImagePicker();
    final pickedFile = await imagePicker.pickImage(
      source: ImageSource.camera,
    );
    try {
      if (pickedFile != null) {
        final bytes = await File(pickedFile.path).readAsBytes();
        final kb = bytes.length / 1024;
        final mb = kb / 1024;

        // Generate a new file name for the compressed image
        final dir = await path_provider.getTemporaryDirectory();
        final compressedFileName =
            'compressed_${DateTime.now().millisecondsSinceEpoch}.jpg';
        final targetPath = p.join(dir.path, compressedFileName);

        try {
          final result = await FlutterImageCompress.compressAndGetFile(
            pickedFile.path,
            targetPath,
            minHeight: 1080, // you can play with this to reduce size
            minWidth: 1080,
            quality:
                90, // keep this high to get the original quality of the image
          );
          if (result != null) {
            final data = await result.readAsBytes();
            final newKb = data.length / 1024;
            final newMb = newKb / 1024;

            image.value = File(pickedFile.path);
            File imagefile = File(pickedFile.path);
            Uint8List imagebytes = await imagefile.readAsBytes();
            base64Image = base64.encode(imagebytes);
            update();
          }
        } catch (e) {
          throw e;
        }
      }
    } catch (e) {
      throw e;
    }
  }

  // cameraPermission(controller, flag) async {
  //   if (Platform.isAndroid) {
  //     _permissionStatus.value = await Permission.camera.request();
  //     if (_permissionStatus.value.isGranted) {
  //       controller.captureImage(flag);
  //     } else if (_permissionStatus.value.isRestricted ||
  //         _permissionStatus.value.isLimited ||
  //         _permissionStatus.value.isDenied) {
  //       _permissionStatus.value = await Permission.camera.request();
  //     } else {
  //       Message_Utils.displayToast("Please Give Permission To Access Camera");
  //       openAppSettings();
  //     }
  //   }

  //   if (Platform.isIOS) {
  //     _permissionStatus.value = await Permission.camera.request();
  //     if (_permissionStatus.value.isGranted) {
  //       controller.captureImage(flag);
  //     } else if (_permissionStatus.value.isRestricted ||
  //         _permissionStatus.value.isLimited ||
  //         _permissionStatus.value.isDenied) {
  //       _permissionStatus.value = await Permission.camera.request();
  //     } else {
  //       Message_Utils.displayToast("Please Give Permission To Access Camera");
  //       openAppSettings();
  //     }
  //   }
  // }

  // imagePermission(controller, flag) async {
  //   if (Platform.isAndroid) {
  //     _permissionStatus.value = await Permission.accessMediaLocation.request();
  //     if (_permissionStatus.value.isGranted) {
  //       controller.pickImage(flag);
  //     } else if (_permissionStatus.value.isRestricted ||
  //         _permissionStatus.value.isLimited ||
  //         _permissionStatus.value.isDenied) {
  //       _permissionStatus.value =
  //           await Permission.accessMediaLocation.request();
  //     } else {
  //       Message_Utils.displayToast("Please Give Permission To Access Media");
  //       openAppSettings();
  //     }
  //   }
  //   if (Platform.isIOS) {
  //     _permissionStatus.value = await Permission.mediaLibrary.request();
  //     if (_permissionStatus.value.isGranted) {
  //       controller.pickImage(flag);
  //     } else {
  //       Message_Utils.displayToast("Please Give Permission To Access Media");
  //       openAppSettings();
  //     }
  //   }
  // }

  // commonGalleryCamera() async {
  //   if (Platform.isAndroid) {
  //     _permissionStatus.value = await Permission.camera.request();
  //     if (_permissionStatus.value.isGranted) {
  //       _permissionStatus.value =
  //           await Permission.accessMediaLocation.request();
  //       if (_permissionStatus.value.isGranted) {
  //         return;
  //       } else if (_permissionStatus.value.isRestricted ||
  //           _permissionStatus.value.isLimited ||
  //           _permissionStatus.value.isDenied) {
  //         _permissionStatus.value =
  //             await Permission.accessMediaLocation.request();
  //       }
  //     } else if (_permissionStatus.value.isRestricted ||
  //         _permissionStatus.value.isLimited ||
  //         _permissionStatus.value.isDenied) {
  //       _permissionStatus.value = await Permission.camera.request();
  //     } else {
  //       Message_Utils.displayToast("Please Give Permission To Access Camera");
  //       openAppSettings();
  //     }
  //   }

  //   if (Platform.isIOS) {
  //     _permissionStatus.value = await Permission.camera.request();
  //     if (_permissionStatus.value.isGranted) {
  //       _permissionStatus.value = await Permission.mediaLibrary.request();
  //       if (_permissionStatus.value.isGranted) {
  //         return;
  //       } else if (_permissionStatus.value.isRestricted ||
  //           _permissionStatus.value.isLimited ||
  //           _permissionStatus.value.isDenied) {
  //         _permissionStatus.value = await Permission.mediaLibrary.request();
  //       } else {
  //         Message_Utils.displayToast("Please Give Permission To Access Media");
  //         openAppSettings();
  //       }
  //     } else if (_permissionStatus.value.isRestricted ||
  //         _permissionStatus.value.isLimited ||
  //         _permissionStatus.value.isDenied) {
  //       _permissionStatus.value = await Permission.camera.request();
  //     } else {
  //       Message_Utils.displayToast("Please Give Permission To Access Camera");
  //       openAppSettings();
  //     }
  //   }
  // }
}
