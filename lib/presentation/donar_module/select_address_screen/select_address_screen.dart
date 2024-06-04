import 'package:daan_i_app/presentation/donar_module/donate_field_screen/controller/donate_field_controller.dart';
import 'package:daan_i_app/widgets/my_widget/custom_loader.dart';

import '../../../core/app_export.dart';
import '../../../widgets/app_bar/custom_app_bar.dart';
import '../../../widgets/custom_radio_button.dart';
import 'controller/select_address_controller.dart';

class SelectAddressScreen extends StatelessWidget {
  const SelectAddressScreen({super.key, this.isFromDonateField = false});
  final bool isFromDonateField;
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: SelectAddressController(),
        builder: (controller) {
          return Obx(
            () => CustomLoader(
              isLoading: controller.isLoading.value,
              child: Scaffold(
                appBar: const CustomAppBar(tittle: "Add Address"),
                backgroundColor: ColorConstant.bgOne,
                body: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 12, bottom: 8.0, left: 16, right: 16),
                      child: CustomOutlinedButton(
                        onTap: () {
                          Get.toNamed(AppRoutes.mapAddressScreen);
                        },
                        borderColor: Theme.of(context).colorScheme.primary,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.add,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                            SizedBox(
                              width: 6.w,
                            ),
                            Text(
                              "ADD ADDRESS",
                              style: AppStyle.roboto14w500.copyWith(
                                  color: Theme.of(context).colorScheme.primary),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: controller.addressList.length,
                        itemBuilder: (context, index) {
                          return Obx(() => Padding(
                                padding: EdgeInsets.only(
                                  top: 8.h,
                                ),
                                child: Container(
                                  color: ColorConstant.white,
                                  padding: EdgeInsets.only(
                                    right: 16.w,
                                  ),
                                  child: InkWell(
                                    onTap: () {},
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 16.0.h, top: 9.h),
                                            child: CustomRadioButton(
                                              value: index.toString(),
                                              activeColor:
                                                  ColorConstant.secondary300,
                                              groupValue: controller
                                                  .selectedIndex.value,
                                              onChange: (value) {
                                                controller.selectedIndex.value =
                                                    value;
                                              },
                                            ),
                                          ),
                                          Flexible(
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.only(top: 12.h),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    controller
                                                        .addressList[index].name
                                                        .toString(),
                                                    style:
                                                        AppStyle.roboto14w700,
                                                    textScaler:
                                                        const TextScaler.linear(
                                                            Constants.factor),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 6.h),
                                                    child: Text(
                                                      "${controller.addressList[index].address ?? ""} ${controller.addressList[index].cityDetail?.name ?? ""} ${controller.addressList[index].stateDetail?.name ?? ""} ${controller.addressList[index].pincode ?? ""}",
                                                      maxLines: 5,
                                                      style: AppStyle
                                                          .roboto14w400
                                                          .copyWith(
                                                              color: Theme.of(
                                                                      context)
                                                                  .colorScheme
                                                                  .outline),
                                                      textScaler:
                                                          customTextScaler,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 16.0.h,
                                                        top: 6.h),
                                                    child: RichText(
                                                      textScaler:
                                                          const TextScaler
                                                              .linear(
                                                              Constants.factor),
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      text: TextSpan(
                                                        children: [
                                                          TextSpan(
                                                            text: '+91  ',
                                                            style: AppStyle
                                                                .roboto12w500
                                                                .copyWith(
                                                                    color: Theme.of(
                                                                            context)
                                                                        .colorScheme
                                                                        .outline),
                                                          ),
                                                          TextSpan(
                                                            text: controller
                                                                .addressList[
                                                                    index]
                                                                .mobile,
                                                            style: AppStyle
                                                                .roboto12w500
                                                                .copyWith(
                                                                    color: Theme.of(
                                                                            context)
                                                                        .colorScheme
                                                                        .outline),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Visibility(
                                                    visible: true,
                                                    child: Padding(
                                                      padding: EdgeInsets.only(
                                                          bottom: 16.h),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          InkWell(
                                                            onTap: () => controller
                                                                .deleteAddressApi(
                                                                    index),
                                                            child: Container(
                                                              decoration: BoxDecoration(
                                                                  border: Border.all(
                                                                      color: ColorConstant
                                                                          .cta),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              3.r)),
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      top: 4.h,
                                                                      bottom:
                                                                          4.h,
                                                                      left: 8.w,
                                                                      right:
                                                                          8.w),
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      right:
                                                                          11.w),
                                                              child: Text(
                                                                "Delete",
                                                                style: AppStyle
                                                                    .roboto10w500
                                                                    .copyWith(
                                                                        color: ColorConstant
                                                                            .cta),
                                                                textScaler:
                                                                    const TextScaler
                                                                        .linear(
                                                                        Constants
                                                                            .factor),
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                              ),
                                                            ),
                                                          ),
                                                          InkWell(
                                                            onTap: () {
                                                              Get.toNamed(
                                                                  AppRoutes
                                                                      .addAddressScreen,
                                                                  arguments:
                                                                      controller
                                                                              .addressList[
                                                                          index]);
                                                            },
                                                            child: Container(
                                                              decoration: BoxDecoration(
                                                                  border: Border.all(
                                                                      color: ColorConstant
                                                                          .secondaryColor),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              3.r)),
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      top: 4.h,
                                                                      bottom:
                                                                          4.h,
                                                                      left: 8.w,
                                                                      right:
                                                                          8.w),
                                                              child: Text(
                                                                "Edit",
                                                                style: AppStyle
                                                                    .roboto10w500
                                                                    .copyWith(
                                                                        color: ColorConstant
                                                                            .secondaryColor),
                                                                textScaler:
                                                                    const TextScaler
                                                                        .linear(
                                                                        Constants
                                                                            .factor),
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ]),
                                  ),
                                ),
                              ));
                        },
                      ),
                    )
                  ],
                ),
                bottomNavigationBar: Visibility(
                  visible: controller.isLoading.value ? false : true,
                  child: Container(
                    color: Theme.of(context).colorScheme.background,
                    padding: EdgeInsets.only(
                        left: 16.w, right: 16.w, bottom: 12.h, top: 12.h),
                    child: CustomElevatedButton(
                        onTap: () {
                          if (isFromDonateField) {
                            if (int.tryParse(controller.selectedIndex.value) !=
                                    null &&
                                controller.addressList.length >
                                    int.parse(controller.selectedIndex.value)) {
                              Get.find<DonateFieldController>()
                                      .selectedAddressId =
                                  controller
                                      .addressList[int.parse(
                                          controller.selectedIndex.value)]
                                      .id;
                              Get.toNamed(AppRoutes.selectNGOScreen);
                            } else {
                              customSnackBar("Please Select Address",
                                  msgType: MsgType.error);
                            }
                          }
                        },
                        text: "Save And Continue"),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
