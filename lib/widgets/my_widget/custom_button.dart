import '../../core/app_export.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton(
      {super.key,
      this.onTap,
      this.child,
      this.text = "",
      this.alignment,
      this.autofocus = false,
      this.isExpanded = true,
      this.backgroundColor,
      this.borderColor,
      this.borderRadius,
      this.animationDuration,
      this.borderWidth,
      this.elevation,
      this.padding,
      this.textStyle});
  final String text;
  final Widget? child;
  final VoidCallback? onTap;
  final TextStyle? textStyle;
  final bool autofocus;
  final Color? backgroundColor;
  final Color? borderColor;
  final AlignmentGeometry? alignment;
  final double? elevation;
  final double? borderWidth;
  final bool isExpanded;
  final BorderRadiusGeometry? borderRadius;
  final EdgeInsetsGeometry? padding;
  final Duration? animationDuration;
  @override
  Widget build(BuildContext context) {
    return isExpanded
        ? Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: onTap,
                  autofocus: autofocus,
                  style: TextButton.styleFrom(
                    // maximumSize: Size(double.maxFinite, 40.h),
                    backgroundColor: backgroundColor ??
                        Theme.of(context).colorScheme.primary,
                    alignment: alignment,
                    elevation: elevation == null ? null : (elevation),
                    padding: padding,

                    shape: borderRadius == null
                        ? RoundedRectangleBorder(
                            borderRadius: BorderRadiusStyle.roundedBorder8,
                          )
                        : RoundedRectangleBorder(
                            borderRadius: borderRadius!,
                          ),
                    animationDuration: animationDuration,
                    // enableFeedback:
                  ),
                  child: child ??
                      CustomText(
                        text,
                        style: textStyle ??
                            TextStyle(
                              fontSize: 16.sp,
                              color:
                                  Theme.of(Get.context!).colorScheme.background,
                            ),
                      ),
                ),
              ),
            ],
          )
        : ElevatedButton(
            onPressed: onTap,
            autofocus: autofocus,
            style: TextButton.styleFrom(
              // maximumSize: Size(double.maxFinite, 40.h),
              backgroundColor:
                  backgroundColor ?? Theme.of(context).colorScheme.primary,
              alignment: alignment,
              elevation: elevation == null ? null : (elevation),
              padding: padding,

              shape: borderRadius == null
                  ? RoundedRectangleBorder(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    )
                  : RoundedRectangleBorder(
                      borderRadius: borderRadius!,
                    ),
              animationDuration: animationDuration,
              // enableFeedback:
            ),
            child: child ??
                CustomText(
                  text,
                  style: textStyle ??
                      TextStyle(
                        fontSize: 16.sp,
                        color: Theme.of(Get.context!).colorScheme.background,
                      ),
                ),
          );
  }
}

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton(
      {super.key,
      this.onTap,
      this.child,
      this.text = "",
      this.alignment,
      this.autofocus = false,
      this.backgroundColor,
      this.borderColor,
      this.borderRadius,
      this.animationDuration,
      this.borderWidth,
      this.elevation,
      this.isExpanded = true,
      this.padding,
      this.textStyle});
  final bool isExpanded;
  final String text;
  final Widget? child;
  final VoidCallback? onTap;
  final TextStyle? textStyle;
  final bool autofocus;
  final Color? backgroundColor;
  final Color? borderColor;
  final AlignmentGeometry? alignment;
  final double? elevation;
  final double? borderWidth;
  final BorderRadiusGeometry? borderRadius;
  final EdgeInsetsGeometry? padding;
  final Duration? animationDuration;
  @override
  Widget build(BuildContext context) {
    return isExpanded
        ? Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: onTap,
                  autofocus: autofocus,
                  style: TextButton.styleFrom(
                    // maximumSize: Size(double.maxFinite, 40.h),
                    backgroundColor: backgroundColor ??
                        Theme.of(context).colorScheme.primary,
                    alignment: alignment,
                    elevation: elevation == null ? null : (elevation),
                    padding: padding,

                    shape: borderRadius == null
                        ? RoundedRectangleBorder(
                            borderRadius: BorderRadiusStyle.roundedBorder8,
                          )
                        : RoundedRectangleBorder(
                            borderRadius: borderRadius!,
                          ),
                    animationDuration: animationDuration,
                    // enableFeedback:
                  ),
                  child: child ??
                      CustomText(
                        text,
                        style: textStyle ??
                            TextStyle(
                              fontSize: 16.sp,
                              color:
                                  Theme.of(Get.context!).colorScheme.background,
                            ),
                      ),
                ),
              )
            ],
          )
        : OutlinedButton(
            onPressed: onTap,
            autofocus: autofocus,
            style: TextButton.styleFrom(
              // maximumSize: Size(double.maxFinite, 40.h),
              backgroundColor:
                  backgroundColor ?? Theme.of(context).colorScheme.primary,
              alignment: alignment,
              elevation: elevation == null ? null : (elevation),
              padding: padding,

              shape: borderRadius == null
                  ? RoundedRectangleBorder(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    )
                  : RoundedRectangleBorder(
                      borderRadius: borderRadius!,
                    ),
              animationDuration: animationDuration,
              // enableFeedback:
            ),
            child: child ??
                CustomText(
                  text,
                  style: textStyle ??
                      TextStyle(
                        fontSize: 16.sp,
                        color: Theme.of(Get.context!).colorScheme.background,
                      ),
                ),
          );
  }
}

class CustomElevatedButtonWithIcon extends StatelessWidget {
  const CustomElevatedButtonWithIcon(
      {super.key,
      this.onTap,
      this.text = "",
      this.alignment,
      this.autofocus = false,
      this.isTextCenter = true,
      this.backgroundColor,
      this.borderColor,
      this.borderRadius,
      this.borderWidth,
      this.animationDuration,
      this.elevation,
      this.padding,
      this.textStyle,
      this.suffixWidget});
  final String text;

  final VoidCallback? onTap;
  final TextStyle? textStyle;
  final bool autofocus;
  final Color? backgroundColor;
  final Color? borderColor;
  final AlignmentGeometry? alignment;
  final double? elevation;
  final double? borderWidth;
  final BorderRadiusGeometry? borderRadius;
  final EdgeInsetsGeometry? padding;
  final bool isTextCenter;
  final Widget? suffixWidget;
  final Duration? animationDuration;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      autofocus: autofocus,
      style: TextButton.styleFrom(
        // maximumSize: Size(double.maxFinite, 40.h),
        backgroundColor:
            backgroundColor ?? Theme.of(context).colorScheme.primary,
        alignment: alignment,
        elevation: elevation == null ? null : (elevation),
        padding: padding,
        textStyle: textStyle,
        shape: borderRadius == null
            ? RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              )
            : RoundedRectangleBorder(
                borderRadius: borderRadius!,
              ),
        animationDuration: animationDuration,
        // enableFeedback:
      ),
      child: _buildButtonWithOrWithoutIcon(),
    );
  }

  _buildButtonWithOrWithoutIcon() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if (isTextCenter) const SizedBox(),
        Center(
          child: CustomText(
            text,
            style: textStyle ??
                TextStyle(
                  fontSize: 16.sp,
                  color: Theme.of(Get.context!).colorScheme.background,
                ),
          ),
        ), //
        suffixWidget ??
            Icon(
              Icons.chevron_right,
              color: Theme.of(Get.context!).colorScheme.background,
            ),
      ],
    );
  }
}

class CustomOutlinedButtonWithIcon extends StatelessWidget {
  const CustomOutlinedButtonWithIcon({
    super.key,
    this.onTap,
    this.child,
    this.text = "",
    this.alignment,
    this.autofocus = false,
    this.backgroundColor,
    this.borderColor,
    this.borderRadius,
    this.borderWidth,
    this.animationDuration,
    this.elevation,
    this.padding,
    this.textStyle,
    this.suffixWidget,
    this.isTextCenter = true,
  });
  final String text;
  final Widget? child;
  final VoidCallback? onTap;
  final TextStyle? textStyle;
  final bool autofocus;
  final Color? backgroundColor;
  final Color? borderColor;
  final AlignmentGeometry? alignment;
  final double? elevation;
  final double? borderWidth;
  final BorderRadiusGeometry? borderRadius;
  final EdgeInsetsGeometry? padding;
  final bool isTextCenter;
  final Widget? suffixWidget;
  final Duration? animationDuration;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      autofocus: autofocus,
      style: TextButton.styleFrom(
        // maximumSize: Size(double.maxFinite, 40.h),
        backgroundColor: backgroundColor == null ? null : (backgroundColor),
        alignment: alignment,
        elevation: elevation == null ? null : (elevation),
        padding: padding,

        shape: borderRadius == null
            ? null
            : RoundedRectangleBorder(
                borderRadius: borderRadius!,
              ),
        animationDuration: animationDuration,
        // enableFeedback:
      ),
      child: _buildButtonWithOrWithIcon(),
    );
  }

  Widget _buildButtonWithOrWithIcon() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if (isTextCenter) SizedBox(),
        Center(
          child: CustomText(
            text,
            style: textStyle ??
                TextStyle(
                  fontSize: 16.sp,
                  color: Theme.of(Get.context!).colorScheme.background,
                ),
          ),
        ), //
        suffixWidget ??
            Icon(
              Icons.chevron_right,
              color: Theme.of(Get.context!).colorScheme.background,
            ),
      ],
    );
  }
}
