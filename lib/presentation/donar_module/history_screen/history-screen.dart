import 'package:daan_i_app/core/app_export.dart';
import 'package:daan_i_app/widgets/app_bar/custom_app_bar.dart';
import 'package:daan_i_app/widgets/my_widget/custom_loader.dart';
import 'package:daan_i_app/widgets/my_widget/data_not_found.dart';

import '../../../core/utils/date_time_utils.dart';
import '../../../widgets/dashed_divider.dart';
import '../../../widgets/my_widget/custom_image_view.dart';
import '../../../widgets/my_widget/custom_pick_drop_text.dart';
import 'controller/history_screen_tab_controller.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(
          tittle: "Donation History",
          isBackBtnVisible: false,
        ),
        body: GetBuilder(
            init: HistoryScreenTabController(),
            builder: (controller) {
              return Obx(() => CustomLoader(
                    isLoading: controller.isLoading.value,
                    child: RefreshIndicator(
                      onRefresh: () => controller.onRefresh(),
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 16.w,
                            right: 16.w,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10.h,
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    InkWell(
                                      onTap: () => {
                                        controller.filter.value = null,
                                        controller.getDonationHistoryApi()
                                      },
                                      child: Container(
                                        margin: EdgeInsets.only(right: 6.w),
                                        padding: EdgeInsets.only(
                                          left: 6.w,
                                          top: 3.h,
                                          right: 6.w,
                                          bottom: 3.h,
                                        ),
                                        decoration: controller.filter.value ==
                                                null
                                            ? BoxDecoration(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder8,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .primary)
                                            : BoxDecoration(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder8,
                                                border: Border.all(
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .outline)),
                                        child: Text(
                                          "All",
                                          textScaleFactor: Constants.factor,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: controller.filter.value == null
                                              ? AppStyle.roboto10Backgroundw500
                                              : AppStyle.roboto10w500.copyWith(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .outline),
                                        ),
                                      ),
                                    ),
                                    for (int index = 0;
                                        index < controller.orderStatus.length;
                                        index++)
                                      InkWell(
                                        onTap: () => {
                                          controller.filter.value =
                                              controller.orderStatus[index],
                                          controller.getDonationHistoryApi()
                                        },
                                        child: Container(
                                          margin: EdgeInsets.only(right: 6.w),
                                          padding: EdgeInsets.only(
                                            left: 6.w,
                                            top: 3.h,
                                            right: 6.w,
                                            bottom: 3.h,
                                          ),
                                          decoration: controller.filter
                                                      .toString() ==
                                                  controller.orderStatus[index]
                                              ? BoxDecoration(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder8,
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .primary)
                                              : BoxDecoration(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder8,
                                                  border: Border.all(
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .outline)),
                                          child: Text(
                                            controller.orderStatus[index],
                                            textScaleFactor: Constants.factor,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: controller.filter
                                                        .toString() ==
                                                    controller
                                                        .orderStatus[index]
                                                ? AppStyle
                                                    .roboto10Backgroundw500
                                                : AppStyle.roboto10w500
                                                    .copyWith(
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .outline),
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                              controller.isLoading.value == false &&
                                      controller.donationList.isEmpty
                                  ? Center(
                                      child: DataNotFound(
                                        tittle: "Donation History Not Found",
                                        istryAgainVisibile: false,
                                        subTittleOne:
                                            "Donation History Not Found",
                                      ),
                                    )
                                  : ListView.builder(
                                      reverse: true,
                                      physics: NeverScrollableScrollPhysics(),
                                      itemCount: controller.donationList.length,
                                      shrinkWrap: true,
                                      itemBuilder: (context, index) {
                                        return InkWell(
                                          onTap: () {},
                                          child: Container(
                                            margin: EdgeInsets.only(
                                              top: 12.h,
                                            ),
                                            padding: EdgeInsets.only(
                                              top: 20.h,
                                              left: 16.w,
                                              right: 16.w,
                                            ),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(14.r),
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .background,
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 8.r,
                                                    spreadRadius: 0.1,
                                                    blurStyle: BlurStyle.outer,
                                                    offset: const Offset(0, 5),
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .onBackground,
                                                  )
                                                ]),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  //  mainAxisAlignment:
                                                  //      MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    const Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 10),
                                                      child: Text("Status:"),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 8.w, top: 2.h),
                                                      child: CustomImageView(
                                                          width: 16.r,
                                                          height: 16.r,
                                                          svgPath: controller.donationList[index].orderStatus ==
                                                                      "cancel" ||
                                                                  controller
                                                                          .donationList[
                                                                              index]
                                                                          .orderStatus ==
                                                                      "reject"
                                                              ? ImageConstant
                                                                  .error
                                                              : controller
                                                                          .donationList[
                                                                              index]
                                                                          .orderStatus ==
                                                                      "complete"
                                                                  ? ImageConstant
                                                                      .success
                                                                  : ImageConstant
                                                                      .infoGrey,
                                                          color: (controller
                                                                          .donationList[
                                                                              index]
                                                                          .orderStatus ==
                                                                      "cancel" ||
                                                                  controller
                                                                          .donationList[
                                                                              index]
                                                                          .orderStatus ==
                                                                      "reject" ||
                                                                  controller
                                                                          .donationList[
                                                                              index]
                                                                          .orderStatus ==
                                                                      "complete")
                                                              ? null
                                                              : ColorConstant
                                                                  .orangeOne),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 6.w),
                                                      child: CustomText(
                                                        controller
                                                            .donationList[index]
                                                            .orderStatus
                                                            .toString(),
                                                        style: AppStyle
                                                            .roboto12w500
                                                            .copyWith(
                                                                color: controller.donationList[index].orderStatus ==
                                                                            "cancel" ||
                                                                        controller.donationList[index].orderStatus ==
                                                                            "reject"
                                                                    ? ColorConstant
                                                                        .error
                                                                    : controller.donationList[index].orderStatus ==
                                                                            "complete"
                                                                        ? ColorConstant
                                                                            .success
                                                                        : ColorConstant
                                                                            .orangeOne),
                                                      ),
                                                    ),
                                                    Spacer(),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          right: 10.w),
                                                      child: Text(
                                                        controller
                                                                .donationList[
                                                                    index]
                                                                .categoryDetail
                                                                ?.categoryName ??
                                                            "",
                                                        style: AppStyle
                                                            .montserrat13textOne500,
                                                      ),
                                                    ),
                                                    const Icon(
                                                        Icons.chevron_right),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 12.h, bottom: 12.h),
                                                  child: DashedDivider(
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .outline,
                                                    thickness: 1,
                                                    height: 1,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 4.h),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        "Donate Date & Time",
                                                        style: AppStyle
                                                            .montserrat11textOne400,
                                                      ),
                                                      Expanded(
                                                          child: Text(
                                                        "Order ID",
                                                        style: AppStyle
                                                            .montserrat11textOne400,
                                                        textAlign:
                                                            TextAlign.end,
                                                      )),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 4.h),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        stringToDDMMMYYYY(
                                                                date: controller
                                                                    .donationList[
                                                                        index]
                                                                    .createdDate
                                                                    .toString()
                                                                    .toString())
                                                            .toString(),
                                                        style: AppStyle
                                                            .roboto13onBackgroundw500,
                                                      ),
                                                      Expanded(
                                                        child: Text(
                                                            controller
                                                                    .donationList[
                                                                        index]
                                                                    .orderId ??
                                                                "",
                                                            textAlign:
                                                                TextAlign.end,
                                                            style: AppStyle
                                                                .roboto13onBackgroundw500
                                                                .copyWith(
                                                                    color: Colors
                                                                        .black)),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 13.h, bottom: 10),
                                                  child: CustomPickupDropText(
                                                    "${controller.donationList[index].pickupAddress?.address ?? ""} ${controller.donationList[index].pickupAddress?.cityDetail?.name ?? ""} ${controller.donationList[index].pickupAddress?.stateDetail?.name ?? ""} ${controller.donationList[index].pickupAddress?.pincode ?? ""}",
                                                    "${controller.donationList[index].ngoDetail?.ngoName ?? ""} ${controller.donationList[index].ngoDetail?.address ?? ""} ${controller.donationList[index].ngoDetail?.cityDetail?.name ?? ""} ${controller.donationList[index].ngoDetail?.stateDetail?.name ?? ""} ${controller.donationList[index].ngoDetail?.pincode ?? ""}",
                                                    "Pick-up",
                                                    "Destination",
                                                  ),

                                                  //  Row(
                                                  //   children: [
                                                  //     Icon(Icons.location_on),
                                                  //     Expanded(
                                                  //         child: Text(
                                                  //       controller.donationList[index]
                                                  //           .pickupAddress
                                                  //           .toString(),
                                                  //       style: AppStyle
                                                  //           .roboto13onBackgroundw500
                                                  //           .copyWith(
                                                  //               color:
                                                  //                   Colors.black87),
                                                  //     )),
                                                  //   ],
                                                  // ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      }),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ));
            }));
  }
}
