import 'package:daan_i_app/theme/color_schemes.g.dart';
import 'package:daan_i_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../../../core/app_export.dart';

import '../../../widgets/my_widget/custom_image_view.dart';
import 'controller/dashboard_screen_controller.dart';

class DashBoardScreen extends GetWidget<DashBoardScreenController> {
  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
     
      body: RefreshIndicator(
      onRefresh: () => controller.pullRefresh(),
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 12,right: 12,top:12 ),
          color: ColorConstant.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: ColorConstant.white,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: double.maxFinite,
                  decoration: const BoxDecoration(
                    color: ColorConstant.white,
                  ),
                ),
              ),
              Container(
                // padding: EdgeInsets.all(
                //   10.h,
                // ),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                     
                      // height: 50.h,
                      padding: EdgeInsets.only(
                        left: 16.w,
                        top: 12.h,
                        right: 16.w,
                        bottom: 10.h,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color:   Theme.of(context).colorScheme.primaryContainer.withOpacity(.5),
                        border: Border.all(
                          color:  Theme.of(context).colorScheme.primaryContainer.withOpacity(.5),
                          width: 1,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                            alignment: Alignment.topLeft,
                            radius: BorderRadius.circular(45.r),
                            height: 90.r,
                            width: 90.r,
                            imagePath: "assets/images/img1.jpg",
                            fit: BoxFit.cover,
                          ),
                          Expanded(
                            flex: 5,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                            left: 20.w,
                                            bottom: 3.h,
                                          ),
                                          child: Text(
                                            "Ngo NAme",
                                            textScaleFactor: 1,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.roboto13w700,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: 20.w,
                                      // bottom: 14,
                                    ),
                                    child: Text(
                                      "Reg. No.",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.montserrat12textOne400,
                                  ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: 20.w,
                                      // bottom: 14,
                                    ),
                                    child: Text(
                                    "Income",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.montserrat12textOne400,
                                  ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 0,
                            child: Container(
                              padding: EdgeInsets.only(
                                left: 4.w,
                                top: 2.h,
                                right: 4.w,
                                bottom: 2.w,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadiusStyle.roundedBorder4,
                                color: ColorConstant.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 12.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(
                                right: 8.w,
                              ),
                              padding: EdgeInsets.only(
                                left: 16.w,
                                top: 11.h,
                                right: 16.w,
                                bottom: 11.h,
                              ),
                              decoration: BoxDecoration(
                                color:  Theme.of(context).colorScheme.primaryContainer.withOpacity(.5),
                                border: Border.all(
                                  color:   Theme.of(context).colorScheme.primaryContainer.withOpacity(.5),
                                  width: 1,
                                ),
                                borderRadius: BorderRadiusStyle.roundedBorder6,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Income",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.montserrat12textOne400,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 12.h,
                                    ),
                                    child: Text(
                                      "8239",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.lato14textOne600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(
                                left: 8.w,
                              ),
                              padding: EdgeInsets.only(
                                left: 16.w,
                                top: 11.h,
                                right: 16.w,
                                bottom: 11.h,
                              ),
                              decoration: BoxDecoration(
                                color:   Theme.of(context).colorScheme.primaryContainer.withOpacity(.5),
                                border: Border.all(
                                  color:   Theme.of(context).colorScheme.primaryContainer.withOpacity(.5),
                                  width: 1,
                                ),
                                borderRadius: BorderRadiusStyle.roundedBorder6,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Total Revenue",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.montserrat12textOne400,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 10.h,
                                    ),
                                    child: Text(
                                      "4894",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.lato14textOne600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 12.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(
                                right: 8.w,
                              ),
                              padding: EdgeInsets.only(
                                left: 16.w,
                                top: 11.h,
                                right: 16.w,
                                bottom: 11.h,
                              ),
                              decoration: BoxDecoration(
                                color:   Theme.of(context).colorScheme.primaryContainer.withOpacity(.5),
                                border: Border.all(
                                  color:   Theme.of(context).colorScheme.primaryContainer.withOpacity(.5),
                                  width: 1,
                                ),
                                borderRadius: BorderRadiusStyle.roundedBorder6,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Completed rides",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.montserrat12textOne400,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 10.h,
                                    ),
                                    child: Text(
                                      "73",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.lato14textOne600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(
                                left: 8.w,
                              ),
                              padding: EdgeInsets.only(
                                left: 16.w,
                                top: 12.h,
                                right: 16.w,
                                bottom: 12.h,
                              ),
                              decoration: BoxDecoration(
                                color:   Theme.of(context).colorScheme.primaryContainer.withOpacity(.5),
                                border: Border.all(
                                  color:   Theme.of(context).colorScheme.primaryContainer.withOpacity(.5),
                                  width: 1,
                                ),
                                borderRadius: BorderRadiusStyle.roundedBorder6,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Cancelled Rides",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.montserrat12textOne400,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 9.h,
                                    ),
                                    child: Text(
                                      "829",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.lato14textOne600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        // Get.toNamed(AppRoutes.ridesHistory);
                        // Get.toNamed(AppRoutes.homeScreen);
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                          top: 12.h,
                        ),
                        padding: EdgeInsets.only(
                          left: 16.w,
                          top: 12.h,
                          right: 16.w,
                          bottom: 12.h,
                        ),
                        decoration: BoxDecoration(
                          color:  Theme.of(context).colorScheme.primaryContainer.withOpacity(.5),
                          border: Border.all(
                            color:  Theme.of(context).colorScheme.primaryContainer.withOpacity(.5),
                            width: 1,
                          ),
                          borderRadius: BorderRadiusStyle.roundedBorder12,
                        ),
                        child: Row(
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.history,
                              height: 16.h,
                              width: 16.w,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 8.w,
                                top: 2.h,
                              ),
                              child: Text(
                                "View Rides History",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.montserrat12textOne400,
                              ),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.chevron_right),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ), 
              
              //!--------------- Insight Section ---------->
              Container(
               decoration: BoxDecoration(
               color:  Theme.of(context).colorScheme.primaryContainer.withOpacity(.5),
               //borderRadius: BorderRadius.only(topLeft: Radius.circular(5.r),topRight: Radius.circular(5.r),
                 
               borderRadius: BorderRadius.circular(10.r)
               ),
               margin: EdgeInsets.only(top:10),
                      
              //  height: 290,
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
                             imagePath:
                                 ImageConstant.insight,
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
                       child:
                      Wrap(
                        spacing: 5,
                        children: [
                          for(int index=0;index<4;index++)
                             Container(
                               margin: const EdgeInsets.only(
                                     top:15,left: 5, right: 10),
                                    
                              
                               decoration: BoxDecoration(
                                 
                                 boxShadow: const [
                                   BoxShadow(
                                     blurRadius: 1,
                                   )
                                 ],
                                 color: Theme.of(context).colorScheme.background,
                                 borderRadius: BorderRadius.circular(10),
                               ),
                               child: Column(
                                 crossAxisAlignment:
                                     CrossAxisAlignment.center,
                                 children: [
                                   Container(
                                     margin:
                                         const EdgeInsets.only(bottom: 1),
                                     padding: const EdgeInsets.all(
                                       10
                                     ),
                                     child: Text(
                                       "Total \nDonations",
                                       overflow: TextOverflow.ellipsis,
                                       textAlign: TextAlign.center,
                                       style: AppStyle.montserrat12textOne400,
                                     ),
                                     ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(vertical: 3.h),
                                      child: Text(
                                      "829",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: AppStyle.lato14textOne600,
                                      ),
                                    ),
                                 ],
                          )
                        ),
                        SizedBox(height: 10.h,)
                           
                        ],
                      )
                 
                     )
                
                
                   ],
                 ),
               )
            ],
          ),
        ),
      ),
    ),
    );
  }
}
