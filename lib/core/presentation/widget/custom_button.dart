// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:expense_tracker_lite/utils/resources/styles_manager.dart';

class CustomButton extends StatelessWidget {
  final double width;
  final Color buttonColor;
  final Color borderColor;
  final String? title;
  final double? height;
  final double? borderRadius;
  final VoidCallback? onpress;
  final Widget? customWidget;
  final TextStyle? titleStyle;
  final double? paddingForAll;

  const CustomButton({
    Key? key,
    required this.width,
    this.paddingForAll,
    required this.buttonColor,
    this.title = '',
    this.titleStyle,
    this.borderRadius = 20,
    this.borderColor = Colors.transparent,
    this.height,
    this.onpress,
    this.customWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress ?? () {},
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: Container(
        padding: EdgeInsets.all(paddingForAll ?? 3),
        width: width,
        height: height ?? 40.h,
        decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(borderRadius!),
            border: Border.all(
              color: borderColor,
            )),
        child: Center(
            child: customWidget ??
                Text(
                  title ?? "",
                  style: titleStyle ??
                      TextStyles.manropeFontSemiBold.copyWith(
                        fontSize: 14.sp,
                        color: Colors.white,
                      ),
                )),
      ),
    );
  }
}
