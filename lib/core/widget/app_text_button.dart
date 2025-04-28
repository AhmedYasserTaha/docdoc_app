import 'package:doc_doc/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    super.key,
    this.onPressed,
    required this.textButton,
    this.style,
    this.borderRadius,
    this.backgroundColor,
    this.horizontalPading,
    this.verticalPading,
    this.width,
    this.height,
  });
  final void Function()? onPressed;
  final String textButton;
  final TextStyle? style;
  final double? borderRadius;
  final Color? backgroundColor;
  final double? horizontalPading;
  final double? verticalPading;
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 16),
          ),
        ),
        backgroundColor: WidgetStatePropertyAll(
          backgroundColor ?? ColorsManeger.primaryColor,
        ),
        padding: WidgetStateProperty.all(
          EdgeInsets.symmetric(
            horizontal: horizontalPading ?? 12.w,
            vertical: verticalPading ?? 14.h,
          ),
        ),
        fixedSize: WidgetStateProperty.all(
          Size(width ?? double.maxFinite, height ?? 50.h),
        ),
      ),
      child: Text(textButton, style: style),
    );
  }
}
