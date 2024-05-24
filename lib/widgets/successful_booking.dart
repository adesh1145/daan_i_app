// import 'package:daan_i_app/core/app_export.dart';

// import 'my_widget/custom_image_view.dart';

// class SuccessfulBookingBottomSheets extends GetxController {
//   SuccessfulBookingBottomSheets(controller, String status,
//       {required VoidCallback onDOne}) {
//     if (Get.isBottomSheetOpen == false) {
//       Get.bottomSheet(
//         StatefulBuilder(builder: (context, setState) {
//           return Container(
//             // height: 300,
//             width: double.maxFinite,
//             padding: EdgeInsets.only(
//               top: 44.h,
//               left: 16.w,
//               right: 16.w,
//             ),
//             // decoration: AppDecoration.fillWhite.copyWith(
//             //   borderRadius: BorderRadiusStyle.customBorderTL20,
//             // ),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Container(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       CustomImageView(
//                         svgPath: status == "S"
//                             ? ImageConstant.success
//                             : ImageConstant.error,
//                         height: 60.w,
//                         width: 60.w,
//                       ),
//                       Padding(
//                         padding: EdgeInsets.only(top: 12.h),
//                         child: Text(
//                           status == "S"
//                               ? "Payment Successful"
//                               : "Payment Failed",
//                           textScaler: TextScaler.linear(Constants.factor),
//                           overflow: TextOverflow.ellipsis,
//                           textAlign: TextAlign.left,
//                           style: AppStyle.lato14colorHeading800,
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.only(top: 16.h, bottom: 16.h),
//                         child: CustomButtonBottom(
//                           onTap: onDOne,
//                           text: "Done".tr.toUpperCase(),
//                           variant: ButtonVariant.FillActive,
//                         ),
//                       ),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           );
//         }),
//         // backgroundColor: Colors.white,
//         elevation: 0,
//         isScrollControlled: true,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(20.w),
//         ),
//       );
//     }
//     ;
//   }
// }
