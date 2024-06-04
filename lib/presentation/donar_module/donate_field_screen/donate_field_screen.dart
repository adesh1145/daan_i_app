import 'package:daan_i_app/presentation/donar_module/home_screen/controller/home_screen_controller.dart';
import 'package:daan_i_app/presentation/donar_module/select_address_screen/select_address_screen.dart';
import 'package:daan_i_app/widgets/my_widget/custom_drop_down.dart';
import 'package:daan_i_app/widgets/my_widget/custom_text_form_field.dart';

import '../../../core/app_export.dart';
import '../../../widgets/app_bar/custom_app_bar.dart';
import '../../../widgets/my_widget/upload_image_widget.dart';
import 'controller/donate_field_controller.dart';

// ignore: must_be_immutable
class DonateFieldScreen extends StatelessWidget {
  const DonateFieldScreen({super.key, this.selectedCategory});
  final int? selectedCategory;
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: DonateFieldController(),
        didChangeDependencies: (state) {
          state.controller?.selectedCategory = selectedCategory;
        },
        builder: (controller) {
          return Scaffold(
            appBar: const CustomAppBar(
              tittle: "Donate Now",
            ),
            body: Obx(() => Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                  child: Form(
                    key: controller.donateFormKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomDropDown(
                          dropDownList: Get.find<HomeScreenTabController>()
                              .categoryList
                              .map(
                                (element) => KeyValue(
                                    id: element.id,
                                    label: element.categoryName.toString()),
                              )
                              .toList(),
                          initialValue: Rxn(controller.selectedCategory),
                          title: "Category",
                          onChanged: (newValueId) {
                            controller.selectedCategory = newValueId;
                          },
                          errorMessage: "Select Category",
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        //! Weight textfield

                        CustomTextFormField(
                          hintText: "Weight Approx(in kg)*",
                          labelText: "Weight Approx(in kg)*",
                          keyboardType: TextInputType.number,
                          controller: controller.weightController,
                          validator: (p0) => p0 != null && p0.isNotEmpty
                              ? null
                              : p0 == "0" || p0 == "0.0"
                                  ? "Enter Weight In Kg"
                                  : "Enter Weight",
                          // inputFormatters: [],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        CustomTextFormField(
                            hintText: "Description*",
                            labelText: "Description*",
                            keyboardType: TextInputType.streetAddress,
                            controller: controller.descriptionController,
                            maxLine: 3,
                            validator: (p0) => p0 != null && p0.isNotEmpty
                                ? null
                                : "Enter Description"),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          "Add Minimum 3 Image",
                          textScaler: customTextScaler,
                          style: AppStyle.roboto12w600,
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        SingleChildScrollView(
                          child: Row(
                            children: [
                              for (int index = 0;
                                  index < controller.imageList.length;
                                  index++)
                                UploadImage(
                                  file:
                                      controller.imageList[index].imgFile.value,
                                  onTap: () {
                                    controller.imageList[index]
                                        .imagePickerBottomSheet();
                                  },
                                )
                            ],
                          ),
                        ),

                        SizedBox(
                          height: 10.h,
                        ),

                        //! Next button
                      ],
                    ),
                  ),
                )),
            bottomSheet: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              child: CustomElevatedButton(
                padding: EdgeInsets.symmetric(vertical: 10.w),
                onTap: () {
                  if (controller.donateFormKey.currentState?.validate() ??
                      false) {
                    if (controller.imageList[0].imgFile.value == null) {
                      customSnackBar("Add at Least 1 Image",
                          msgType: MsgType.error);
                    } else {
                      Get.to(
                          () => SelectAddressScreen(
                                isFromDonateField: true,
                              ),
                          routeName: AppRoutes.selectAddressScreen);
                    }
                  }
                },
                text: "Next",
              ),
            ),
          );
        });
  }
}
