import '../../core/app_export.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import 'custom_image_view.dart';

class CustomPickupDropText extends StatelessWidget {
  const CustomPickupDropText(
      this.pickup, this.drop, this.pickup_txt, this.drop_txt,
      {super.key});
  final String pickup, drop, pickup_txt, drop_txt;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        // padding: EdgeInsets.all(16.h),
        // decoration: AppDecoration.filledWhite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                right: 13.w,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.pickup,
                    height: 16.h,
                    width: 16.w,
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 8.w,
                        // top: 3.h,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            pickup_txt,
                            textScaler: customTextScaler,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.montserrat10textTwo600,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 2.h,
                      left: 7.w,
                    ),
                    child: SizedBox(
                      height: 30.h,
                      child: VerticalDivider(
                        width: 2.w,
                        thickness: 2.w,
                        color: ColorConstant.outlineStroke,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      // top: 4.h,
                      left: 14.w,
                    ),
                    child: Text(
                      pickup,
                      maxLines: 2,
                      textScaler: customTextScaler,
                      textAlign: TextAlign.left,
                      style: AppStyle.montserrat11textOne400,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 2.h,
                right: 18.w,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.drop,
                    height: 16.h,
                    width: 16.w,
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 8.w,
                        // top: 3.h,
                      ),
                      child: Text(
                        drop_txt,
                        textScaler: customTextScaler,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.montserrat10textTwo600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  // top: 4.h,
                  left: 24.w,
                  bottom: 14.h),
              child: Text(
                drop,
                maxLines: 2,
                textScaler: customTextScaler,
                textAlign: TextAlign.left,
                style: AppStyle.montserrat11textOne400,
              ),
            ),
          ],
        ));
  }
}
