import 'package:permission_handler/permission_handler.dart';
import 'dart:io' show Platform;
import '../core/app_export.dart';
import '../core/utils/flutter_toast.dart';
import 'custom_image_controller.dart';
import 'custom_image_view.dart';

class ImagePickerBottomSheets extends GetxController {
  final Rx<PermissionStatus> _permissionStatus = PermissionStatus.granted.obs;

  @override
  void onInit() async {
    super.onInit();
    await commonGalleryCamera();
  }

  ImagePickerBottomSheets(controller, flag) {
    if (Get.isBottomSheetOpen == false) {
      Get.bottomSheet(
        StatefulBuilder(builder: (context, setState) {
          return Scaffold(
            backgroundColor: ColorConstant.white.withOpacity(0),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () => Get.back(),
                  child: Padding(
                    padding: EdgeInsets.only(right: 20.w, bottom: 8.h),
                    child: CustomImageView(
                      svgPath: ImageConstant.close,
                      height: 16.h,
                      width: 16.w,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: 17.w, top: 17.h, right: 17.w, bottom: 16.h),
                  // decoration: AppDecoration.whiteFill.copyWith(
                  //   borderRadius: BorderRadiusStyle.customBorderTL20,
                  // ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 2.h, bottom: 10.h),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Select or capture image",
                            textScaler: TextScaler.linear(Constants.factor),
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.lato14colorHeading800,
                          ),
                        ),
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: GetBuilder<CustomImagePickerController>(
                                builder: (imagePickerController) {
                              return InkWell(
                                onTap: () => {
                                  Get.back(),
                                  imagePermission(controller, flag),
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 10.h),
                                      padding: EdgeInsets.all(12.w),
                                      // decoration: AppDecoration.cta.copyWith(
                                      //   borderRadius: BorderRadius.circular(50),
                                      // ),
                                      child: Icon(
                                        Icons.image_rounded,
                                        size: 34.w,
                                        color: ColorConstant.white,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: 10.0.h, bottom: 10.h),
                                      child: Container(
                                        child: Text(
                                          "Gallery",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.montserrat13textTwo500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }),
                          ),
                          Expanded(
                            child: GetBuilder<CustomImagePickerController>(
                                builder: (imagePickerController) {
                              return InkWell(
                                onTap: () => {
                                  Get.back(),
                                  cameraPermission(controller, flag),
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 10.h),
                                      padding: EdgeInsets.all(12.w),
                                      // decoration: AppDecoration.cta.copyWith(
                                      //   borderRadius: BorderRadius.circular(50),
                                      // ),
                                      child: Icon(
                                        Icons.camera,
                                        size: 34.w,
                                        color: ColorConstant.white,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: 10.0.h, bottom: 10.h),
                                      child: Text(
                                        "Camera",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.montserrat13textTwo500,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }),
        // backgroundColor: Colors.white,
        elevation: 0,
        // isScrollControlled: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.w),
        ),
      );
    }
  }

  cameraPermission(controller, flag) async {
    if (Platform.isAndroid) {
      _permissionStatus.value = await Permission.camera.request();
      if (_permissionStatus.value.isGranted) {
        controller.captureImage(flag);
      } else if (_permissionStatus.value.isRestricted ||
          _permissionStatus.value.isLimited ||
          _permissionStatus.value.isDenied) {
        _permissionStatus.value = await Permission.camera.request();
      } else {
        Message_Utils.displayToast("Please Give Permission To Access Camera");
        openAppSettings();
      }
    }

    if (Platform.isIOS) {
      _permissionStatus.value = await Permission.camera.request();
      if (_permissionStatus.value.isGranted) {
        controller.captureImage(flag);
      } else if (_permissionStatus.value.isRestricted ||
          _permissionStatus.value.isLimited ||
          _permissionStatus.value.isDenied) {
        _permissionStatus.value = await Permission.camera.request();
      } else {
        Message_Utils.displayToast("Please Give Permission To Access Camera");
        openAppSettings();
      }
    }
  }

  imagePermission(controller, flag) async {
    if (Platform.isAndroid) {
      _permissionStatus.value = await Permission.accessMediaLocation.request();
      if (_permissionStatus.value.isGranted) {
        controller.pickImage(flag);
      } else if (_permissionStatus.value.isRestricted ||
          _permissionStatus.value.isLimited ||
          _permissionStatus.value.isDenied) {
        _permissionStatus.value =
            await Permission.accessMediaLocation.request();
      } else {
        Message_Utils.displayToast("Please Give Permission To Access Media");
        openAppSettings();
      }
    }
    if (Platform.isIOS) {
      _permissionStatus.value = await Permission.mediaLibrary.request();
      if (_permissionStatus.value.isGranted) {
        controller.pickImage(flag);
      } else {
        Message_Utils.displayToast("Please Give Permission To Access Media");
        openAppSettings();
      }
    }
  }

  commonGalleryCamera() async {
    if (Platform.isAndroid) {
      _permissionStatus.value = await Permission.camera.request();
      if (_permissionStatus.value.isGranted) {
        _permissionStatus.value =
            await Permission.accessMediaLocation.request();
        if (_permissionStatus.value.isGranted) {
          return;
        } else if (_permissionStatus.value.isRestricted ||
            _permissionStatus.value.isLimited ||
            _permissionStatus.value.isDenied) {
          _permissionStatus.value =
              await Permission.accessMediaLocation.request();
        }
      } else if (_permissionStatus.value.isRestricted ||
          _permissionStatus.value.isLimited ||
          _permissionStatus.value.isDenied) {
        _permissionStatus.value = await Permission.camera.request();
      } else {
        Message_Utils.displayToast("Please Give Permission To Access Camera");
        openAppSettings();
      }
    }

    if (Platform.isIOS) {
      _permissionStatus.value = await Permission.camera.request();
      if (_permissionStatus.value.isGranted) {
        _permissionStatus.value = await Permission.mediaLibrary.request();
        if (_permissionStatus.value.isGranted) {
          return;
        } else if (_permissionStatus.value.isRestricted ||
            _permissionStatus.value.isLimited ||
            _permissionStatus.value.isDenied) {
          _permissionStatus.value = await Permission.mediaLibrary.request();
        } else {
          Message_Utils.displayToast("Please Give Permission To Access Media");
          openAppSettings();
        }
      } else if (_permissionStatus.value.isRestricted ||
          _permissionStatus.value.isLimited ||
          _permissionStatus.value.isDenied) {
        _permissionStatus.value = await Permission.camera.request();
      } else {
        Message_Utils.displayToast("Please Give Permission To Access Camera");
        openAppSettings();
      }
    }
  }
}
