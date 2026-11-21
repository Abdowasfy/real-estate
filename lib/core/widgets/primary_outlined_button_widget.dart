import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate/core/styling/app_colors.dart';

class PrimaryOutlinedButtonWidget extends StatelessWidget {
  final String buttonText;
  final Color? borderColor;
  final double? width;
  final double? height;
  final double? borderRadius;
  final Color? textColor;
  final double? fontSize;
  final VoidCallback? onPressed;

  const PrimaryOutlinedButtonWidget({
    super.key,
    required this.buttonText,
    this.borderColor,
    this.width,
    this.height,
    this.borderRadius,
    this.fontSize,
    this.textColor,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 331.w,
      height: height ?? 56.h,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          foregroundColor: textColor ?? AppColors.primaryColor,
          side: BorderSide(
            color: borderColor ?? AppColors.primaryColor,
            width: 1,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              borderRadius ?? 8.r,
            ),
          ),
        ),
        child: Text(
          buttonText,
          style: TextStyle(
            color: textColor ?? AppColors.primaryColor,
            fontWeight: FontWeight.bold,
            fontSize: fontSize ?? 16.sp,
          ),
        ),
      ),
    );
  }
}