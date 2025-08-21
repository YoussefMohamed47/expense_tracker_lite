import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:expense_tracker_lite/utils/resources/app_colors.dart';
import 'package:expense_tracker_lite/utils/resources/styles_manager.dart';

class ImageLoadingProgressWidget extends StatelessWidget {
  final double progress;

  const ImageLoadingProgressWidget({super.key, required this.progress});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 24.w, // أو نفس حجم الصورة اللي محطوطة
      height: 24.w,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CircularProgressIndicator(
            value: progress >= 0 && progress <= 1 ? progress : null,
            color: AppColors.primaryDark,
            strokeWidth: 2.0,
          ),
          Center(
            child: Text(
              "${(progress * 100).toStringAsFixed(0)}%",
              style: TextStyles.manropeFontSemiBold.copyWith(
                fontSize: 8.sp,
                color: AppColors.gray500,
              ),
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
