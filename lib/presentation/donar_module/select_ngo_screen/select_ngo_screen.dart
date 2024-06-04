import 'package:daan_i_app/widgets/my_widget/custom_loader.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../../core/app_export.dart';
import '../../../../widgets/app_bar/custom_app_bar.dart';
import '../../../../widgets/custom_pick_drop_text.dart';
import '../../../../widgets/data_not_found.dart';
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
                            child: CustomPickupDropText(
                              "Meerut",
                              "Adesh NGO",
                              "Pick-up",
                              "Destination",
                            ),
                          ),
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
                                // Obx(
                                //   () =>
                                false
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
                                        separatorBuilder: (context, index) {
                                          return SizedBox(height: 7.h);
                                        },
                                        itemCount: 5,
                                        itemBuilder: (context, index) {
                                          return CategoryListWidget(index);
                                        }),
                                // ),
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
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }

  CategoryListWidget(index) {
    // JSONData categoryData;
    // final controller = Get.put(SelectAmbulanceController());
    // int index = 0;

    return Obx(() => InkWell(
        onTap: () {
        
        },
        child: Padding(
          padding: EdgeInsets.only(left: 0, top: 0, right: 16.w, bottom: 0.h),
          child: Container(
            decoration: controller.isSelectedIndex.value == index
                ? BoxDecoration(
                    border: Border.all(
                      color: Theme.of(Get.context!).colorScheme.primary,
                    ),
                  )
                : BoxDecoration(
                    border: Border.all(
                      color: Theme.of(Get.context!).colorScheme.outline,
                    ),
                    borderRadius: BorderRadiusStyle.roundedBorder6,
                  ),
            child: Padding(
              padding: EdgeInsets.only(bottom: 12.h),
              child: IntrinsicHeight(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 12.h, left: 12.w),
                        child: Container(
                          padding: EdgeInsets.all(4.w),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child: CustomImageView(
                            url: UrlConstants.baseUrl,
                            height: 30.w,
                            width: 30.w,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 12.w, top: 12.h),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Text(
                                      "NGO Name",
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
                              flex: 0,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 12.w,
                                  top: 4.h,
                                  right: 12.w,
                                ), //bottom: 12.h
                                child: Text(
                                  "NGo Full Address",
                                  textScaler:
                                      TextScaler.linear(Constants.factor),
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
        )));
  }
}
