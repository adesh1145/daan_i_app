import 'package:daan_i_app/presentation/donar_module/select_address_screen/controller/select_address_controller.dart';
import 'package:daan_i_app/widgets/my_widget/custom_loader.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../../core/app_export.dart';
import '../../../../widgets/app_bar/custom_app_bar.dart';
import '../../../widgets/my_widget/confirm_donation_dialog.dart';
import '../../../widgets/my_widget/custom_pick_drop_text.dart';
import '../../../widgets/my_widget/data_not_found.dart';
import '../../../widgets/my_widget/custom_image_view.dart';
import 'controller/select_ngo_controller.dart';

class SelectNGOScreen extends GetWidget<SelectNGOController> {
  const SelectNGOScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
          appBar: CustomAppBar(
            tittle: "Select NGO",
          ),
          body: CustomLoader(
            isLoading: controller.isLoading.value,
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Obx(
                    () => GoogleMap(
                      initialCameraPosition:
                          CameraPosition(target: LatLng(0.0, 0.0), zoom: 14),
                      onMapCreated:
                          (GoogleMapController googleMapController) async {
                        if (!controller.googleMapController.isCompleted) {
                          controller.googleMapController
                              .complete(googleMapController);
                        }
                      },
                      onCameraIdle: () async {
                        // print("Idele");
                        // await controller.cameraBound();
                      },
                      markers: controller.markers.toSet(),
                      compassEnabled: true,
                      zoomControlsEnabled: false,
                      zoomGesturesEnabled: true,
                      myLocationButtonEnabled: false,
                      myLocationEnabled: true,
                      mapToolbarEnabled: false,
                      rotateGesturesEnabled: true,
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Scrollbar(
                    // ignore: deprecated_member_use
                    // isAlwaysShown: true,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                              padding: EdgeInsets.only(top: 20.h, left: 16.h),
                              child: Obx(
                                () => CustomPickupDropText(
                                  "${Get.find<SelectAddressController>().addressList[int.parse(Get.find<SelectAddressController>().selectedIndex.value)].address ?? ""} ${Get.find<SelectAddressController>().addressList[int.parse(Get.find<SelectAddressController>().selectedIndex.value)].cityDetail?.name ?? ""} ${Get.find<SelectAddressController>().addressList[int.parse(Get.find<SelectAddressController>().selectedIndex.value)].stateDetail?.name ?? ""} ${Get.find<SelectAddressController>().addressList[int.parse(Get.find<SelectAddressController>().selectedIndex.value)].pincode ?? ""}",
                                  controller.selectedIndex.value >= 0
                                      ? "${controller.ngoList[controller.selectedIndex.value].ngoName ?? ""} ${controller.ngoList[controller.selectedIndex.value].address ?? ""} ${controller.ngoList[controller.selectedIndex.value].cityDetail?.name ?? ""} ${controller.ngoList[controller.selectedIndex.value].stateDetail?.name ?? ""} ${controller.ngoList[controller.selectedIndex.value].pincode ?? ""}"
                                      : "Select NGO",
                                  "Pick-up",
                                  "Destination",
                                ),
                              )),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 16.h,
                              left: 16.w,
                            ),
                            child: Column(
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          bottom: 16.h, right: 16.w),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Select NGO",
                                            textScaler: customTextScaler,
                                            style: AppStyle.lato14textOne800,
                                          ),
                                        ],
                                      ),
                                    )),
                                Obx(
                                  () =>
                                      controller.isLoading.value == false &&
                                              controller.ngoList.isEmpty
                                          ? Center(
                                              child: DataNotFound(
                                                istryAgainVisibile: false,
                                                tittle: "No NGO Found Near You",
                                                subTittleOne:
                                                    "Sorry ! we could not find any ngo ",
                                                subTittleTwo: "Try Again",
                                              ),
                                            )
                                          : ListView.separated(
                                              physics: const ScrollPhysics(),
                                              scrollDirection: Axis.vertical,
                                              shrinkWrap: true,
                                              separatorBuilder:
                                                  (context, index) {
                                                return SizedBox(height: 7.h);
                                              },
                                              itemCount:
                                                  controller.ngoList.length,
                                              itemBuilder: (context, index) {
                                                return Obx(() => Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 0,
                                                          top: 0,
                                                          right: 16.w,
                                                          bottom: 0.h),
                                                      child: InkWell(
                                                        onTap: () {
                                                          controller
                                                              .selectedIndex
                                                              .value = index;
                                                        },
                                                        child: Container(
                                                          decoration: controller
                                                                      .selectedIndex
                                                                      .value ==
                                                                  index
                                                              ? BoxDecoration(
                                                                  border: Border.all(
                                                                      color: Theme.of(
                                                                              Get.context!)
                                                                          .colorScheme
                                                                          .primary,
                                                                      width: 2),
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder6,
                                                                )
                                                              : BoxDecoration(
                                                                  border: Border
                                                                      .all(
                                                                    color: Theme.of(
                                                                            Get.context!)
                                                                        .colorScheme
                                                                        .outline,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder6,
                                                                ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    bottom:
                                                                        12.h),
                                                            child:
                                                                IntrinsicHeight(
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceEvenly,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsets.only(
                                                                          top: 12
                                                                              .h,
                                                                          left:
                                                                              12.w),
                                                                      child:
                                                                          Container(
                                                                        padding:
                                                                            EdgeInsets.all(4.w),
                                                                        decoration:
                                                                            BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder8),
                                                                        child:
                                                                            CustomImageView(
                                                                          url: UrlConstants.baseUrl +
                                                                              controller.ngoList[index].ngoImage.toString(),
                                                                          height:
                                                                              30.w,
                                                                          width:
                                                                              30.w,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Expanded(
                                                                      child:
                                                                          Column(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children: [
                                                                          Padding(
                                                                            padding:
                                                                                EdgeInsets.only(left: 12.w, top: 12.h),
                                                                            child:
                                                                                Row(
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              children: [
                                                                                Expanded(
                                                                                  flex: 1,
                                                                                  child: Text(
                                                                                    controller.ngoList[index].ngoName.toString(),
                                                                                    maxLines: 2,
                                                                                    textScaler: customTextScaler,
                                                                                    overflow: TextOverflow.ellipsis,
                                                                                    textAlign: TextAlign.left,
                                                                                    style: AppStyle.roboto13w700,
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Expanded(
                                                                            flex:
                                                                                0,
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsets.only(
                                                                                left: 12.w,
                                                                                top: 4.h,
                                                                                right: 12.w,
                                                                              ), //bottom: 12.h
                                                                              child: Text(
                                                                                "${controller.ngoList[index].address ?? ""} ${controller.ngoList[index].cityDetail?.name ?? ""} ${controller.ngoList[index].stateDetail?.name ?? ""} ${controller.ngoList[index].pincode ?? ""}",
                                                                                textScaler: customTextScaler,
                                                                                maxLines: 5,
                                                                                textAlign: TextAlign.left,
                                                                                overflow: TextOverflow.ellipsis,
                                                                                style: AppStyle.roboto10w400,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ]),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ));
                                              }),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: Obx(
            () => Visibility(
              visible: controller.isLoading.value ? false : true,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.w),
                    child: CustomElevatedButton(
                      text: "Donate ",
                      onTap: () {
                        if (controller.selectedIndex.value >= 0) {
                          controller.donateAPi();
                        } else {
                          customSnackBar(
                              "Please Select Ngo Where you Want To Donate",
                              msgType: MsgType.warning);
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
