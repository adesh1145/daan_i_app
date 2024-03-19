import '../../core/app_export.dart';
import '../custom_image_view.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar(
      {required this.height,
      this.styleType,
      this.styleTypeTwo,
      this.leadingWidth,
      this.leading,
      this.isBackBtnVisible,
      this.title,
      this.centerTitle,
      this.onTap,
      this.actions});

  final double height;

  final Style? styleType;
  final String? styleTypeTwo;
  final double? leadingWidth;

  final Widget? leading;

  final bool? isBackBtnVisible;

  final Widget? title;

  final VoidCallback? onTap;

  final bool? centerTitle;

  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height,
      automaticallyImplyLeading: false,
      backgroundColor: ColorConstant.grey,
      flexibleSpace: _getStyle(),
      //leadingWidth: leadingWidth ?? 0,
      // leading: InkWell(
      //   onTap: onTap() ?? "",
      //   child: Padding(
      //     padding:
      //         EdgeInsets.only(left: 16.w, top: 18.h, bottom: 18.h, right: 19.w),
      //     child: CustomImageView(
      //       height: 12.h,
      //       width: 18.w,
      //       svgPath: ImageConstant.arrowBackAppbar,
      //     ),
      //   ),
      // ),

      leading: (isBackBtnVisible ?? true) == false
          ? null
          : Padding(
              padding: const EdgeInsets.only(left: 10),
              child: IconButton(
                onPressed: onTap,
                icon: CustomImageView(
                  height: 10.h,
                  width: 18.w,
                  svgPath: ImageConstant.arrowBackHeader,
                ),
              ),
            ),
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
        double.maxFinite,
        height,
      );
  _getStyle() {
    switch (styleType) {
      case Style.bgGradientPink700Pink900:
        return Container(
          height: 100.h,
          width: double.maxFinite,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(
                0.5,
                0,
              ),
              end: Alignment(
                0.5,
                1,
              ),
              colors: [
                ColorConstant.appBarColor1,
                ColorConstant.appBarColor2,
              ],
            ),
          ),
        );
      case Style.bgFillWhite:
        return Container(
          // height: 49.h,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: ColorConstant.white,
          ),
        );
      case Style.bgFillGrey:
        return Container(
          height: 49.h,
          decoration: BoxDecoration(
            color: ColorConstant.grey,
          ),
        );
      default:
        return null;
    }
  }

// _leading() {
//   switch (styleTypeTwo) {
//     case leading.withIcon:
//       return Padding(
//       padding: const EdgeInsets.only(left: 10),
//       child: IconButton(
//         onPressed: onTap,
//         icon: CustomImageView(
//           height: 12.h,
//           width: 18.w,
//           svgPath: "",
//         ),
//       ),
//     );

//     default:
//       return Padding(
//       padding: const EdgeInsets.only(left: 10),
//       child: IconButton(
//         onPressed: onTap,
//         icon: CustomImageView(
//           height: 12.h,
//           width: 18.w,
//           svgPath: ImageConstant.arrowBackAppbar,
//         ),
//       ),
//     );
//  }
//}
}

enum Style {
  bgGradientPink700Pink900,
  bgFillWhite,
  bgFillGrey,
}
