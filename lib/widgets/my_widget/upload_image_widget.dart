import 'dart:io';

import '../../core/app_export.dart';
import 'custom_image_view.dart';

class UploadImage extends StatelessWidget {
  const UploadImage({super.key, this.file, this.onTap, this.url});
  final File? file;
  final String? url;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.r,
      width: 80.r,
      decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).colorScheme.outline),
          borderRadius: BorderRadius.circular(5.r)),
      margin: EdgeInsets.only(right: 12.w),
      // padding: file != null || url != null
      //     ? EdgeInsets.zero
      //     : EdgeInsets.symmetric(horizontal: 12.r, vertical: 3.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            onTap: onTap,
            fit: BoxFit.fill,
            svgPath: file == null ? ImageConstant.upload : null,
            radius: BorderRadius.circular(5.r),
            height: file != null || url != null ? 80.r - 2 : 50.r,
            width: file != null || url != null ? 80.r - 2 : 50.r,
            file: file,
            url: url,
          ),
          file != null || url != null
              ? SizedBox()
              : Padding(
                  padding: EdgeInsets.only(top: 1.25.h),
                  child: Text(
                    "Upload",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.roboto12w600,
                  ),
                ),
        ],
      ),
    );
  }
}
