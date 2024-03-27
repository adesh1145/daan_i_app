// import 'package:carousel_slider/carousel_slider.dart';

import 'dart:async';
import '../../../../../core/app_export.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import 'custom_image_view.dart';

class CustomImageSlider extends StatefulWidget {
  CustomImageSlider({
    super.key,
    required this.bannerImageList,
    this.height,
    this.radius,
    this.viewportFraction,
    this.whenCompleteNextRoute,
    this.isAutoSlide = false,
    this.inImageSliderPoint = false,
  });
  final List<ImageSliderList> bannerImageList;

  final double? radius;
  final double? height;
  final double? viewportFraction;
  final bool isAutoSlide;
  final bool inImageSliderPoint;
  final VoidCallback? whenCompleteNextRoute;
  @override
  State<CustomImageSlider> createState() => _CustomImageSliderState();
}

class _CustomImageSliderState extends State<CustomImageSlider> {
  Rx<PageController> pageController = PageController(
    initialPage: 0,
    viewportFraction: 0.92,
  ).obs;
  RxInt bannerSectionNumer = 0.obs;
  RxInt bannerLength = 0.obs;

  @override
  void initState() {
    pageController.value = PageController(
      initialPage: 0,
      viewportFraction: (widget.viewportFraction ?? 0) > 1 ||
              (widget.viewportFraction ?? 0) < 0
          ? 1
          : widget.viewportFraction ?? .92,
    );
    super.initState();
    if (widget.isAutoSlide) {
      autoScroller();
    }
  }

  autoScroller() {
    Timer.periodic(Duration(seconds: 4), (timer) async {
      try {
        if (((pageController.value.page!.round()) + 1) % bannerLength.value ==
            0) {
          pageController.value.jumpToPage(
            ((pageController.value.page!.round()) + 1) % bannerLength.value,
          );
        } else {
          await pageController.value.animateToPage(
              ((pageController.value.page?.round() ?? 0) + 1) %
                  bannerLength.value,
              duration: Duration(milliseconds: 500),
              curve: Curves.linear);
        }
      } catch (e) {}
    });
  }

  @override
  Widget build(BuildContext context) {
    bannerLength.value = widget.bannerImageList.length;

    return Column(
      children: [
        Stack(children: [
          Container(
            // width: double.maxFinite,
            height: widget.height ?? 150.h,
            // decoration: AppDecoration.fillWhite,
            child: PageView.builder(
              controller: pageController.value,
              // controller: PageController(
              //   viewportFraction: 0.95,
              // ),

              padEnds: false,

              onPageChanged: (value) {
                bannerSectionNumer.value = value;
              },
              itemCount: widget.bannerImageList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(right: 16.w),
                  child: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(widget.radius ?? 12.r),
                      child: InkWell(
                        onTap: widget.bannerImageList[index].pageType == null ||
                                widget.bannerImageList[index].imageId == null
                            ? null
                            : () {},
                        child: CustomImageView(
                          url: UrlConstants.imageUrl +
                              widget.bannerImageList[index].imgUrl.toString(),
                          // svgPath: widget.bannerImageList[index],
                          height: widget.height ?? 170.h,
                          fit: BoxFit.fill,
                        ),
                      )),
                );
              },
            ),
          ),
        ]),
        Visibility(
          visible: !widget.inImageSliderPoint,
          child: Container(
              margin: EdgeInsets.only(top: 10.h),
              child: Obx(() => Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: outOfImagePointer(widget.bannerImageList.length),
                  ))),
        ),
      ],
    );
  }

  outOfImagePointer(int length) {
    return [
      for (var index = 0; index < length; index++)
        Container(
          margin: EdgeInsets.only(left: 4.w, right: 4.w),
          child: bannerSectionNumer == index
              ? Container(
                  // decoration: AppDecoration.fillbgGrey.copyWith(
                  //     borderRadius: BorderRadiusStyle.roundedBorder12),
                  padding: EdgeInsets.only(
                      left: 8.w, right: 8.w, top: 0.5.h, bottom: 0.5.h),
                  child: Text(
                    "${index + 1}/${bannerLength.value}",
                    textScaler: TextScaler.linear(Constants.factor),
                    style: AppStyle.montserrat10White600,
                  ),
                )
              : CircleAvatar(
                  radius: 4.r,
                  backgroundColor: ColorConstant.outlineStroke,
                ),
        )
    ];
  }

  inImagePointer(int length, double? height, double? width, Color? color) {
    return [
      for (var index = 0; index < length; index++)
        Container(
          margin: EdgeInsets.only(left: 4.w, right: 4.w),
          child: bannerSectionNumer == index
              ? Container(
                  height: height ?? 5,
                  width: width ?? 18,
                  decoration:
                      BoxDecoration(color: color ?? ColorConstant.secondary300)
                          .copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder12),
                )
              : CircleAvatar(
                  radius: 4.r,
                  backgroundColor: ColorConstant.outlineStroke,
                ),
        )
    ];
  }
}

class ImageSliderList {
  ImageSliderList({required this.imgUrl, this.pageType, this.imageId});

  String? pageType;
  String imgUrl;
  int? imageId;
}

class CustomImageSlider2 extends StatefulWidget {
  CustomImageSlider2({
    super.key,
    required this.bannerImageList,
    this.bannerIdList,
    this.height,
    this.radius,
    this.viewportFraction,
    this.isAutoSlide = false,
    this.inImageSliderPoint = false,
  });
  final List<Widget> bannerImageList;
  final List? bannerIdList;
  final double? radius;
  final double? height;
  final double? viewportFraction;
  final bool isAutoSlide;
  final bool inImageSliderPoint;
  @override
  State<CustomImageSlider2> createState() => _CustomImageSlider2State();
}

class _CustomImageSlider2State extends State<CustomImageSlider2> {
  Rx<PageController> pageController = PageController(
    initialPage: 0,
    viewportFraction: 0.92,
  ).obs;
  RxInt bannerSectionNumer = 0.obs;
  RxInt bannerLength = 0.obs;

  @override
  void initState() {
    pageController.value = PageController(
      initialPage: 0,
      viewportFraction: (widget.viewportFraction ?? 0) > 1 ||
              (widget.viewportFraction ?? 0) < 0
          ? 1
          : widget.viewportFraction ?? .92,
    );
    super.initState();
    // if (widget.isAutoSlide ?? true) {
    // autoScroller();
    // }
  }

  autoScroller() {
    Timer.periodic(Duration(seconds: 4), (timer) async {
      try {
        if (((pageController.value.page!.round()) + 1) % bannerLength.value ==
            0) {
          pageController.value.jumpToPage(
            ((pageController.value.page!.round()) + 1) % bannerLength.value,
          );
        } else {
          await pageController.value.animateToPage(
              ((pageController.value.page?.round() ?? 0) + 1) %
                  bannerLength.value,
              duration: Duration(milliseconds: 500),
              curve: Curves.linear);
        }
      } catch (e) {}
    });
  }

  @override
  Widget build(BuildContext context) {
    bannerLength.value = widget.bannerImageList.length;

    return Column(
      children: [
        Stack(children: [
          Container(
            // width: double.maxFinite,
            height: widget.height ?? 150.h,
            // decoration: AppDecoration.fillWhite,
            child: PageView.builder(
              controller: pageController.value,
              // controller: PageController(
              //   viewportFraction: 0.95,
              // ),
              allowImplicitScrolling: true,
              padEnds: false,

              onPageChanged: (value) {
                bannerSectionNumer.value = value;
              },
              itemCount: widget.bannerImageList.length,
              scrollDirection: Axis.horizontal,

              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(right: 16.w),
                  child: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(widget.radius ?? 12.r),
                      child: widget.bannerImageList[index]

                      //  CustomImageView(
                      //   url: UrlConstants.IMAGE_URL +
                      //       widget.bannerImageList[index].toString(),
                      //   // svgPath: widget.bannerImageList[index],
                      //   height: widget.height ?? 170.h,
                      //   fit: BoxFit.fill,
                      // ),

                      ),
                );
              },
            ),
          ),
        ]),
        Visibility(
          visible: !widget.inImageSliderPoint,
          child: Container(
              margin: EdgeInsets.only(top: 10.h),
              child: Obx(() => Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: outOfImagePointer(widget.bannerImageList.length),
                  ))),
        ),
      ],
    );
  }

  outOfImagePointer(int length) {
    return [
      for (var index = 0; index < length; index++)
        Container(
          margin: EdgeInsets.only(left: 4.w, right: 4.w),
          child: bannerSectionNumer == index
              ? Container(
                  // decoration: AppDecoration.fillbgGrey.copyWith(
                  //     borderRadius: BorderRadiusStyle.roundedBorder12),
                  padding: EdgeInsets.only(
                      left: 8.w, right: 8.w, top: 0.5.h, bottom: 0.5.h),
                  child: Text(
                    "${index + 1}/${bannerLength.value}",
                    textScaler: TextScaler.linear(Constants.factor),
                    style: AppStyle.montserrat10White600,
                  ),
                )
              : CircleAvatar(
                  radius: 4.r,
                  backgroundColor: ColorConstant.outlineStroke,
                ),
        )
    ];
  }

  inImagePointer(int length, double? height, double? width, Color? color) {
    return [
      for (var index = 0; index < length; index++)
        Container(
          margin: EdgeInsets.only(left: 4.w, right: 4.w),
          child: bannerSectionNumer == index
              ? Container(
                  height: height ?? 5,
                  width: width ?? 18,
                  decoration:
                      BoxDecoration(color: color ?? ColorConstant.secondary300)
                          .copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder12),
                )
              : CircleAvatar(
                  radius: 4.r,
                  backgroundColor: ColorConstant.outlineStroke,
                ),
        )
    ];
  }
}

// ignore: must_be_immutable
// class CustomImageSlider extends StatelessWidget {
//   CustomImageSlider({
//     required this.bannerImageList,
//     required this.bannerIdList,
//     this.height,
//     this.radius,
//     required this.controller,
//   });
//   List bannerImageList;
//   List bannerIdList;
//   RxInt bannerSectionNumer = 0.obs;
//   double? height;
//   double? radius;
//   var controller;

//   // Rx<PageController> pageController = PageController(initialPage: 0).obs;
//   // String? imgtittle;
//   // var pageController = Get.put(AmbulanceDashboardController());

//   @override
//   Widget build(BuildContext context) {
//     // startTimer();
//     return ClipRRect(
//       borderRadius: BorderRadius.circular(radius ?? 12.r),
//       child: Stack(children: [
//         CarouselSlider(
//           items: bannerImageList
//               .map((e) => Container(
//                     width: double.maxFinite,
//                     //     height: height ?? 170.h,
//                     child: CustomImageView(
//                       url: UrlConstants.IMAGE_URL + e,
//                       height: height ?? 170.h,
//                       width: 360.w,
//                       fit: BoxFit.fill,
//                     ),
//                   ))
//               .toList(),
//           options: CarouselOptions(
//             viewportFraction: 0.9,
//             autoPlay: true,
//             autoPlayInterval: Duration(seconds: 3),
//             aspectRatio: 360.w / (height ?? 170.h),
//             height: height ?? 170.h,
//             onPageChanged: (index, reason) {
//               bannerSectionNumer.value = index;
//             },
//           ),
//         ),
//         Positioned(
//           bottom: 5.h,
//           child: Container(
//             height: 15.w,
//             // width: double.maxFinite,
//             child: ListView.builder(
//               physics: NeverScrollableScrollPhysics(),
//               scrollDirection: Axis.horizontal,
//               itemCount: bannerIdList.length,
//               shrinkWrap: true,
//               itemBuilder: (context, index) {
//                 return Container(
//                   margin: EdgeInsets.all(1.5.r),
//                   child: InkWell(
//                     onTap: () {
//                       // bannerSectionNumer.value = index;
//                     },
//                     child: CircleAvatar(
//                       radius: 2.r,
//                       backgroundColor: ColorConstant.white,
//                       child: Container(
//                           margin: EdgeInsets.all(1.r),
//                           child: Obx(
//                             () => CircleAvatar(
//                               backgroundColor: bannerSectionNumer == index
//                                   ? ColorConstant.secondaryColor
//                                   : ColorConstant.secondaryLight,
//                             ),
//                           )),
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//         )
//       ]),
//     );

//     // return ClipRRect(
//     //   borderRadius: BorderRadius.circular(radius ?? 12.r),
//     //   child: Container(
//     //     width: double.maxFinite,
//     //     height: height ?? 170.h,
//     //     decoration: AppDecoration.fillWhite,
//     //     child:

//     //      Stack(alignment: Alignment.center, children: [
//     //       Positioned.fill(
//     //         child: PageView.builder(
//     //           controller: controller.pageController,
//     //           onPageChanged: (value) {
//     //             bannerSectionNumer.value = value;
//     //           },
//     //           itemCount: bannerImageList.length,
//     //           scrollDirection: Axis.horizontal,
//     //           itemBuilder: (context, index) {
//     //             return

//     //              CustomImageView(
//     //               url: UrlConstants.IMAGE_URL +
//     //                   bannerImageList[index].toString(),
//     //               // svgPath: bannerImageList[index],
//     //               height: height ?? 170.h,
//     //               width: 360.w,
//     //               fit: BoxFit.fill,
//     //             );
//     //           },
//     //         ),
//     //       ),
//     //       Positioned(
//     //         bottom: 5.h,
//     //         child: Container(
//     //           height: 15.w,
//     //           // width: double.maxFinite,
//     //           child: ListView.builder(
//     //             physics: NeverScrollableScrollPhysics(),
//     //             scrollDirection: Axis.horizontal,
//     //             itemCount: bannerIdList.length,
//     //             shrinkWrap: true,
//     //             itemBuilder: (context, index) {
//     //               return Container(
//     //                 margin: EdgeInsets.all(1.5.r),
//     //                 child: InkWell(
//     //                   onTap: () {
//     //                     // bannerSectionNumer.value = index;
//     //                   },
//     //                   child: CircleAvatar(
//     //                     radius: 2.r,
//     //                     backgroundColor: ColorConstant.white,
//     //                     child: Container(
//     //                         margin: EdgeInsets.all(1.r),
//     //                         child: Obx(
//     //                           () => CircleAvatar(
//     //                             backgroundColor: bannerSectionNumer == index
//     //                                 ? ColorConstant.secondaryColor
//     //                                 : ColorConstant.secondaryLight,
//     //                           ),
//     //                         )),
//     //                   ),
//     //                 ),
//     //               );
//     //             },
//     //           ),
//     //         ),
//     //       )
//     //     ]),

//     //   ),
//     // );
//   }
// }