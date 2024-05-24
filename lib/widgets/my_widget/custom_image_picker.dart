import 'dart:io';

import 'package:image_picker/image_picker.dart';

import '../../core/app_export.dart';

class CustomImagePicker {
  Rxn<File> imgFile = Rxn(null);
  void imagePickerBottomSheet() {
    if (Get.isBottomSheetOpen == false) {
      Get.bottomSheet(
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(
              child: CloseButton(
                onPressed: () {
                  Get.back();
                },
                color: Theme.of(Get.context!).colorScheme.onBackground,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  color: Theme.of(Get.context!).colorScheme.background),
              child: Column(
                children: [
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
                              textScaler: customTextScaler,
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
                              child: InkWell(
                                onTap: () =>
                                    {Get.back(), getImage(ImageSource.gallery)},
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
                                        color: Theme.of(Get.context!)
                                            .colorScheme
                                            .primary,
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
                              ),
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () =>
                                    {Get.back(), getImage(ImageSource.camera)},
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
                                        color: Theme.of(Get.context!)
                                            .colorScheme
                                            .primary,
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
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        // backgroundColor: Colors.white.withOpacity(0),
        elevation: 0,
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.r),
        ),
      );
    }
  }

  Future<void> getImage(
    ImageSource img,
  ) async {
    try {
      final pickedFile = await ImagePicker().pickImage(
        source: img,
      );

      String? xfilePick = pickedFile?.path;

      if (xfilePick != null && pickedFile != null) {
        if (await pickedFile.length() < 5000000) {
          imgFile.value = File(pickedFile.path);
        }
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
