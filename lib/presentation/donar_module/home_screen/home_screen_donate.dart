import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/app_bar/custom_app_bar.dart';
import '../../../widgets/my_widget/custom_image_view.dart';
import 'controller/home_screen_controller.dart';

// ignore: must_be_immutable
class HomeDonateScreen extends GetWidget<HomeScreenTabController> {
  HomeDonateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        tittle: "Donate Now",
      ),
      body: Obx(() => SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //! Selected Category
                Container(
                  margin: const EdgeInsets.only(
                      left: 14, right: 12, bottom: 10, top: 10),
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color.fromARGB(255, 62, 56, 56)),
                      borderRadius: BorderRadius.circular(10)),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                        isExpanded: true,
                        value: controller.selecteCategory.value,
                        hint: Text("Select Category"),
                        items: controller.donateCategory.map((e) {
                          return DropdownMenuItem<String>(
                            value: e,
                            child: Text(e),
                          );
                        }).toList(),
                        onChanged: (v) {
                          controller.selecteCategory.value = v;
                        }),
                  ),
                ),

                //! Quantity textfield
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: "Quantity(Optional)",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),

                //! Weight textfield

                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: "Weight Approx(in kg)*",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                  ),
                ),

                //! Next button
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: CustomElevatedButton(
                    padding: EdgeInsets.symmetric(vertical: 10.w),
                    onTap: () {},
                    text: "Next",
                  ),
                )
              ],
            ),
          )),
    );
  }
}
