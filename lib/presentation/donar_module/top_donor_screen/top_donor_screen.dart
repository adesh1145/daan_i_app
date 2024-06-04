import 'package:daan_i_app/core/app_export.dart';
import 'package:daan_i_app/widgets/app_bar/custom_app_bar.dart';
import 'package:daan_i_app/widgets/my_widget/custom_image_view.dart';

import '../../../widgets/dashed_divider.dart';
import 'controller/top_donor_screen_tab_controller.dart';

class TopDonorScreen extends StatelessWidget {
  const TopDonorScreen({super.key});

  final int rank = 1;
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: TopDonorTabController(),
        builder: (controller) {
          return Obx(
            () => Scaffold(
              appBar: const CustomAppBar(
                tittle: "Top Donor List",
              ),

              // body
              body: RefreshIndicator(
                onRefresh: () => controller.onRefresh(),
                child: ListView.builder(
                  itemCount: controller.toDonar.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.only(
                        top: 10.h,
                        left: 10.w,
                        right: 10.w,
                      ),
                      margin: EdgeInsets.only(
                        left: 15.w,
                        bottom: 13.h,
                        right: 15.w,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14.r),
                          color: Theme.of(context).colorScheme.background,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 8.r,
                              spreadRadius: 0.1,
                              blurStyle: BlurStyle.outer,
                              offset: const Offset(0, 5),
                              color: Theme.of(context).colorScheme.onBackground,
                            )
                          ]),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // for status part
                          // Row(
                          //   crossAxisAlignment: CrossAxisAlignment.start,
                          //   mainAxisAlignment: MainAxisAlignment.start,
                          //   children: [
                          //     const Padding(
                          //       padding: EdgeInsets.only(right: 10),
                          //       child: Text("Status"),
                          //     ),
                          //     Padding(
                          //       padding: EdgeInsets.only(right: 8.w, top: 2.h),
                          //       child: CustomImageView(
                          //         width: 16.w,
                          //         height: 16.w,
                          //         svgPath: ("assets/images/success.svg"),
                          //       ),
                          //     ),

                          //     //for spacing
                          //     const Spacer(),

                          //     const Icon(
                          //       Icons.emoji_events,
                          //       color: Color.fromARGB(255, 246, 190, 24),
                          //       size: 25,
                          //     ),
                          //   ],
                          // ),

                          // for dotted line
                          // Padding(
                          //   padding: EdgeInsets.only(top: 12.h, bottom: 10.h),
                          //   child: DashedDivider(
                          //     color: Theme.of(context).colorScheme.outline,
                          //     thickness: 1,
                          //     height: 1,
                          //   ),
                          // ),

                          // for image part
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  CustomImageView(
                                    alignment: Alignment.topLeft,
                                    radius: BorderRadius.circular(35.r),
                                    height: 70.r,
                                    width: 70.r,
                                    url: controller.toDonar[index].profileImage,
                                    imagePath: ImageConstant.appLogo,
                                    fit: BoxFit.cover,
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(bottom: 2.h, top: 3.h),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Total Donation",
                                          style:
                                              AppStyle.montserrat11textOne400,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 2.h),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          controller
                                              .toDonar[index].totalDonations
                                              .toString(),
                                          style:
                                              AppStyle.roboto13onBackgroundw500,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Expanded(
                                child: Container(
                                    padding: EdgeInsets.only(left: 8.w),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          //Name section
                                          RichText(
                                            // for default color
                                            text: TextSpan(
                                                style: const TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                children: <TextSpan>[
                                                  // TextSpan(
                                                  //   text: "Name : ",
                                                  //   style: AppStyle
                                                  //       .montserrat12textOne400,
                                                  // ),
                                                  TextSpan(
                                                    text: controller
                                                        .toDonar[index].name
                                                        .toString(),
                                                    style: AppStyle
                                                        .roboto13onBackgroundw500,
                                                  )
                                                ]),
                                          ),

                                          const SizedBox(
                                            height: 2,
                                          ),
                                          // Email section
                                          RichText(
                                            text: TextSpan(
                                                style: const TextStyle(
                                                    fontSize: 17),
                                                children: <TextSpan>[
                                                  // TextSpan(
                                                  //   text: "Email : ",
                                                  //   style: AppStyle
                                                  //       .montserrat12textOne400,
                                                  // ),
                                                  TextSpan(
                                                    text:
                                                        "${controller.toDonar[index].email.toString().substring(0, 5)}xxxxx@gmail.com",
                                                    style: AppStyle
                                                        .roboto13onBackgroundw500
                                                        .copyWith(
                                                            color: Colors.blue),
                                                  )
                                                ]),
                                          ),

                                          const SizedBox(
                                            height: 2,
                                          ),
                                          // Bio Section
                                          RichText(
                                            // for default color
                                            text: TextSpan(
                                              style: AppStyle
                                                  .montserrat12textOne400,
                                              children: <TextSpan>[
                                                TextSpan(
                                                  text: "Bio: ",
                                                  style: AppStyle
                                                      .roboto13onBackgroundw500,
                                                ),
                                                TextSpan(
                                                  text:
                                                      controller.toDonar[index]
                                                                      .bio ==
                                                                  "" ||
                                                              controller
                                                                      .toDonar[
                                                                          index]
                                                                      .bio ==
                                                                  null
                                                          ? "Not Added Bio"
                                                          : controller
                                                              .toDonar[index]
                                                              .bio,
                                                  style: AppStyle
                                                      .montserrat12textOne400,
                                                )
                                              ],
                                            ),
                                          ),
                                        ])),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          );
        });
  }
}
