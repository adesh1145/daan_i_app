import '../../core/app_export.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton(
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
  final BorderRadiusGeometry? borderRadius;
  final EdgeInsetsGeometry? padding;
  final Duration? animationDuration;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      autofocus: autofocus,
      style: ButtonStyle(
          backgroundColor: backgroundColor == null
              ? null
              : MaterialStatePropertyAll(backgroundColor),
          alignment: alignment,
          elevation:
              elevation == null ? null : MaterialStatePropertyAll(elevation),
          padding: padding == null ? null : MaterialStatePropertyAll(padding),
          shape: borderRadius == null
              ? null
              : MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: borderRadius!,
                  ),
                ),
          animationDuration: animationDuration),
      child: child ??
          CustomText(
            text,
            style: textStyle,
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
        child: _buildButtonWithOrWithoutIcon());
  }

  _buildButtonWithOrWithoutIcon() {
    if (suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (isTextCenter) SizedBox(),
          Center(
            child: CustomText(
              text,
              style: textStyle,
            ),
          ), //
          suffixWidget ?? const SizedBox(),
        ],
      );
    } else {
      return Center(
        child: CustomText(
          text,
          style: textStyle,
        ),
      );
    }
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
  final BorderRadiusGeometry? borderRadius;
  final EdgeInsetsGeometry? padding;
  final Duration? animationDuration;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onTap,
      autofocus: autofocus,
      style: ButtonStyle(
          backgroundColor: backgroundColor == null
              ? null
              : MaterialStatePropertyAll(backgroundColor),
          alignment: alignment,
          elevation:
              elevation == null ? null : MaterialStatePropertyAll(elevation),
          padding: padding == null ? null : MaterialStatePropertyAll(padding),
          shape: borderRadius == null
              ? null
              : MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: borderRadius!,
                  ),
                ),
          animationDuration: animationDuration),
      child: child ??
          CustomText(
            text,
            style: textStyle,
          ),
    );
  }
}

class CustomOutlinedButtonWithIcon extends StatelessWidget {
  const CustomOutlinedButtonWithIcon(
      {super.key,
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
      required this.icon});
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
  final Widget icon;
  final Duration? animationDuration;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: icon,
      onPressed: onTap,
      autofocus: autofocus,
      style: ButtonStyle(
        backgroundColor: backgroundColor == null
            ? null
            : MaterialStatePropertyAll(backgroundColor),
        alignment: alignment,
        elevation:
            elevation == null ? null : MaterialStatePropertyAll(elevation),
        padding: padding == null ? null : MaterialStatePropertyAll(padding),
        shape: borderRadius == null
            ? null
            : MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: borderRadius!,
                ),
              ),
        animationDuration: animationDuration,
        // enableFeedback:
      ),
      label: child ??
          CustomText(
            text,
            style: textStyle,
          ),
    );
  }
}
