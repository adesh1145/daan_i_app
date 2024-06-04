import 'package:daan_i_app/presentation/donar_module/map_address_screen/controller/map_address_controller.dart';
import 'package:daan_i_app/presentation/donar_module/map_address_screen/map_address_screen.dart';
import 'package:daan_i_app/widgets/my_widget/custom_drop_down.dart';
import 'package:daan_i_app/widgets/my_widget/custom_loader.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../core/app_export.dart';
import '../../../data/models/donar_models/address_model.dart';
import '../../../widgets/app_bar/custom_app_bar.dart';
import '../../../widgets/my_widget/custom_text_form_field.dart';

class AddAddressScreen extends StatelessWidget {
  const AddAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: MapAddressController(),
        builder: (controller) {
          return Obx(
            () => Scaffold(
              appBar: const CustomAppBar(tittle: "Address"),
              backgroundColor: ColorConstant.bgOne,
              body: CustomLoader(
                isLoading: controller.isLoading.value,
                child: SingleChildScrollView(
                  child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.only(left: 16.w, right: 16.w, bottom: 16.h),
                    // decoration: AppDecoration.whiteFill,
                    child: Form(
                      key: controller.addressFormKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 11.h, top: 10.h),
                            child: Text(
                              "Enter Address Details",
                              textScaler: TextScaler.linear(Constants.factor),
                              style: AppStyle.roboto16w900,
                            ),
                          ),
                          CustomTextFormField(
                            hintText: "Name* ",
                            labelText: "Name* ",
                            controller: controller.nameController,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.name,
                            prefixIcon: Icon(Icons.abc),
                            validator: (p0) =>
                                p0 != null && p0.isEmpty ? "Enter Name" : null,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          CustomTextFormField(
                            hintText: " Phone number",
                            labelText: " Phone number",
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              LengthLimitingTextInputFormatter(10)
                            ],
                            prefixIcon: const Icon(Icons.phone),
                            controller: controller.mobileNumberController,
                            validator: (p0) =>
                                p0 != null && (p0.isEmpty || p0.length != 10)
                                    ? "Enter 10 Digit Mobile Number"
                                    : null,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: CustomDropDown(
                                  dropDownList: controller.stateList
                                      .map(
                                        (element) => KeyValue(
                                            id: element.id,
                                            label: element.name.toString()),
                                      )
                                      .toList(),
                                  initialValue: Rxn(controller.selectedState),
                                  title: "State",
                                  onChanged: (newValueId) {
                                    controller.selectedState = newValueId;
                                    controller.selectedCity = null;
                                    controller.cityList.clear();
                                    controller.getCityApi(newValueId ?? 0);
                                  },
                                  errorMessage: "Select State",
                                ),
                              ),
                              SizedBox(
                                width: 12.w,
                              ),
                              Expanded(
                                child: CustomDropDown(
                                  dropDownList: controller.cityList
                                      .map(
                                        (element) => KeyValue(
                                            id: element.id,
                                            label: element.name.toString()),
                                      )
                                      .toList(),
                                  initialValue: Rxn(controller.selectedCity),
                                  title: "City",
                                  onChanged: (newValueId) {
                                    controller.selectedCity = newValueId;
                                  },
                                  errorMessage: "Select City",
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          CustomTextFormField(
                            hintText: "234, XYZ Nagar, MH Road, Near xyz",
                            labelText:
                                "House number, building name, flat no. etc",
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.streetAddress,
                            controller: controller.houseNoController,
                            validator: (p0) => p0 != null && p0.isEmpty
                                ? "Enter House No"
                                : null,
                            maxLine: 3,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          CustomTextFormField(
                            hintText: "Landmark (Optional)",
                            labelText: "Landmark",
                            textInputAction: TextInputAction.done,
                            keyboardType: TextInputType.streetAddress,
                            controller: controller.landMarkController,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          CustomTextFormField(
                            hintText: "Pin Code",
                            labelText: "Pin Code",
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              LengthLimitingTextInputFormatter(6)
                            ],
                            prefixIcon: const Icon(Icons.pin),
                            controller: controller.pinCodeController,
                            validator: (p0) =>
                                p0 != null && p0.isEmpty && p0.length != 6
                                    ? "Enter Pincode"
                                    : null,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          CustomTextFormField(
                            onTap: () {
                              if (controller.arguments != null) {
                                // controller.updateMarkers(
                                //     controller.selectedLocation ??
                                //         LatLng(0.0, 0.0));
                                Get.to(
                                    () => MapAddressScreen(
                                          latLng: controller.selectedLocation,
                                        ),
                                    routeName: AppRoutes.mapAddressScreen);
                              } else {
                                Get.back();
                              }
                            },
                            hintText: "Location Latitde,Longitude",
                            labelText: "Location Latitde,Longitude",
                            prefixIcon: const Icon(Icons.my_location_rounded),
                            controller: TextEditingController(
                                text: "${controller.selectedLocation ?? ""}"),
                            readOnly: true,
                            validator: (p0) =>
                                p0 != null && p0.isEmpty && p0.length != 6
                                    ? "Select Location"
                                    : null,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
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
                          if (controller.addressFormKey.currentState
                                  ?.validate() ??
                              false) {
                            if (controller.arguments != null) {
                              controller.updateAddressApi(
                                  (controller.arguments as Address).id ?? 0);
                            } else {
                              controller.addAddressApi();
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
