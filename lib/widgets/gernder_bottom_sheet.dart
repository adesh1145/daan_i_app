import '../core/app_export.dart';
import '../theme/app_decoration.dart';
import '../theme/app_style.dart';
import 'custom_image_view.dart';

class GenderBottomSheets extends GetxController {
  GenderBottomSheets(controller, heading, genderList,
      {VoidCallback? afterSelectAction}) {
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
                  width: double.maxFinite,
                  child: Container(
                    padding: EdgeInsets.only(
                        left: 17.w, top: 17.h, right: 17.w, bottom: 16.h),
                    // decoration: AppDecoration.whiteFill.copyWith(
                    //   borderRadius: BorderRadiusStyle.customBorderTL20,
                    // ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 2.h, bottom: 10.h),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              heading,
                              textScaler: TextScaler.linear(Constants.factor),
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.lato14colorHeading800,
                            ),
                          ),
                        ),
                        ListView.builder(
                          itemCount: genderList.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.only(top: 10.h),
                              padding: EdgeInsets.only(
                                  top: 1.h, bottom: 1.h, right: 36.w),
                              // decoration:
                              //     controller.genderId.value == index.toString()
                              //         ? AppDecoration.selectedGreen.copyWith(
                              //             borderRadius:
                              //                 BorderRadiusStyle.roundedBorder6,
                              //           )
                              //         : AppDecoration.borderInputField.copyWith(
                              //             borderRadius:
                              //                 BorderRadiusStyle.roundedBorder6,
                              //           ),
                              child: RadioListTile(
                                title: Center(
                                    child: Text(
                                  genderList[index].toString(),
                                  style: AppStyle.montserrat13ColorHeading400,
                                )),
                                selected: controller.genderId.value ==
                                    index.toString(),
                                value: genderList[index].toString(),
                                activeColor: ColorConstant.secondaryColor,
                                groupValue: controller.genderId.value,
                                fillColor: MaterialStateProperty.resolveWith(
                                    (states) => controller.genderId.value ==
                                            index.toString()
                                        ? ColorConstant.secondaryColor
                                        : ColorConstant.textTwo),
                                onChanged: (value) {
                                  setState(() {
                                    controller.genderController.value.text =
                                        value.toString();
                                    controller.genderId.value =
                                        index.toString();
                                    afterSelectAction != null
                                        ? afterSelectAction()
                                        : null;
                                    Get.back();
                                  });
                                },
                              ),
                            );
                          },
                        )
                      ],
                    ),
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
}
