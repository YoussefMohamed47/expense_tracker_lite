import 'package:expense_tracker_lite/utils/helpers/constants.dart';
import 'package:expense_tracker_lite/utils/helpers/spacing.dart';
import 'package:expense_tracker_lite/utils/resources/app_colors.dart';
import 'package:expense_tracker_lite/utils/resources/assets_manager.dart';
import 'package:expense_tracker_lite/utils/resources/styles_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeTopSection extends StatelessWidget {
  const HomeTopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // User Profile
        Row(
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(ImageAssets.userImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            horizontalSpace(12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 2,
              children: [
                Text(
                  'Good Morning',
                  style: TextStyles.manropeFontLight.copyWith(
                    fontSize: 14.sp,
                    color: AppColors.lightBlue,
                  ),
                ),
                Text(
                  'Shihab Rahman',
                  style: TextStyles.manropeFontMedium.copyWith(
                    fontSize: 16.sp,
                    color: AppColors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
        // Filter Dropdown
        SizedBox(
          width: 120.w,
          height: 36.h,
          child: DropdownButtonFormField<String>(
            menuMaxHeight: 180.h,
            value: Constants.filterList.first,
            alignment: AlignmentDirectional.centerStart,
            hint: Padding(
              padding: EdgeInsets.only(left: 4.w),
              child: Text(
                "Filter",
                style: TextStyles.manropeFontMedium.copyWith(
                  fontSize: 12.sp,
                  color: AppColors.gray700,
                ),
              ),
            ),
            icon: SvgPicture.asset(
              IconAssets.arrowDownIcon,
              height: 16.h,
              width: 16.w,
              color: AppColors.gray950,
            ),
            isExpanded: true,
            style: TextStyles.manropeFontMedium.copyWith(
              fontSize: 12.sp,
              color: AppColors.black,
            ),
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.white,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.r),
                borderSide: BorderSide(color: AppColors.gray300, width: 1),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.r),
                borderSide: BorderSide(color: AppColors.gray300, width: 1),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12.r),
                borderSide: BorderSide(color: AppColors.primary, width: 1.2),
              ),
            ),
            dropdownColor: AppColors.white,
            items: Constants.filterList.map((filterItem) {
              return DropdownMenuItem<String>(
                value: filterItem,
                child: Text(
                  filterItem,
                  style: TextStyles.manropeFontMedium.copyWith(
                    fontSize: 12.sp,
                    color: AppColors.black,
                  ),
                ),
              );
            }).toList(),
            onChanged: (value) {
              // TODO: handle selection
            },
          ),
        )
      ],
    );
  }
}
