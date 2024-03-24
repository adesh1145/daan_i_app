import 'dart:io';
import '../../../core/app_export.dart';
import '../theme/app_decoration.dart';
import '../theme/app_style.dart';
import 'custom_image_view.dart';

class CustomImageData extends StatelessWidget {
  CustomImageData({this.text, this.url, this.fileData, this.onTap});

  final String? url;
  final String? text;
  final File? fileData;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadiusStyle.roundedBorder6,
        child: Container(
          height: 72.h,
          width: 80.w,
          child: fileData != null
              ? Container(
                  child: Image.file(fileData!, fit: BoxFit.fill),
                )
              : url == "" || url == "null" || url == null
                  ? Container(
                      // decoration: AppDecoration.outlineStroke.copyWith(
                      //   borderRadius: BorderRadiusStyle.roundedBorder6,
                      // ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(svgPath: ImageConstant.upload),
                          Padding(
                            padding: EdgeInsets.only(top: 1.25.h),
                            child: Text(
                              text!,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.montserrat12textTwo600,
                            ),
                          ),
                        ],
                      ),
                    )
                  : Container(
                      // decoration: AppDecoration.outlineGray30001.copyWith(
                      //   borderRadius: BorderRadiusStyle.roundedBorder6,
                      // ),
                      child: CustomImageView(
                          url: UrlConstants.imageUrl + "" + url!,
                          fit: BoxFit.fill),
                    ),
        ),
      ),
    );
  }
}
