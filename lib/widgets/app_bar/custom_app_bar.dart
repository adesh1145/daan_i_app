import '../../core/app_export.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {super.key,
      this.height,
      this.titleWidget,
      this.centerTitle,
      this.actions,
      this.backGroundColor,
      this.elevation,
      this.leading,
      this.leadingWidth,
      this.titleStyle,
      this.isBackBtnVisible = true,
      this.onTapBackBtn,
      this.tittle = ""});
  final VoidCallback? onTapBackBtn;
  final double? height;
  final Color? backGroundColor;
  final Widget? titleWidget;
  final String tittle;
  final TextStyle? titleStyle;

  final bool? centerTitle;
  final bool isBackBtnVisible;

  final List<Widget>? actions;
  final Widget? leading;
  final double? leadingWidth;
  final double? elevation;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: elevation ?? 10,
      toolbarHeight: height,
      automaticallyImplyLeading: false,
      backgroundColor: backGroundColor,
      leading: isBackBtnVisible
          ? BackButton(
              onPressed: onTapBackBtn ??
                  () {
                    Get.back();
                  },
            )
          : leading,
      leadingWidth: leadingWidth,
      title: titleWidget ??
          CustomText(
            tittle,
            style: titleStyle??AppStyle.roboto14w500,
          ),
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
        double.maxFinite,
        height ?? 48.h,
      );
}
