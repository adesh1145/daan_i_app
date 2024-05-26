import 'package:daan_i_app/presentation/common/map_address_screen/controller/map_address_controller.dart';
import 'package:daan_i_app/widgets/custom_drop_down.dart';
import 'package:daan_i_app/widgets/my_widget/custom_loader.dart';

import '../../../core/app_export.dart';
import '../../../widgets/app_bar/custom_app_bar.dart';
import '../../../widgets/my_widget/custom_text_form_field.dart';

class AddAddressScreen extends GetWidget<MapAddressController> {
  const AddAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: const CustomAppBar(tittle: "Address"),
        backgroundColor: ColorConstant.bgOne,
        body: CustomLoader(
          isLoading: controller.isLoading.value,
          child: SingleChildScrollView(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 16.h),
              // decoration: AppDecoration.whiteFill,
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
                    controller: controller.firstNameController,
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
                        p0 != null && p0.isEmpty && p0.length != 10
                            ? "Enter 10 Digit Mobile Number"
                            : null,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextFormField(
                          hintText: "Pin Code",
                          labelText: "Pin Code",
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(10)
                          ],
                          prefixIcon: const Icon(Icons.pin),
                          controller: controller.mobileNumberController,
                          validator: (p0) =>
                              p0 != null && p0.isEmpty && p0.length != 6
                                  ? "Enter Pincode"
                                  : null,
                        ),
                      ),
                      SizedBox(
                        width: 12.w,
                      ),
                      Expanded(
                        child: CustomDropDown(
                          dropDownList: [],
                          initialValue: Rxn(null),
                          title: "State",
                          onChanged: (newValueId) {},
                          errorMessage: "Slect State",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomDropDown(
                    dropDownList: [],
                    initialValue: Rxn(null),
                    title: "City",
                    onChanged: (newValueId) {},
                    errorMessage: "Select City",
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomTextFormField(
                    hintText: "234, XYZ Nagar, MH Road, Near xyz",
                    labelText: "House number, building name, flat no. etc",
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.streetAddress,
                    controller: controller.mobileNumberController,
                    validator: (p0) =>
                        p0 != null && p0.isEmpty && p0.length != 6
                            ? "Enter Pincode"
                            : null,
                    maxLine: 3,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  CustomTextFormField(
                    hintText: "Landmark",
                    labelText: "Landmark",
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.streetAddress,
                    controller: controller.mobileNumberController,
                    validator: (p0) =>
                        p0 != null && p0.isEmpty && p0.length != 6
                            ? "Enter Pincode"
                            : null,
                  ),
                ],
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
              child:
                  CustomElevatedButton(onTap: () {}, text: "Save And Continue"),
            ),
          ),
        ),
      ),
    );
  }
}
