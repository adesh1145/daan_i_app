import 'package:daan_i_app/widgets/app_bar/custom_app_bar.dart';
import 'package:daan_i_app/widgets/my_widget/custom_image_view.dart';

import '../../../../core/app_export.dart';
import 'controller/select_language_controller.dart';

class SelectLanguageScreen extends GetWidget<SelectLanguageController> {
  const SelectLanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        tittle: AppLocalizations.of(context)!.selectLanguage,
        centerTitle: true,
        isBackBtnVisible: false,
      ),
      // backgroundColor: Theme.of(context).colorScheme.background,
      body: Obx(
        () => Container(
          // color: Theme.of(context).colorScheme.onSurface,
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
          ),
          child: ListView.separated(
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 8.h),
              separatorBuilder: (context, index) {
                return SizedBox(height: 12.h);
              },
              itemCount: controller.languageList.length,
              itemBuilder: (context, index) {
                return Obx(() => InkWell(
                      onTap: () {
                        controller.selectedLanguage.value =
                            controller.languageList[index].locale;
                        controller.changeLanguage();
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12.w,
                          vertical: 5.h,
                        ),
                        decoration: controller.languageList[index].locale ==
                                controller.selectedLanguage.value
                            ? AppDecoration.border2PrimaryRounded12
                            : AppDecoration.border2OutlineRounded12,
                        child: Row(
                          children: [
                            Radio(
                              value: controller.languageList[index].locale,
                              groupValue: controller.selectedLanguage.value,
                              onChanged: (value) {
                                controller.selectedLanguage.value =
                                    value ?? controller.selectedLanguage.value;
                                controller.changeLanguage();
                              },
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomText(
                                      controller.languageList[index].title),
                                  CustomImageView(
                                    svgPath: ImageConstant.indiaFlag,
                                    height: 25.h,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ));
              }),
        ),
      ),

      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            child: CustomElevatedButtonWithIcon(
              onTap: () => controller.isLogin == true
                  ? Get.back()
                  : Get.toNamed(AppRoutes.loginScreen),
              suffixWidget: Icon(
                Icons.chevron_right,
                color: Theme.of(context).colorScheme.background,
              ),
              text: AppLocalizations.of(context)!.continueTxt,
            ),
          ),
        ],
      ),
    );
  }
}
