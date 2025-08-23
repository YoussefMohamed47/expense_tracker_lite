import 'package:expense_tracker_lite/core/data/models/expense_model.dart';
import 'package:expense_tracker_lite/utils/helpers/functions.dart';
import 'package:expense_tracker_lite/utils/helpers/spacing.dart';
import 'package:expense_tracker_lite/utils/resources/app_colors.dart';
import 'package:expense_tracker_lite/utils/resources/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:timeago/timeago.dart' as timeago;

class RecentExpenseItem extends StatelessWidget {
  final ExpenseModel expense;

  const RecentExpenseItem({super.key, required this.expense});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            height: 40.h,
            width: 40.w,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: expense.backgroundColor,
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(
              expense.icon,
              height: 18.h,
              width: 18.w,
              colorFilter: ColorFilter.mode(
                expense.iconColor,
                BlendMode.srcIn,
              ),
            ),
          ),
          SizedBox(width: 12.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                expense.category,
                style: TextStyles.manropeFontSemiBold.copyWith(
                  fontSize: 16.sp,
                  color: AppColors.black,
                ),
              ),
              Text(
                expense.source,
                style: TextStyles.manropeFontMedium.copyWith(
                  fontSize: 12.sp,
                  color: AppColors.gray500,
                ),
              ),
            ],
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "\$${expense.amount}",
                style: TextStyles.manropeFontBold.copyWith(
                  fontSize: 16.sp,
                  color: AppColors.black,
                ),
              ),
              Text(
                " ${expense.currency} ${formatNumber(expense.convertedAmount ?? "0")}",
                overflow: TextOverflow.ellipsis,
                style: TextStyles.manropeFontBold.copyWith(
                  fontSize: 16.sp,
                  color: AppColors.black,
                ),
              ),
              verticalSpace(4),
              Text(
                timeago.format(expense.date),
                style: TextStyle(
                  fontSize: 12.sp,
                  color: AppColors.gray500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
