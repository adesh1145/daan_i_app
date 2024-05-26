import 'package:daan_i_app/core/app_export.dart';
import 'package:daan_i_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

import '../../../widgets/dashed_divider.dart';
import '../../../widgets/my_widget/custom_image_view.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {

  var Date= DateTime.now();

  List<Map> HistroyData=[
    {
      "orderid":"12346629038",
      "date":"24/07/2000",
      "category":"Food",
      "pickuplocation":"c block,GangaNagar,meerut",
      "status":"Pending",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:const CustomAppBar(
        tittle: "History",
      ),

      body:ListView.builder(
        itemCount: 3,
      itemBuilder: (context ,index){
       return InkWell(
                           onTap: () {
                             
                           },
                           child: Container(
                             padding: EdgeInsets.only(
                               top: 20.h,
                               left: 16.w,
                               right: 16.w,
                             ),
                             margin: EdgeInsets.only(
                               left: 17.w,
                               bottom: 12.h,
                               right: 16.w,
                             ),
       
                             decoration: BoxDecoration(
                               borderRadius:
                                   BorderRadius.circular(14.r),
                                   color:Theme.of(context).colorScheme.background,
                                   boxShadow: [
                                    BoxShadow(
                                      blurRadius: 8.r,
                                      spreadRadius: 0.1,
                                      blurStyle: BlurStyle.outer,
                                      offset: const Offset(0, 5),
                                      color: Theme.of(context).colorScheme.onBackground,
                                    )
                                   ] 
                             ),
                             child: Column(
                               mainAxisSize: MainAxisSize.min,
                               crossAxisAlignment: CrossAxisAlignment.start,
                               mainAxisAlignment:
                                   MainAxisAlignment.spaceBetween,
                               children: [
                                 Row(
                                   crossAxisAlignment:
                                       CrossAxisAlignment.start,
                                  //  mainAxisAlignment:
                                  //      MainAxisAlignment.spaceBetween,
                                   children: [

                                    const Padding(
                                      padding: EdgeInsets.only(right: 10),
                                      child: Text("Status"),
                                    ),

                                     Padding(
                                         padding: EdgeInsets.only(
                                             right: 8.w, top: 2.h),
                                         child: CustomImageView(
                                             width: 16.w,
                                             height: 16.w,
                                             svgPath: ("assets/images/success.svg"
       
                                         // style:
                                             //AppStyle.montserrat12textOne400,
                                       ),
                                     ),
                                     ),
       
                                     Spacer(),
                                   
                                     Padding(
                                       padding: EdgeInsets.only(right: 10.w),
                                       child: Text("Food",
                                         style:
                                             AppStyle.montserrat13textOne500,
                                       ),
                                     ),
       
                                     const Icon(Icons.chevron_right),
                                   ],
                                 ),
       
                                 Padding(
                                   padding: EdgeInsets.only(
                                       top: 12.h, bottom: 12.h),
                                   child: DashedDivider(
                                     color: Theme.of(context).colorScheme.outline,
                                     thickness: 1,
                                     height: 1,
                                   ),
                                 ),
       
                                 Padding(
                                   padding: EdgeInsets.only(bottom: 4.h),
                                   child: Row(
                                     mainAxisAlignment:
                                         MainAxisAlignment.spaceBetween,
                                     crossAxisAlignment:
                                         CrossAxisAlignment.start,
                                     children: [
                                      
                                       Text("Donate Date & Time",
                                         style:AppStyle.montserrat11textOne400,
                                       
                                       ),
       
                                       Expanded(
                                           child: Text("Order ID",
                                           style:AppStyle.montserrat11textOne400,
                                           textAlign: TextAlign.end,
                                       )
                                       ),
                                     ],
                                   ),
                                 ),
       
       
                                 Padding(
                                   padding: EdgeInsets.only(bottom: 4.h),
                                   child:Row(
                                     mainAxisAlignment:
                                         MainAxisAlignment.spaceBetween,
                                     crossAxisAlignment:
                                         CrossAxisAlignment.start,
                                     children: [
                                       Text("25 May 2024",
                                         style:
                                             AppStyle.roboto13onBackgroundw500,
                                       ),
       
                                       Expanded(
                                         child: Text("OD2893990",
                                           textAlign: TextAlign.end,
                                           style: AppStyle
                                               .roboto13onBackgroundw500.copyWith(color: Colors.black)
                                         ),
                                       )
                                     ],
                                   ),
                                 ),
       
                                 Padding(
                                   padding: EdgeInsets.only(top: 13.h,bottom: 10),
                                   child: Row(
                                     children: [
                                       Icon(Icons.location_on),
                                       Expanded(
                                           child: Text("c block ganganagar meerut 250001",
                                        
                                         style:
                                             AppStyle.roboto13onBackgroundw500.copyWith(color: Colors.black87),
                                       )),
                                     ],
                                   ),
                                 ),
                               ],
                             ),
                           ),
                         );
      }
      )
      
    );
  }
}