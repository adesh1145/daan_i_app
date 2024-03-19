import '../../core/app_export.dart';
import '../../theme/app_style.dart';
import 'custom_image_view.dart';

class CustomWorkStep extends StatelessWidget {
  CustomWorkStep(
      {super.key,
      this.img,
      this.svgImg,
      this.imgHeight,
      this.imgWidth,
      this.tittle,
      this.verticalDividerColor,
      this.tittleStyle,
      this.txtListStyle,
      required this.txtList});
  final String? img, svgImg;
  final String? tittle;
  final List<String> txtList;
  final TextStyle? tittleStyle, txtListStyle;
  final double? imgHeight, imgWidth;
  final Color? verticalDividerColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(top: 6.h),
      padding: EdgeInsets.only(left: 16.w, bottom: 16.h, right: 16.w),
      color: ColorConstant.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Visibility(
            visible: tittle != null,
            child: Padding(
              padding: EdgeInsets.only(
                top: 16.h,
                bottom: 20.h,
              ),
              child: Text(
                tittle ?? "",
                textScaler: const TextScaler.linear(Constants.factor),
                style: tittleStyle ?? AppStyle.robotoMed16neu900w500,
              ),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: txtList.length,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        svgPath: svgImg,
                        imagePath: img,
                        height: imgHeight ?? 18.w,
                        width: imgWidth ?? 18.w,
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 12.w),
                          child: Text(
                            txtList[index],
                            style:
                                txtListStyle ?? AppStyle.robotoMed10neu900w500,
                            textScaler: TextScaler.linear(Constants.factor),
                            textAlign: TextAlign.left,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Visibility(
                    visible: txtList.length != index + 1,
                    child: Padding(
                      padding: EdgeInsets.only(left: 7.5.w),
                      child: Container(
                        height: 20.h,
                        width: 2.w,
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return Container(
                              height: 4.h,
                              width: 2.w,
                              margin: EdgeInsets.only(top: 3.h),
                              color: verticalDividerColor ??
                                  ColorConstant.secondary300,
                            );
                          },
                        ),
                      ),
                    ),
                  )
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
