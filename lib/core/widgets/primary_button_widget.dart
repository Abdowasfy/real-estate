import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:real_estate/core/styling/app_colors.dart';

class PrimaryButtonWidget extends StatelessWidget {
  final String buttonText;
  final Color? buttonColor;
  final double? width;
  final double? height;
  final double? borderRadius;
  final Color? textColor;
  final double? fontSize;
  final VoidCallback? onPressed;
  final Widget? icon;
  final Widget? trailingIcon;

  const PrimaryButtonWidget({
    super.key,
    required this.buttonText,
    this.buttonColor,
    this.width,
    this.height,
    this.borderRadius,
    this.textColor,
    this.fontSize,
    this.onPressed,
    this.icon,
    this.trailingIcon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 331.w,
      height: height ?? 56.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor ?? AppColors.primaryColor,
          foregroundColor: textColor ?? Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              borderRadius ?? 8.r,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null) ...[
              icon!,
              Gap(8.w),
            ],

            Flexible(
              child: Text(
                buttonText,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: textColor ?? Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: fontSize ?? 16.sp,
                ),
              ),
            ),

            if (trailingIcon != null) ...[
              Gap(8.w),
              trailingIcon!,
            ],
          ],
        ),
      ),
    );
  }
}