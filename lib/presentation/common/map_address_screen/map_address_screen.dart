import 'package:daan_i_app/presentation/common/map_address_screen/add_address_screen.dart';
import 'package:daan_i_app/theme/text_scaler.dart';
import 'package:daan_i_app/widgets/my_widget/custom_loader.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../core/app_export.dart';

import '../../../widgets/app_bar/custom_app_bar.dart';
import '../../../widgets/my_widget/custom_image_view.dart';
import 'controller/map_address_controller.dart';

class MapAddressScreen extends GetWidget<MapAddressController> {
  const MapAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: CustomAppBar(height: 48.h, tittle: "Select Location"),
        backgroundColor: ColorConstant.bgOne,
        body: CustomLoader(
          isLoading: controller.isLoading.value,
          child: Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(top: 5.h),
              child: Stack(children: [
                GoogleMap(
                  initialCameraPosition: controller.initialCameraPosition,
                  onMapCreated:
                      (GoogleMapController googleMapController) async {
                    googleMapController.showMarkerInfoWindow(
                      const MarkerId("current_location"),
                    );

                    if (!controller.googleMapController.isCompleted) {
                      controller.googleMapController
                          .complete(googleMapController);
                    }
                  },
                  padding: controller.mapPadding.value,
                  mapType: MapType.normal,
                  compassEnabled: true,
                  zoomControlsEnabled: false,
                  zoomGesturesEnabled: true,
                  myLocationButtonEnabled: false,
                  myLocationEnabled: true,
                  mapToolbarEnabled: false,
                  rotateGesturesEnabled: true,
                  onTap: controller.onMapActivity,
                  markers: Set.from(controller.markers),
                  minMaxZoomPreference: const MinMaxZoomPreference(12, 28),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: InkWell(
                    onTap: () async {
                      // controller.isLoading(true);
                      await controller.getCurrentLocation();
                      // controller.isLoading(false);
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 16.h),
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.background,
                          borderRadius: BorderRadius.circular(20.r)),
                      padding: EdgeInsets.only(
                          top: 6.h, bottom: 6.h, left: 12.w, right: 12.w),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.currentLocation,
                          ),
                          Padding(
                              padding: EdgeInsets.only(left: 8.w),
                              child: Text(
                                "Use my current location",
                                style: AppStyle.roboto12w500,
                                textScaler: customTextScaler,
                              ))
                        ],
                      ),
                    ),
                  ),
                )
              ])),
        ),
        bottomNavigationBar: Obx(
          () => Visibility(
            visible: controller.isLoading.value ? false : true,
            child: Container(
              color: Theme.of(context).colorScheme.background,
              padding: EdgeInsets.only(
                  left: 16.w, right: 16.w, bottom: 12.h, top: 12.h),
              child: CustomElevatedButton(
                  onTap: () {
                    if (controller.selectedLocation != null) {
                      Get.to(() => const AddAddressScreen(),
                          routeName: AppRoutes.addAddressScreen);
                    } else {
                      Fluttertoast.showToast(msg: "Please Slect Location");
                    }
                  },
                  text: "Save And Continue"),
            ),
          ),
        ),
      ),
    );
  }
}
