import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:daan_i_app/core/app_export.dart';
import 'package:daan_i_app/core/utils/pref_utils.dart';
import 'package:daan_i_app/presentation/donar_module/cust_profile_tab_screen/controller/cust_profile_tab_controller.dart';
import 'package:daan_i_app/presentation/donar_module/cust_profile_tab_screen/cust_profile_tab_change_password_screen.dart';
import 'package:daan_i_app/presentation/donar_module/cust_profile_tab_screen/edit_profile_screen.dart';
import 'package:daan_i_app/widgets/app_bar/custom_app_bar.dart';
import 'package:daan_i_app/widgets/my_widget/custom_image_view.dart';

import '../../../widgets/action_button_bottom_sheet.dart';
import 'ngo_profile_tab_address_screen.dart';

class NgoProfileTabScreen extends StatelessWidget {
  const NgoProfileTabScreen({super.key});

  static const List<String> custProfileTabList = [
    "Edit Profile",
    "Address",
    "Change Password",
    "Language",
    "Logout"
  ];

  static const List<IconData> NgoProfileTabIconList = [
    Icons.manage_accounts,
    Icons.location_city,
    Icons.lock_open,
    Icons.language,
    Icons.logout,
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: NgoProfileTabController(),
        builder: (controller) {
          return Obx(() => Scaffold(
                body: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.h),
                      child: CustomImageView(
                        url: controller.profileImageUrl.value != null
                            ? "${UrlConstants.baseUrl}${controller.profileImageUrl.value}"
                            : null,
                        radius: BorderRadius.circular(50.r),
                        height: 100.r,
                        width: 100.r,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      children: [
                        controller.isLoading.value
                            ? AnimatedTextKit(
                                isRepeatingAnimation: true,
                                repeatForever: true,
                                animatedTexts: [
                                  TyperAnimatedText(
                                    "Loading...",
                                    speed: const Duration(milliseconds: 100),
                                  ),
                                ],
                                onTap: () {},
                              )
                            : Text(
                                controller.donarDetail.value.name ?? "",
                                textScaler: customTextScaler,
                                overflow: TextOverflow.ellipsis,
                              ),
                        controller.isLoading.value
                            ? AnimatedTextKit(
                                isRepeatingAnimation: true,
                                repeatForever: true,
                                animatedTexts: [
                                  TyperAnimatedText(
                                    "Loading...",
                                    speed: const Duration(milliseconds: 100),
                                  ),
                                ],
                                onTap: () {},
                              )
                            : Text(
                                controller.donarDetail.value.mobile ?? "",
                                textScaler: customTextScaler,
                                overflow: TextOverflow.ellipsis,
                              )
                      ],
                    ),
                    Container(
                      decoration: const BoxDecoration(),
                      child: InkWell(
                        onTap: () {
                          Get.toNamed(AppRoutes.custEditProfileScreen)
                              ?.whenComplete(
                                  () => controller.image.imgFile.value = null);
                        },
                        child: const ListTile(
                          leading: Icon(
                            Icons.manage_accounts,
                          ),
                          title: Text("Edit Profile"),
                          trailing: Icon(Icons.chevron_right),
                        ),
                      ),
                    ),
                    // Container(
                    //   decoration: const BoxDecoration(),
                    //   child: InkWell(
                    //     onTap: () {
                    //       // Get.to(const CustProfileTabAddressScreen());
                    //       Get.toNamed(AppRoutes.selectAddressScreen);
                    //     },
                    //     child: const ListTile(
                    //       leading: Icon(
                    //         Icons.location_on,
                    //       ),
                    //       title: Text("Address"),
                    //       trailing: Icon(Icons.chevron_right),
                    //     ),
                    //   ),
                    // ),
                    Container(
                      decoration: const BoxDecoration(),
                      child: InkWell(
                        onTap: () {
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (context) {
                          //   return CustProfileTabChangePasswordScreen();
                          // }));
                          Get.toNamed(AppRoutes.selectNGOScreen);
                        },
                        child: const ListTile(
                          leading: Icon(
                            Icons.lock_open,
                          ),
                          title: Text("Change Password"),
                          trailing: Icon(Icons.chevron_right),
                        ),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(),
                      child: InkWell(
                        onTap: () {
                          Get.toNamed(AppRoutes.selectLanguageScreen,
                              arguments: true);
                        },
                        child: const ListTile(
                          leading: Icon(
                            Icons.language,
                          ),
                          title: Text("Language"),
                          trailing: Icon(Icons.chevron_right),
                        ),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(),
                      child: InkWell(
                        onTap: () {
                          ActionButtonBottomSheet(
                            img: Icon(Icons.logout),
                            heading: "Are You sure to want to Logout?",
                            subHeading:
                                "If 'yes Click Logout Button othwise click on Cancel Button.",
                            rightBtnTxt: "Logout",
                            leftBtnText: "Cancel",
                            ontRightBtnTap: () {
                              AppStorage.clearData();
                              Get.toNamed(AppRoutes.loginScreen);
                            },
                          );
                        },
                        child: const ListTile(
                          leading: Icon(
                            Icons.logout,
                          ),
                          title: Text("Logout"),
                          trailing: Icon(Icons.chevron_right),
                        ),
                      ),
                    ),
                  ],
                ),
              ));
        });
  }
}
