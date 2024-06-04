// ignore_for_file: non_constant_identifier_names



import 'package:daan_i_app/core/app_export.dart';
import 'package:daan_i_app/presentation/ngo_module/order_screen/controller/order_screen_controller.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../../widgets/dashed_divider.dart';
import '../../../widgets/my_widget/custom_image_view.dart';

class OrderScreen extends GetWidget<OrderScreenController>{
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

         body:  ListView.builder(
            itemCount: 2,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.only(
                  top: 20.h,
                  left: 10.w,
                  right: 10.w,
                ),
                margin: EdgeInsets.only(
                  left: 10.w,
                  bottom: 12.h,
                  right: 10.w,
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
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      //  mainAxisAlignment:
                      //      MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Text("Status"),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 8.w, top: 2.h),
                          child: CustomImageView(
                            width: 16.w,
                            height: 16.w,
                            svgPath: ("assets/images/success.svg"
              
                                // style:
                                //AppStyle.montserrat12textOne400,
                                ),
                          ),
                        ),
                        // Spacer(),
                        // Padding(
                        //   padding: EdgeInsets.only(right: 10.w),
                        //   child: Text(
                        //     "Food",
                        //     style: AppStyle.montserrat13textOne500,
                        //   ),
                        // ),
                        // const Icon(Icons.chevron_right),
                      ],
                    ),
                    
                    //! for donar name and mobile 
                     Padding(
                      padding: EdgeInsets.only(bottom: 4.h, top:10.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Donor Name:",
                            style: AppStyle.montserrat11textOne400,
                          ),
                          Expanded(
                              child: Text(
                            "Mobile No.",
                            style: AppStyle.montserrat11textOne400,
                            textAlign: TextAlign.end,
                          )),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 4.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Shivam Kumar",
                            style: AppStyle.roboto13onBackgroundw500,
                          ),
                          Expanded(
                            child: Text("9696599965",
                                textAlign: TextAlign.end,
                                style: AppStyle.roboto13onBackgroundw500
                                    .copyWith(color: Colors.black)),
                          )
                        ],
                      ),
                    ),
              
                    //! for dashed Line
                    Padding(
                      padding: EdgeInsets.only(top: 12.h, bottom: 12.h),
                      child: DashedDivider(
                        color: Theme.of(context).colorScheme.outline,
                        thickness: 1,
                        height: 1,
                      ),
                    ),
                   
                    //! for donate date and time
                    Padding(
                      padding: EdgeInsets.only(bottom: 4.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Donate Date & Time",
                            style: AppStyle.montserrat11textOne400,
                          ),
                          Expanded(
                              child: Text(
                            "Order ID",
                            style: AppStyle.montserrat11textOne400,
                            textAlign: TextAlign.end,
                          )),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 4.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "25 May 2024",
                            style: AppStyle.roboto13onBackgroundw500,
                          ),
                          Expanded(
                            child: Text("OD2893990",
                                textAlign: TextAlign.end,
                                style: AppStyle.roboto13onBackgroundw500
                                    .copyWith(color: Colors.black)),
                          )
                        ],
                      ),
                    ),
                   
                   
              
                    //! for Location
                    Padding(
                      padding: EdgeInsets.only(top: 13.h, bottom: 10),
                      child: Row(
                        children: [
                          Icon(Icons.location_on,color: Colors.blue,),
                          Expanded(
                              child: Text(
                            " Ganganagar Meerut 250001",
                            style: AppStyle.roboto13onBackgroundw500
                                .copyWith(color: Colors.black87),
                          )),
                        ],
                      ),
                    ),
              
                         Row(
                          children: [
                            Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(right: 6.w),
                                      child: CustomOutlinedButton(
                                              backgroundColor:
                                                  Theme.of(Get.context!)
                                                      .colorScheme
                                                      .background,
                                              textStyle:
                                                  AppStyle.roboto16w500,
                                              text:"Reject",
                                              onTap:
                                                  () {
                                                   
                                                  },
                                            ),
                                         
                                    ),
                                  ),
                             Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 6.w),
                                      child:  CustomElevatedButton(
                                              text: "Accept",
                                              onTap: 
                                                  () {
                                                   
                                                  },
                                            )
                                    ),
                            )
                          ],
                        ),           
                  ],
                ),
              );
            }
        ),
    );
  }  
}