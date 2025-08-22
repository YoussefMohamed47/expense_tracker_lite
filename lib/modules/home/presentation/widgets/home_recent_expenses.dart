import 'package:expense_tracker_lite/utils/resources/app_colors.dart';
import 'package:expense_tracker_lite/utils/resources/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeRecentExpensesSection extends StatelessWidget {
  const HomeRecentExpensesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Recent Expenses',
              style: TextStyles.manropeFontBold.copyWith(
                fontSize: 16.sp,
                color: AppColors.black,
              ),
            ),
            Text(
              'see all',
              style: TextStyles.manropeFontMedium.copyWith(
                fontSize: 14.sp,
                color: AppColors.black,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
