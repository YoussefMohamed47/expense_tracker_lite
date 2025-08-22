import 'package:expense_tracker_lite/modules/home/presentation/widgets/balance_type_widget.dart';
import 'package:expense_tracker_lite/utils/helpers/enums.dart';
import 'package:expense_tracker_lite/utils/helpers/spacing.dart';
import 'package:expense_tracker_lite/utils/resources/app_colors.dart';
import 'package:expense_tracker_lite/utils/resources/assets_manager.dart';
import 'package:expense_tracker_lite/utils/resources/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeBalanceCard extends StatelessWidget {
  const HomeBalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 220.h,
      clipBehavior: Clip.none,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppColors.primaryWithOpacity,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.bottomRight,
        children: [
          SvgPicture.asset(
            IconAssets.circlesIcon,
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              AppColors.white,
              BlendMode.srcIn,
            ),
            height: 120.h,
          ),
          Positioned(
            top: 16.h,
            left: 16.w,
            right: 16.w,
            bottom: 16.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      spacing: 8.w,
                      children: [
                        Text(
                          'Total Balance',
                          style: TextStyles.manropeFontBold.copyWith(
                            fontSize: 16.sp,
                            color: AppColors.white,
                          ),
                        ),
                        SvgPicture.asset(
                          IconAssets.arrowDownIcon,
                          color: AppColors.white,
                        ),
                      ],
                    ),
                    Icon(
                      Icons.more_horiz,
                      color: AppColors.white,
                    ),
                  ],
                ),
                verticalSpace(8),
                Text(
                  "\$ 1,250.00",
                  style: TextStyles.manropeFontBold.copyWith(
                    fontSize: 36.sp,
                    color: AppColors.white,
                  ),
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BalanceTypeWidget(
                      balanceType: BalanceType.income,
                    ),
                    BalanceTypeWidget(
                      balanceType: BalanceType.expense,
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
