import 'package:daan_i_app/core/app_export.dart';
import 'package:daan_i_app/presentation/donar_module/donate_field_screen/donate_field_screen.dart';
import 'package:daan_i_app/widgets/my_widget/custom_image_slider.dart';
import 'package:daan_i_app/widgets/my_widget/custom_image_view.dart';
import 'package:daan_i_app/widgets/my_widget/custom_loader.dart';

import '../../../widgets/app_bar/custom_app_bar.dart';
import 'controller/home_screen_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  //int OverallStreaks=100;

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: HomeScreenTabController(),
        builder: (controller) {
          return Scaffold(
            appBar: CustomAppBar(
              tittle: "Home",
              titleStyle: AppStyle.roboto16w500,
              centerTitle: true,
              isBackBtnVisible: false,
            ),
            body: Obx(() => CustomLoader(
                  isLoading: controller.isLoading.value,
                  child: RefreshIndicator(
                    onRefresh: () => controller.onRefresh(),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          controller.bannerList.isEmpty
                              ? const SizedBox()
                              : SizedBox(
                                  height: 6.h,
                                ),

                          CustomImageSlider(
                              viewportFraction: .89,
                              isAutoSlide: true,
                              bannerImageList: controller.bannerList
                                  .map(
                                    (element) => ImageSliderList(
                                        imgUrl: element.image.toString()),
                                  )
                                  .toList()),

                          SizedBox(
                            height: 10.h,
                          ),

                          // Donate Now section //

                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.w),
                            child: CustomElevatedButton(
                              onTap: () {
                                Get.toNamed(AppRoutes.donateFieldScreen);
                              },
                              padding: EdgeInsets.symmetric(vertical: 10.h),
                              text: "Donate Now",
                            ),
                          ),

                          SizedBox(
                            height: 10.h,
                          ),

                          //! ----- Categoreis section ----->
                          Container(
                            margin: EdgeInsets.only(left: 15.w, bottom: 10),
                            child: const Text(
                              "Category",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                          ),

                          SingleChildScrollView(
                            child: Row(
                              children: [
                                for (int index = 0;
                                    index < controller.categoryList.length;
                                    index++)
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 12.w),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            Get.to(
                                                () => DonateFieldScreen(
                                                      selectedCategory:
                                                          controller
                                                              .categoryList[
                                                                  index]
                                                              .id,
                                                    ),
                                                routeName: AppRoutes
                                                    .donateFieldScreen);
                                          },
                                          child: Container(
                                            decoration: const BoxDecoration(
                                              color: Color.fromARGB(
                                                  255, 245, 228, 248),
                                              shape: BoxShape.circle,
                                            ),
                                            child: CustomImageView(
                                              url: controller
                                                  .categoryList[index].img,
                                              height: 60.r,
                                              width: 60.r,
                                              radius:
                                                  BorderRadius.circular(30.r),
                                            ),
                                          ),
                                        ),
                                        Text(controller
                                            .categoryList[index].categoryName
                                            .toString()),
                                      ],
                                    ),
                                  ),
                              ],
                            ),
                          ),

                          SizedBox(
                            height: 10.h,
                          ),

                          Container(
                            padding: EdgeInsets.symmetric(vertical: 16.h),
                            decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .colorScheme
                                    .primaryContainer
                                    .withOpacity(.5),
                                borderRadius: BorderRadius.circular(10.r)),
                            margin: EdgeInsets.symmetric(
                                horizontal: 12.w, vertical: 10.h),
                            child: Row(
                              children: [
                                //! 1st partition for insight part
                                Expanded(
                                  flex: 45,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.insight,
                                        height: 80.h,
                                      ),
                                      Text(
                                        "Insights",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 18.sp,
                                            letterSpacing: .5),
                                      ),
                                      Center(
                                          child: CustomText(
                                        "Data-driven act of\n kindness",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 12.sp),
                                      )),
                                    ],
                                  ),
                                ),

                                //! 2nd part
                                Expanded(
                                    flex: 55,
                                    child: Wrap(
                                      spacing: 12.r,
                                      runSpacing: 12.r,
                                      direction: Axis.horizontal,
                                      alignment: WrapAlignment.start,
                                      runAlignment: WrapAlignment.start,
                                      children: [
                                        for (int index = 0;
                                            index <
                                                controller.acheiveList.length;
                                            index++)
                                          IntrinsicHeight(
                                            child: Container(
                                                width: ((Get.width - 24.w) *
                                                        0.55 /
                                                        2) -
                                                    12.r,
                                                height: ((Get.width - 24.w) *
                                                        0.55 /
                                                        2) -
                                                    12.r,
                                                decoration: BoxDecoration(
                                                  boxShadow: const [
                                                    BoxShadow(
                                                      blurRadius: 1,
                                                    )
                                                  ],
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .background,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .stretch,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      margin:
                                                          const EdgeInsets.only(
                                                              bottom: 1),
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10),
                                                      child: Text(
                                                        controller
                                                            .acheiveList[index]
                                                            .text
                                                            .toString(),
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: AppStyle
                                                            .montserrat12textOne400,
                                                        maxLines: 3,
                                                      ),
                                                    ),
                                                    Text(
                                                      controller
                                                          .acheiveList[index]
                                                          .count
                                                          .toString(),
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: AppStyle
                                                          .lato14textOne600,
                                                    ),
                                                  ],
                                                )),
                                          ),
                                      ],
                                    ))
                              ],
                            ),
                          ),

                          SizedBox(
                            height: 200.h,
                          )
                        ],
                      ),
                    ),
                  ),
                )),
          );
        });
  }
}
