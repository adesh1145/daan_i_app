import 'package:daan_i_app/core/app_export.dart';

import 'custom_image_view.dart';

// ignore: must_be_immutable
class DataNotFound extends StatelessWidget {
  DataNotFound({
    this.onTap,
    required this.tittle,
    this.subTittleOne,
    this.subTittleTwo,
    required this.istryAgainVisibile,
  });

  VoidCallback? onTap;
  String? tittle;
  String? subTittleOne;
  String? subTittleTwo;
  bool istryAgainVisibile;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding:
            EdgeInsets.only(left: 16.w, right: 16.w, bottom: 16.h, top: 16.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomImageView(
              svgPath: ImageConstant.noDataFound,
              height: 90.w,
              width: 90.w,
              radius: BorderRadius.circular(68.w),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16.h),
              child: Text(
                tittle ?? "",
                textScaler: customTextScaler,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.lato14textOne800,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.h),
              child: Text(
                subTittleOne ?? "",
                textScaler: customTextScaler,
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: AppStyle.montserrat12textOne400,
              ),
            ),
            Visibility(
              visible: istryAgainVisibile,
              child: InkWell(
                onTap: onTap,
                child: Padding(
                  padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
                  child: Text(
                    subTittleTwo ?? "",
                    textScaler: TextScaler.linear(Constants.factor),
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    // style: AppStyle.montserrat12blue600,
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
