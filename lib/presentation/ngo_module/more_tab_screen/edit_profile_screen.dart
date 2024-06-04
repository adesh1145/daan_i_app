import 'package:daan_i_app/core/app_export.dart';
import 'package:daan_i_app/presentation/donar_module/cust_profile_tab_screen/controller/cust_profile_tab_controller.dart';
import 'package:daan_i_app/widgets/app_bar/custom_app_bar.dart';
import 'package:daan_i_app/widgets/my_widget/custom_image_view.dart';
import 'package:daan_i_app/widgets/my_widget/custom_loader.dart';
import 'package:daan_i_app/widgets/my_widget/custom_text_form_field.dart';

class NgoProfileTabEditProfileScreen extends StatelessWidget {
  NgoProfileTabEditProfileScreen({super.key});
  final updateFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        tittle: "Edit Profile",
      ),
      body: GetBuilder(
          init: NgoProfileTabController(),
          builder: (controller) {
            return Obx(
              () => CustomLoader(
                isLoading: controller.isLoading.value,
                child: SingleChildScrollView(
                  child: Form(
                    key: updateFormKey,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 10.h,
                          ),
                          child: CustomImageView(
                            imagePath: ImageConstant.appLogo,
                            url: controller.donarDetail.value.profileImage !=
                                    null
                                ? "${UrlConstants.baseUrl}${controller.donarDetail.value.profileImage}"
                                : null,
                            file: controller.image.imgFile.value,
                            placeHolder: ImageConstant.appLogo,
                            radius: BorderRadius.circular(50.r),
                            height: 100.r,
                            width: 100.r,
                            fit: BoxFit.cover,
                            onTap: () {},
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              controller.image.imagePickerBottomSheet();
                            },
                            child: Text("Edit")),
                        //! 1st textfield
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 10.h),
                          child: CustomTextFormField(
                            controller: controller.emailCOntroller,
                            readOnly: true,
                            labelText: "Email",
                            prefixIcon: Icon(Icons.email),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 10.h),
                          child: CustomTextFormField(
                            controller: controller.mobileCOntroller,
                            readOnly: true,
                            labelText: "NGO Owner Name",
                            prefixIcon: Icon(Icons.face),
                          ),
                        ),

                        //! 2nd textfield

                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 10.h),
                          child: CustomTextFormField(
                            controller: controller.nameCOntroller,
                            keyboardType: TextInputType.name,
                            textInputAction: TextInputAction.next,
                            labelText: "NGO Name",
                            prefixIcon: Icon(Icons.abc),
                            validator: (p0) => p0 != null && p0.isEmpty
                                ? "Please Enter NGO Name"
                                : null,
                          ),
                        ),

                        //! 3rd textfield
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 10.h),
                          child: CustomTextFormField(
                            keyboardType: TextInputType.name,
                            textInputAction: TextInputAction.done,
                            controller: controller.bioCOntroller,
                            hintText: "Write About here........",
                            validator: (p0) => p0 != null && p0.isEmpty
                                ? "Please Enter About of your NGO "
                                : null,
                            maxLine: 6,
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: CustomElevatedButton(
                            padding: EdgeInsets.symmetric(vertical: 10.w),
                            onTap: () {
                              updateFormKey.currentState?.validate() ?? false
                                  ? controller.updateProfileApi()
                                  : null;
                            },
                            text: "Update Profile",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
