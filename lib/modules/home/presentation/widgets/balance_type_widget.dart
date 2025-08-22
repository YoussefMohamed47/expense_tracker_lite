import 'package:expense_tracker_lite/utils/helpers/enums.dart';
import 'package:expense_tracker_lite/utils/helpers/spacing.dart';
import 'package:expense_tracker_lite/utils/resources/app_colors.dart';
import 'package:expense_tracker_lite/utils/resources/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BalanceTypeWidget extends StatelessWidget {
  final BalanceType balanceType;

  const BalanceTypeWidget({super.key, required this.balanceType});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          spacing: 8,
          children: [
            Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: AppColors.aquaSapphire,
                shape: BoxShape.circle,
              ),
              child: Icon(
                balanceType == BalanceType.expense
                    ? Icons.arrow_upward
                    : Icons.arrow_downward,
                color: AppColors.white,
              ),
            ),
            Text(
              balanceType == BalanceType.income ? 'Income' : 'Expense',
              style: TextStyles.manropeFontBold.copyWith(
                fontSize: 14.sp,
                color: AppColors.lightBlue,
              ),
            ),
          ],
        ),
        verticalSpace(8),
        Text(
          "\$ 10,840.00",
          style: TextStyles.manropeFontBold.copyWith(
            fontSize: 20.sp,
            color: AppColors.white,
          ),
        ),
      ],
    );
  }
}
